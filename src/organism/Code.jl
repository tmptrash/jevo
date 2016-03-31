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

  using Debug

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
  # Returns AST expression for variable declaration. Format:
  # local name::Type = value
  # @param org Organism we have to mutate
  # @param pos Position for current mutation
  # @return {Expr|Expr(:nothing)}
  #
  function var(org::Creature.Organism, pos::Helper.Pos)
    local typ::DataType = @randType()
    local var::Symbol   = @newVar(org)

    push!(@getVars(org, pos)[typ], var)
    :(local $(var)::$(typ)=$(@randValue(typ)))
  end
  #
  # @cmd
  # @block
  # Creates custom function with unique name, random arguments with
  # default values. By default it returns first parameter as local 
  # variable
  # @param org Organism we are working with
  # @param pos Code position
  # @return {Expr|Expr(:nothing)}
  #
  function fn(org::Creature.Organism, pos::Helper.Pos)
    local typ::DataType
    local sym::Symbol
    local i::Int
    local exp::Expr
    local paramLen::Int = rand(1:Config.val(:CODE_MAX_FUNC_PARAMS))
    local block::Creature.Block = Creature.Block(Helper.getTypesMap(), [])
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
    local fnEx::Expr  = :(function $(Symbol(@newFunc(org)))($(params...)) end)

    block.lines = fnEx.args[2].args
    push!(block.lines, :(return $(params[1].args[1].args[1])))
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
  # @param org Organism we are working with
  # @param pos Code position
  # @return {Expr|Expr(:nothing)}
  # 
  function fnCall(org::Creature.Organism, pos::Helper.Pos)
    #
    # Functions calls only possible in main function
    #
    if pos.fnIdx !== 1 return Expr(:nothing) end
    local funcsLen::Int             = length(org.funcs)
    if funcsLen < 2 return Expr(:nothing) end
    local fnEx::Expr                = org.funcs[rand(2:funcsLen)].code          # only custom function may be called
    local typ::DataType             = fnEx.args[1].args[2].args[1].args[2]      # return DataType of Custom function
    local var::Symbol               = @randVar(org, pos, typ)                   # var = <fn-name>(...)
    local args::Array{Any, 1}       = fnEx.args[1].args                         # shortcut to func args
    local types::Array{DataType, 1} = Array{DataType, 1}()                      # func types only
    local argsLen::Int              = length(args)

    if argsLen > 1
      #
      # We start from 2, because first argument is a function symbol
      #
      for i = 2:rand(2:argsLen) push!(types, args[i].args[1].args[2]) end
    end
    fnEx = :($var=$(fnEx.args[1].args[1])($([(ex = @randVar(org, pos, i); if ex === :nothing return Expr(:nothing) end;ex) for i in types]...)))
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
  # @param org Organism we are working with
  # @param pos Code position
  # @return {Expr|Expr(:nothing)}
  #
  function condition(org::Creature.Organism, pos::Helper.Pos)
    local typ::DataType = @randType()
    local v1::Symbol    = @randVar(org, pos, typ)
    if v1 === :nothing return Expr(:nothing) end
    local v2::Symbol    = @randVar(org, pos, typ)
    local op::Symbol    = _COMPARE_OPERATORS[rand(1:length(_COMPARE_OPERATORS))]
    local ifEx          = :(if $(op)($(v1),$(v2)) end) # if v1 comparison v2 end

    push!(@getBlocks(org, pos), Creature.Block(Helper.getTypesMap(), ifEx.args[2].args))
    ifEx
  end
  #
  # @cmd
  # block
  # Creates a for loop. We have to create small loops, because they
  # affects entire speed.
  # @param org Organism we are working with
  # @param pos Position in a code
  # @return {Expr|Expr(:nothing)}
  #
  function loop(org::Creature.Organism, pos::Helper.Pos)
    local v::Symbol = @randVar(org, pos, Int8)
    if v === :nothing return Expr(:nothing) end
    local i::Symbol = @newVar(org)
    local loopEx    = :(local $i::Int8; for $i=1:$v end)

    push!(@getBlocks(org, pos), Creature.Block(Helper.getTypesMap(), loopEx.args[2].args[2].args))
    loopEx
  end

  #
  # This method is called before one code line is removed or changed.
  # It checks if removed/changed line is a local variable declaration
  # or function declaration. In this case it clears all related 
  # structures like org.vars and org.funcs...
  # @param org Organism we are working with
  # @param pos Remove/Change position
  # @param del true means that code is deleting now, false - changing
  #
  @debug function onRemoveLine(org::Creature.Organism, pos::Helper.Pos, del::Bool = false)
  @bp
    local blocks::Array{Creature.Block, 1} = org.funcs[pos.fnIdx].blocks
    local exp::Expr = blocks[pos.blockIdx].lines[pos.lineIdx]
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
      for i = 1:length(blocks) org.codeSize -= length(blocks[i].lines) end
      org.codeSize += 1 # skip "return"
      deleteat!(org.funcs, idx)
    #
    # This is block element, but not a function
    #
    elseif haskey(_CODE_PARTS_MAP, exp.head)
      lines = _getLines(exp, _CODE_PARTS_MAP[exp.head])
      idx = findfirst((b::Creature.Block) -> b.lines === lines, blocks)
      org.codeSize -= length(lines)
      deleteat!(blocks, idx)
    #
    # For simple line element we do nothing. But do for 
    # variable declaration.
    #
    elseif exp.head === :local
      var = exp.args[1].args[1].args[1]
      vars = blocks[pos.blockIdx].vars[exp.args[1].args[1].args[2]]
      deleteat!(vars, findfirst((s::Symbol) -> s === var, vars))
    end
    #
    # We have to decrease code size only if we remove this line.
    # In case of changing, we don't need it, because nothing is
    # changed.
    #
    if del org.codeSize -= 1 end
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
  # @return {Pos} Position in a code
  #
  function getRandPos(org::Creature.Organism)
    local fnIdx   ::Int = rand(1:length(org.funcs))
    local blockIdx::Int = rand(1:length(org.funcs[fnIdx].blocks))
    local lines   ::Int = length(org.funcs[fnIdx].blocks[blockIdx].lines) - (blockIdx === 1 ? 1 : 0)

    Helper.Pos(
      fnIdx,
      blockIdx,
      rand(1:(lines < 1 ? 1 : lines)) # skip "return"
    )
  end
  #
  # Returns lines array from AST by specified indexes. e.g.:
  # [2,1] means ex.args[2].args[1].args
  # @param exp Expression we have to start with
  # @return {Array{Any, 1}}
  #
  function _getLines(exp::Expr, indexes::Array{Int, 1})
    local i::Int
    local args::Array{Any, 1} = exp.args

    for i = 1:length(indexes)
      args = args[indexes[i]].args
    end

    args
  end

  #
  # This map contains only block symbols like: for, if, function,...
  # This map and _CODE_PARTS should be synchronized.
  #
  const _CODE_PARTS_MAP = Dict{Symbol, Array{Int, 1}}(
    :function  => [2],
    :if        => [2],
    :block     => [2,2]  # for operator
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
    CodePart(var,         false), CodePart(fn,        true),
    CodePart(fnCall,      false), CodePart(condition, true),
    CodePart(loop,        true ),
    #
    # CodeMath
    #
    CodePart(plus,        false), CodePart(minus,     false),
    CodePart(multiply,    false), CodePart(divide,    false),
    CodePart(reminder,    false),
    #
    # CodeOrganism
    #
    CodePart(lookAt,      false), CodePart(eatLeft,   false),
    CodePart(eatRight,    false), CodePart(eatUp,     false),
    CodePart(eatDown,     false), CodePart(stepLeft,  false),
    CodePart(stepRight,   false), CodePart(stepUp,    false),
    CodePart(stepDown,    false), CodePart(toMem,     false),
    CodePart(fromMem,     false)
  ]
  #
  # Available comparison operators. May be used with "if" operator
  #
  const _COMPARE_OPERATORS = [:<, :>, :<=, :>=, :(==), :!=, :!==, :(===)]
end