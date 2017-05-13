#
# Contains Organism's code related functions. Works in pair with
# Mutator module. This file should contain only basic language related
# element like: for, if, variables,... All other operations should
# be in special files like CodeXXX.jl (e.g. CodeMath, CodeOrganism,...)
#
# TODO: describe @cmd annotation
# TODO: describe that return operator inside custom functions don't affect of script size
# TODO: describe Expr(:nothing) return value
# TODO: describe @line, @block annotations(they are line and block element). e.g.:
# TODO: if,for - block elements, var, fnCall - line elements, function -
# TODO: function element. fnCall has special status (it may be called only
# TODO: from main function)
#
# @author DeadbraiN
#
module Code
  import Creature
  import Creature.f16
  import Config
  import Config.@if_test
  import Config.@if_not_test
  import Helper

  include("CodeMacros.jl")
  include("CodeOrganism.jl")
  include("CodeMath.jl")

  export CodePart
  export CODE_PARTS
  #
  # Command functions. Amount of these functions will be increased
  # as many Julia language parts i'm going to support...
  #
  export var
  export fn
  export fnCall
  export condition
  export loop
  #
  # Public functions
  #
  export onRemoveLine
  export getRandPos
  #
  # Describes one code block like "if", "for", "function" and so on.
  # Is used for mutations of organism's AST. Contains function and
  # block flag. Function is used for obtaining new block expression
  # (Expr type). isBlock flag is used for changing and removing AST.
  #
  type CodePart
    fn::Function
    isBlock::Bool
  end
  #
  # @cmd
  # @line
  # Returns AST expression for assigning Float16 constant to variable. Format:
  # var_xx::Float16 = value
  # @param cfg Global configuration type
  # @param org Organism we have to mutate
  # @param pos Position for current mutation
  # @return {Expr|Expr(:nothing)}
  #
  function var(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
    :($(@randVar())=$(Helper.fRand()))
  end
  #
  # @cmd
  # @block
  # Creates custom function with unique name, random arguments with
  # default values. By default it returns first argument as local
  # variable. Format: function func_xx(var_xx::Float16,...) return var_xx end
  # @param cfg Global configuration type
  # @param org Organism we are working with
  # @param pos Code position
  # @return {Expr}
  #
  function fn(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
    local typ::DataType
    local i::Int
    local j::Int
    local exp::Expr
    @if_test     local paramLen::Int = Helper.fastRand(1)
    @if_not_test local paramLen::Int = Helper.fastRand(cfg.codeFuncParamAmount)
    local block::Creature.Block = Creature.Block(Helper.getTypesMap(), Expr(:nothing), Creature.VAR_AMOUNT - paramLen)
    local blocks::Array{Creature.Block, 1} = [block]
    #
    # New function parameters in format: [name::Type=val,...].
    # At least one parameter should exist. We use codeFuncParamAmount
    # config for amount of parameters. Here a small hack. :(=) symbol
    # switched by :kw. I don't know why, but it doesn't work
    # without this...
    #
    local params::Array{Expr, 1} = [
      (exp = :($(@var(i))::$(f16)=$(Helper.fRand()));exp.head=:kw;exp) for i=1:paramLen
    ]
    #
    # New function in format: function func_x(var_x::Type=val,...) return var_x end
    # All parameters will be added as local variables.
    #
    local fnEx::Expr = :(function $(Symbol(@newFunc(org)))($(params...)) end)
    #
    # This property means that we haven't add mutations
    # before this line number, because we produce undefined
    # variable/function error.
    #
    org.funcs[pos.fnIdx].blocks[pos.blockIdx].defIndex += 1
    block.expr = fnEx.args[2]
    #
    # This line fixes Julia small issue with additional comment line,
    # which is added during new function creation. We have to remove
    # this comment line (head === :line) to prevent incorrect org.codeSize
    # calculation.
    #
    _removeCommentLine(block.expr.args)
    _addDefaultVars(block, paramLen + 1)
    push!(block.expr.args, :(return $(@randVar())))
    push!(org.funcs, Creature.Func(fnEx, blocks))

    fnEx
  end
  #
  # @cmd
  # @line
  # Calls custom function or do nothing if no available functions.
  # It choose custom function from org.funcs array, fills parameters
  # and call it. It also creates new variable with appropriate type.
  # Example: var_xx = func_xx(var_xx::Float16,...)
  # @param cfg Global configuration type
  # @param org Organism we are working with
  # @param pos Code position
  # @return {Expr|Expr(:nothing)}
  #
  function fnCall(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
    local nothingEx::Expr           = Expr(:nothing)
    local funcsLen::Int             = length(org.funcs)
    if funcsLen < 2 return nothingEx end
    local fnEx::Expr                = org.funcs[Helper.fastRand(funcsLen-1)+1].code # only custom function may be called
    local var::Symbol               = @randVar()                                    # var = <fn-name>(...)
    if var === :nothing return nothingEx end
    local args::Array{Any, 1}       = fnEx.args[1].args                             # shortcut to func args
    local types::Array{DataType, 1} = Array{DataType, 1}()                          # func types only
    local argsLen::Int              = length(args)
    local badParams::Bool           = false

    if argsLen > 1
      #
      # We start from 2, because first argument is a function symbol
      #
      for i = 2:(Helper.fastRand(argsLen-1)+1) push!(types, args[i].args[1].args[2]) end
    end
    fnEx = :($var=$(fnEx.args[1].args[1])($([(ex = @randVar(); if ex === :nothing badParams = true end;ex) for i in types]...)))
    if badParams return nothingEx end
    #
    # Pushing of new variable should be after function call to prevent
    # error of calling function with argument of just created variable
    #
    push!(@getVars(org, pos)[f16], var)
    fnEx
  end
  #
  # @cmd
  # @block
  # if operator implementation. It contains block inside, so it can't be inside
  # other block. For example, it can't be inside body of "for" operator. Format:
  # if var_xx compare_op var_xx end
  # @param cfg Global configuration type
  # @param org Organism we are working with
  # @param pos Code position
  # @return {Expr|Expr(:nothing)}
  #
  function condition(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
    local v1::Symbol    = @randVar()
    if v1 === :nothing return Expr(:nothing) end
    local v2::Symbol    = @randVar()
    local op::Symbol    = _COMPARE_OPERATORS[Helper.fastRand(length(_COMPARE_OPERATORS))]
    local ifEx          = :(if $(op)($(v1),$(v2)) end) # if v1 comparison v2 end
    #
    # This line fixes Julia small issue with additional comment line,
    # which is added during new condition creation. We have to remove
    # this comment line (head === :line) to prevent incorrect org.codeSize
    # calculation.
    #
    _removeCommentLine(ifEx.args[2].args)
    #
    # According to julia specification variable inside if block
    # can't be local and should be used from outside block. In our
    # case it's a block of parent function.
    #
    push!(@getBlocks(org, pos), Creature.Block(org.funcs[pos.fnIdx].blocks[1].vars, ifEx.args[2]))
    ifEx
  end
  #
  # @cmd
  # @block
  # Creates a for loop. We have to create small loops, because they
  # affect entire speed. See Config.codeLoopAmount for details
  # @param cfg Global configuration type. Format: for i::Int = 1:8 end
  # @param org Organism we are working with
  # @param pos Position in a code
  # @return {Expr}
  #
  function loop(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
    local loopEx = :(for i::Int = 1:$(cfg.codeLoopAmount) end)
    local block::Creature.Block
    #
    # This line fixes Julia small issue with additional comment line,
    # which is added during new loop creation. We have to remove
    # this comment line (head === :line) to prevent incorrect org.codeSize
    # calculation.
    #
    _removeCommentLine(loopEx.args[2].args)
    block = Creature.Block(org.funcs[pos.fnIdx].blocks[1].vars, loopEx.args[2])
    push!(@getBlocks(org, pos), block)
    loopEx
  end
  #
  # This method is called before one code line is removed or changed.
  # It checks if removed/changed line is a local variable declaration
  # or function declaration. In this case it clears all related
  # structures like org.vars and org.funcs...
  # @param org Organism we are working with
  # @param pos Remove/Change position
  #
  function onRemoveLine(org::Creature.Organism, pos::Helper.CodePos)
    local blocks::Array{Creature.Block, 1} = org.funcs[pos.fnIdx].blocks
    local exp::Expr = blocks[pos.blockIdx].expr.args[pos.lineIdx]
    local lines::Array{Any, 1}
    local idx::Int
    local i::Int
    local bLen::Int
    #
    # This is function element. We have to sum amount of code
    # lines inside function + amount of code lines inside all
    # function blocks. This is how we calc codeSize of this
    # function.
    #
    if exp.head === :function
      idx = findfirst((f::Creature.Func) -> f.code === exp, org.funcs)
      blocks = org.funcs[idx].blocks
      #
      # Variables of removable function + arguments
      #
      org.codeSize += (Creature.VAR_AMOUNT - (length(org.funcs[idx].code.args[1].args) - 1)) # -1 is a function name
      org.codeSize += 1 # skip "return"
      for i = 1:length(blocks) org.codeSize -= length(blocks[i].expr.args) end
      org.funcs[1].blocks[1].defIndex -= 1
      deleteat!(org.funcs, idx)
    #
    # This is block element, but not a function
    #
    elseif haskey(_CODE_PARTS_MAP, exp.head)
      lines = Helper.getLines(exp, _CODE_PARTS_MAP[exp.head])
      idx = findfirst((b::Creature.Block) -> b.expr.args === lines, blocks)
      org.codeSize -= length(lines)
      deleteat!(blocks, idx)
    end
  end
  #
  # Returns random position in a code (including all custom
  # functions), where we have to insert/change/delete code
  # line. Position is chose randomly. It takes main function
  # and all custom functions together, choose one function
  # randomly and choose random block and position inside this
  # block. Every function contains return operator at the end.
  # So we have to skip it.
  # @param org Organism we are working with
  # @return {CodePos} Position in a code
  #
  function getRandPos(org::Creature.Organism, cfg::Config.ConfigData)
    local fnIdx   ::Int = Helper.fastRand(length(org.funcs))
    local blockIdx::Int = Helper.fastRand(length(org.funcs[fnIdx].blocks))
    local block   ::Creature.Block = org.funcs[fnIdx].blocks[blockIdx]
    local isFunc  ::Bool = blockIdx === 1
    local isMainFn::Bool = fnIdx === 1
    local args    ::Int  = length(org.funcs[fnIdx].code.args[1].args)
    #
    # In this line we skip "return" operator and lines with variables
    # and functions declaration.
    #
    local lines   ::Int = length(block.expr.args) - (isFunc ? (isMainFn ? Creature.VAR_AMOUNT : Creature.VAR_AMOUNT - args + 1) : 0)
    Helper.CodePos(
      fnIdx,
      blockIdx,
      Helper.fastRand(lines) + (isFunc ? (isMainFn ? Creature.VAR_AMOUNT : Creature.VAR_AMOUNT - args + 1) : 0)
    )
  end
  #
  # Fills default variables meta data. Adds embedded vars at the
  # beginning of new function
  # @param block Block, where we have to insert default variables
  #
  function _addDefaultVars(block::Creature.Block, startIndex = 1)
      for j::Int in 1:(Creature.VAR_AMOUNT - startIndex + 1)
        push!(block.vars[f16], Symbol("var_", startIndex))
        push!(block.expr.args, :(local $(Symbol("var_", startIndex))::f16=$(Helper.fRand())))
        startIndex += 1
      end
  end
  #
  # Removes comment line from code expression. Comment line is created
  # every time if block (quote...end) is created. We have to remove it,
  # because if affects aon amount of code lines, but does nothing.
  # @param args Code lines array
  #
  function _removeCommentLine(args::Array{Any, 1})
    if length(args) > 0 && args[1].head === :line deleteat!(args, 1) end
  end

  #
  # This map contains only block symbols like: for, if, function,...
  # This map and _CODE_PARTS should be synchronized.
  #
  const _CODE_PARTS_MAP = Dict{Symbol, Array{Int, 1}}(
    :function  => [2],
    :if        => [2],
    :for       => [2]
  )
  #
  # Array of available functions. Each function should return Expr type.
  # They are used for generating (add,change) code of organisms. This
  # array can't be empty.
  #
  const CODE_PARTS = [
    #
    # Code
    #
    CodePart(var,                     false), CodePart(fn,                      true ),
    CodePart(fnCall,                  false), CodePart(condition,               true ),
    CodePart(loop,                    true ),
    #
    # CodeMath
    #
    CodePart(plus,                    false), CodePart(minus,                   false),
    CodePart(multiply,                false), CodePart(divide,                  false),
    CodePart(reminder,                false), CodePart(and,                     false),
    CodePart(or,                      false), CodePart(xor,                     false),
    #CodePart(rshift,                  false), CodePart(lshift,                  false),
    #CodePart(sqrt,                    false), CodePart(log,                     false),
    CodePart(sin,                     false), CodePart(cos,                     false),
    CodePart(tan,                     false), CodePart(cot,                     false),
    #CodePart(sec,                     false), CodePart(csc,                     false),
    #CodePart(not,                     false),
    CodePart(pi,                      false),
    #
    # CodeOrganism
    #
    CodePart(lookAt,                  false), CodePart(eatLeft,                 false),
    CodePart(eatRight,                false), CodePart(eatUp,                   false),
    CodePart(eatDown,                 false), CodePart(stepLeft,                false),
    CodePart(stepRight,               false), CodePart(stepUp,                  false),
    CodePart(stepDown,                false), CodePart(toMem,                   false),
    CodePart(fromMem,                 false), CodePart(myId,                    false),
    # CodePart(myColor,                 false),
    # CodePart(idLeft,                  false), CodePart(idRight,                 false),
    # CodePart(idUp,                    false), CodePart(idDown,                  false),
    CodePart(myX,                     false), CodePart(myY,                     false),
    CodePart(energyLeft,              false), CodePart(energyRight,             false),
    CodePart(energyUp,                false), CodePart(energyDown,              false)
    # CodePart(codeSizeLeft,            false), CodePart(codeSizeRight,           false),
    # CodePart(codeSizeUp,              false), CodePart(codeSizeDown,            false),
    # CodePart(cloneEnergyPercentLeft,  false), CodePart(cloneEnergyPercentRight, false),
    # CodePart(cloneEnergyPercentUp,    false), CodePart(cloneEnergyPercentDown,  false)
  ]
  #
  # Available comparison operators. May be used with "if" operator
  #
  const _COMPARE_OPERATORS = [:<, :>, :<=, :>=, :(==), :!=, :!==, :(===)]
end
