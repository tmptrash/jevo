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
  import Config
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
  # This value will be used in loop() function as a divider. Maximum
  # amount of loop steps depends on this value. See loop() function
  # for details.
  #
  const _LOOP_STEPS_DIVIDER = 16
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
  # Returns AST expression for variable declaration. Format:
  # local name::Type = value
  # @param cfg Global configuration type
  # @param org Organism we have to mutate
  # @param pos Position for current mutation
  # @return {Expr|Expr(:nothing)}
  #
  function var(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
    local typ::DataType = @randType()
    local var::Symbol = @newVar(org)
    local block::Creature.Block = @getBlock(org, pos)
    #
    # This property means that we haven't add mutations
    # before this line number, because we produce undefined
    # variable/function error.
    #
    block.defIndex += 1
    push!(block.vars[typ], var)

    :(local $(var)::$(typ)=$(@randValue(typ)))
  end
  #
  # @cmd
  # @block
  # Creates custom function with unique name, random arguments with
  # default values. By default it returns first parameter as local
  # variable
  # @param cfg Global configuration type
  # @param org Organism we are working with
  # @param pos Code position
  # @return {Expr|Expr(:nothing)}
  #
  function fn(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
    local typ::DataType
    local sym::Symbol
    local i::Int
    local exp::Expr
    local paramLen::Int = Helper.fastRand(cfg.CODE_MAX_FUNC_PARAMS)
    local block::Creature.Block = Creature.Block(Helper.getTypesMap(), Expr(:nothing))
    local blocks::Array{Creature.Block, 1} = [block]
    #
    # New function parameters in format: [name::Type=val,...].
    # At least one parameter should exist. We choose amount of
    # parameters randomly. At the same time we set "vars" field
    # of current function block. Here a small hack. :(=) symbol
    # switched by :kw. I don't know why, but it doesn't work
    # without this...
    #
    local params::Array{Expr, 1} = [
      (exp = :($(typ=@randType();sym=@newVar(org);push!(block.vars[typ], sym);sym)::$(typ)=$(@randValue(typ)));exp.head=:kw;exp) for i=1:paramLen
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
    push!(block.expr.args, :(return $(params[1].args[1].args[1])))
    push!(org.funcs, Creature.Func(fnEx, blocks))

    fnEx
  end
  #
  # @cmd
  # @line
  # Calls custom function or do nothing if no available functions.
  # It choose custom function from org.funcs array, fills parameters
  # and call it. It also creates new variable with appropriate type.
  # Example: var_x = func_x(<args>)
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
    local typ::DataType             = fnEx.args[1].args[2].args[1].args[2]          # return DataType of Custom function
    local var::Symbol               = @randVar(org, pos, typ)                       # var = <fn-name>(...)
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
    fnEx = :($var=$(fnEx.args[1].args[1])($([(ex = @randVar(org, pos, i); if ex === :nothing badParams = true end;ex) for i in types]...)))
    if badParams return nothingEx end
    #
    # Pushing of new variable should be after function call to prevent
    # error of calling function with argument of just created variable
    #
    push!(@getVars(org, pos)[typ], var)
    fnEx
  end
  #
  # @cmd
  # @block
  # if operator implementation. It contains block inside, so it can't be inside
  # other block. For example, it can't be inside body of "for" operator.
  # @param cfg Global configuration type
  # @param org Organism we are working with
  # @param pos Code position
  # @return {Expr|Expr(:nothing)}
  #
  function condition(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
    local typ::DataType = @randType()
    local v1::Symbol    = @randVar(org, pos, typ)
    if v1 === :nothing return Expr(:nothing) end
    local v2::Symbol    = @randVar(org, pos, typ)
    local op::Symbol    = _COMPARE_OPERATORS[Helper.fastRand(length(_COMPARE_OPERATORS))]
    local ifEx          = :(if $(op)($(v1),$(v2)) end) # if v1 comparison v2 end
    #
    # This line fixes Julia small issue with additional comment line,
    # which is added during new condition creation. We have to remove
    # this comment line (head === :line) to prevent incorrect org.codeSize
    # calculation.
    #
    _removeCommentLine(ifEx.args[2].args)
    push!(@getBlocks(org, pos), Creature.Block(Helper.getTypesMap(), ifEx.args[2]))
    ifEx
  end
  #
  # @cmd
  # @block
  # Creates a for loop. We have to create small loops, because they
  # affect entire speed. This is why we divide amount into 8. So max
  # loop iterations < 8
  # @param cfg Global configuration type
  # @param org Organism we are working with
  # @param pos Position in a code
  # @return {Expr|Expr(:nothing)}
  #
  function loop(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
    local v::Symbol = @randVar(org, pos, Int8)
    if v === :nothing return Expr(:nothing) end
    local loopEx    = :(for i::Int8 = 1:div($v, $(Int8(_LOOP_STEPS_DIVIDER))) end)
    #
    # This line fixes Julia small issue with additional comment line,
    # which is added during new loop creation. We have to remove
    # this comment line (head === :line) to prevent incorrect org.codeSize
    # calculation.
    #
    _removeCommentLine(loopEx.args[2].args)
    push!(@getBlocks(org, pos), Creature.Block(Helper.getTypesMap(), loopEx.args[2]))
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
    local var::Symbol
    local vars::Array{Symbol, 1}
    #
    # This is function element. We have to sum amount of code
    # lines inside function + amount of code lines inside all
    # function blocks. This is how we calc codeSize of this.
    # function.
    #
    if exp.head === :function
      idx = findfirst((f::Creature.Func) -> f.code === exp, org.funcs)
      blocks = org.funcs[idx].blocks
      for i = 1:length(blocks)
        org.codeSize -= length(blocks[i].expr.args)
      end
      org.codeSize += 1 # skip "return"
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
    #
    # For simple line element we do nothing. But do for
    # variable declaration.
    #
    elseif exp.head === :local
      var = exp.args[1].args[1].args[1]
      vars = blocks[pos.blockIdx].vars[exp.args[1].args[1].args[2]]
      blocks[pos.blockIdx].defIndex -= 1
      deleteat!(vars, findfirst((s::Symbol) -> s === var, vars))
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
  function getRandPos(org::Creature.Organism)
    local fnIdx   ::Int = Helper.fastRand(length(org.funcs))
    local blockIdx::Int = Helper.fastRand(length(org.funcs[fnIdx].blocks))
    local block   ::Creature.Block = org.funcs[fnIdx].blocks[blockIdx]
    #
    # In this line we skip "return" operator and lines with variables
    # and functions declaration.
    #
    local lines   ::Int = length(block.expr.args) - (blockIdx === 1 ? 1 : 0) + 1

    Helper.CodePos(
      fnIdx,
      blockIdx,
      Helper.fastRand(lines)
    )
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
    CodePart(var,          false), CodePart(fn,           true),
    CodePart(fnCall,       false), CodePart(condition,    true),
    CodePart(loop,         true ),
    #
    # CodeMath
    #
    CodePart(plus,         false), CodePart(minus,        false),
    CodePart(multiply,     false), CodePart(divide,       false),
    CodePart(not,          false), CodePart(and,          false),
    CodePart(or,           false), CodePart(xor,          false),
    CodePart(rshift,       false), CodePart(lshift,       false),
    CodePart(reminder,     false), CodePart(toString,     false),
    CodePart(toBool,       false), CodePart(toInt,        false),
    CodePart(toInt8,       false), CodePart(toInt16,      false),
    CodePart(toFloat64,    false),
    CodePart(sqrt,         false), CodePart(log,          false),
    CodePart(sin,          false), CodePart(cos,          false),
    CodePart(tan,          false), CodePart(cot,          false),
    CodePart(sec,          false), CodePart(csc,          false),
    CodePart(pi,           false),
    #
    # CodeOrganism
    #
    CodePart(lookAt,       false), CodePart(eatLeft,      false),
    CodePart(eatRight,     false), CodePart(eatUp,        false),
    CodePart(eatDown,      false), CodePart(stepLeft,     false),
    CodePart(stepRight,    false), CodePart(stepUp,       false),
    CodePart(stepDown,     false), CodePart(toMem,        false),
    CodePart(fromMem,      false), CodePart(idLeft,       false),
    CodePart(idRight,      false), CodePart(idUp,         false),
    CodePart(idDown,       false), CodePart(myColor,      false),
    CodePart(myX,          false), CodePart(myY,          false),
    CodePart(energyLeft,   false), CodePart(energyRight,  false),
    CodePart(energyUp,     false), CodePart(energyDown,   false),
    CodePart(codeSizeLeft, false), CodePart(codeSizeRight,false),
    CodePart(codeSizeUp,   false), CodePart(codeSizeDown, false)
  ]
  #
  # Available comparison operators. May be used with "if" operator
  #
  const _COMPARE_OPERATORS = [:<, :>, :<=, :>=, :(==), :!=, :!==, :(===)]
end
