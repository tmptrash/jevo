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
# TODO: if,for - block elements, var, fnCall - line elements
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

  export Pos
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
  # Describes organism's code position. This position is used
  # for mutations (add, change, del,...)
  #
  type Pos
    #
    # Index of function in Organism.Creature.funcs array
    #
    fnIdx::Int
    #
    # Index of block inside Creature.Func function
    #
    blockIdx::Int
    #
    # Index of code line inside Organism.Block.lines
    #
    lineIdx::Int
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
  function var(org::Creature.Organism, pos::Pos)
    local typ::DataType  = @getType()
    local varSym::Symbol = @newVar(org)

    @getVars(org, pos)[typ][varSym] = true

    :(local $(varSym)::$(typ)=$(@getValue(typ)))
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
  function fn(org::Creature.Organism, pos::Pos)
    local typ::DataType
    local sym::Symbol
    local i::Int
    local paramLen::Int = rand(1:Config.val(:CODE_MAX_FUNC_PARAMS))
    local block::Creature.Block = Block(Helper.getTypesMap(), [])
    local blocks::Array{Creature.Block, 1} = [block]
    local func::Creature.Func = Func(blocks)
    #
    # New function parameters in format: [name::Type=val,...].
    # At least one parameter should exist. We choose amount of
    # parameters randomly. At the same time we set "vars" field
    # of current function block. Here a small hack. :(=) symbol
    # switched by :kw. I don't know why, but it doesn't work
    # without this...
    #
    local params::Array{Expr, 1} = [
      :(sym=($(typ=@getType();sym=@newVar(org);block.vars[typ][sym]=true;sym)::$(typ)=$(@getValue(typ)));sym.head=:kw;sym) for i=1:paramLen
    ]
    #
    # New function in format: function func_x(var_x::Type=val,...) return var_x end
    # All parameters will be added as local variables.
    #
    local fnEx::Expr = :(function $(Symbol(@newFunc(org)))($(params...)) end)

    block.lines = fnEx.args[2].args
    push!(block.lines, :(return $(params[1].args[1].args[1])))
    push!(org.funcs, func)

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
  # @param fn Parent(current) function unique name
  # we are working in
  # @param block Current flock within fn function
  # @return {Expr|Expr(:nothing)}
  # TODO: add check if we call a function inside other function
  # 
  function fnCall(org::Creature.Organism, fn::ASCIIString, block::Expr)
    if !isempty(fn) return Expr(:nothing) end
    local len::Int = length(org.funcs)
    if len < 1 return Expr(:nothing) end
    local fnEx::Expr                = org.funcs[rand(1:len)]
    local typ::DataType             = fnEx.args[1].args[2].args[1].args[2]
    local varSym::Symbol            = @getVar(org, fn, typ)
    local args::Array{Any, 1}       = fnEx.args[1].args    # shortcut to func args
    local types::Array{DataType, 1} = Array{DataType, 1}() # func types only
    local argsLen::Int = length(args)

    if argsLen > 1
      for i=2:rand(2:argsLen)
        push!(types, args[i].args[1].args[2])
      end
    end
    fnEx = :($varSym=$(fnEx.args[1].args[1])($([(ex = @getVar(org, fn, i); if ex === :nothing return Expr(:nothing) end;ex) for i in types]...)))
    #
    # Pushing of new variable should be after function call to prevent
    # error of calling function with argument of just created variable
    #
    push!(org.vars[fn].vars[typ], varSym)

    fnEx
  end
  #
  # @cmd
  # @block
  # TODO:
  # if operator implementation. It contains block inside, so it can't be inside
  # other block. For example, it can't be inside body of "for" operator.
  # @param org Organism we are working with
  # @param fn Parent(current) function unique name
  # we are working in
  # @param block Current flock within fn function
  # @return {Expr|Expr(:nothing)}
  #
  function condition(org::Creature.Organism, fn::ASCIIString, block::Expr)
    local typ::DataType = @getType()
    local v1::Symbol    = @getVar(org, fn, typ)
    if v1 === :nothing return Expr(:nothing) end
    local v2::Symbol    = @getVar(org, fn, typ)
    local op::Symbol    = _COMPARE_OPERATORS[rand(1:length(_COMPARE_OPERATORS))]
    local ifEx          = :(if $(op)($(v1),$(v2)) end) # if v1 comparison v2 end

    push!(org.vars[fn].blocks, ifEx.args[2])

    ifEx
  end
  #
  # @cmd
  # block
  # Creates a for loop. We have to create small loops, because they
  # affects entire speed.
  # @param org Organism we are working with
  # @param fn Parent(current) function unique name 
  # we are working in
  # @param block Current flock within fn function
  # @return {Expr|Expr(:nothing)}
  #
  function loop(org::Creature.Organism, fn::ASCIIString, block::Expr)
    local v::Symbol = @getVar(org, fn, Int8)
    if v === :nothing return Expr(:nothing) end
    local i::Symbol = @newVar(org)
    local loopEx    = :(local $i::Int8; for $i=1:$v end)

    push!(org.vars[fn].blocks, loopEx.args[2].args[2])

    loopEx
  end

  #
  # This method is called before one code line is removed or changed.
  # It checks if removed/changed line is a local variable declaration
  # or function declaration. In this case it clears all related 
  # structures like org.vars and org.funcs... Remove position in a parameter
  # is a tuple of three elements: code::Array{Expr},pos::Int,fn::Expr, where
  # code - array of code lines some AST node, pos - current removing 
  # position in code, fn - parent(current) function.
  # @param org Organism we are working with
  # @param pos Remove/Change position
  # @param del true means that code is deleting now, false - changing
  #
  function onRemoveLine(org::Creature.Organism, pos::Pos, del::Bool = false)
    local blocks::Array{Expr, 1} = org.funcs[pos.fnIdx].blocks
    local exp::Expr = blocks[pos.blockIdx].lines[pos.lineIdx]
    local i::Int
    local bLen::Int
    #
    # This is function element. We have to sum amount of code
    # lines inside function + amount of code lines inside all
    # function blocks. This is how we calc codeSize of this.
    # function.
    #
    if exp.head === :function
      org.codeSize -= (length(blocks[1].lines) - 1) # skip "return"
      bLen = length(blocks)
      for i = 1:bLen blocks codeSize -= length(blocks[i].lines) end
      deleteat!(org.funcs, pos.fnIdx)
    #
    # This is block element, but not a function
    #
    elseif haskey(_CODE_PARTS_MAP, exp.head)
      org.codeSize -= length(blocks[pos.blockIdx].lines)
      deleteat!(blocks, pos.blockIdx)
    #
    # For simple line element we do nothing. But we do for 
    # variable declaration.
    #
    elseif exp.head === :local
      #TODO: check this args[1].args[1]...
      delete!(blocks[pos.blockIdx].vars[exp.args[2], exp.args[1].args[1].args[1])
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

    Pos(
      fnIdx,
      blockIdx,
      rand(1:length(@getLines(org, pos)) - (blockIdx === 1 ? 1 : 0)) # skip "return"
    )
  end

  #
  # This map contains only block symbols like: for, if, function,...
  # This map and _CODE_PARTS should be synchronized.
  #
  const _CODE_PARTS_MAP = Dict{Symbol, Bool}(
    :function  => true,
    :if        => true, # TODO: do we need "comparison"?
    :block     => true
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
    CodePart(getEnergy,   false), CodePart(eatLeft,   false),
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