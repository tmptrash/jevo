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
  # @param fn Parent(current) function unique name
  # @param block Current flock within fn function
  # @return {Expr}
  #
  function var(org::Creature.Organism, fn::ASCIIString, block::Expr)
    local typ::DataType  = @getType()
    local varSym::Symbol = @getNewVar(org)

    push!(org.vars[fn].vars[typ], varSym)

    :(local $(varSym)::$(typ)=$(@getValue(typ)))
  end
  #
  # @cmd
  # @block
  # Creates custom function with unique name, random arguments with
  # default values. By default it returns first parameter as local 
  # variable
  # @param org Organism we are working with
  # @param fn Parent(current) function unique name 
  # we are working in
  # @param block Current flock within fn function
  # @return {Expr}
  #
  function fn(org::Creature.Organism, fn::ASCIIString, block::Expr)
    #
    # We may add functions only in main one. Custom functions can't
    # be used as a container for other custom functions. Also, custom
    # functions can't be added into blocks. Except main one.
    #
    @inMainFunc(fn)
    @inFuncBlock(org, fn, block)
    local typ::DataType
    local i::Int
    local p::Symbol
    local fnName::ASCIIString = @getNewFunc(org)
    local paramLen::Int = rand(1:Config.val(:CODE_MAX_FUNC_PARAMS))
    local func::Creature.Func = (org.vars[fnName] = Creature.Func(Helper.getTypesMap(), []))
    #
    # New function parameters in format: [name::Type=val,...]. 
    # At least one parameter should exist. We choose amount of
    # parameters randomly. All other parameters will be set by
    # default values.
    #
    local params::Array{Expr, 1} = [:($(typ = @getType();@getNewVar(org))::$(typ)=$(@getValue(typ))) for i=1:paramLen]
    #
    # New function in format: function func_x(var_x::Type=val,...) return var_x end
    # All parameters will be added as local variables. Here a small hack. :(=) symbol
    # switched by :kw. I don't know why, but it doesn't work without this...
    #
    local fnEx::Expr = :(function $(Symbol(fnName))($([(push!(func.vars[p.args[1].args[2]], p.args[1].args[1]);p.head=:kw;p) for p in params]...)) end)

    push!(fnEx.args[2].args, :(return $(params[1].args[1].args[1])))
    push!(func.blocks, fnEx.args[2])
    push!(org.funcs, fnEx)

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
  # @return {Expr|nothing}
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
  # @return {Expr|nothing}
  #
  function condition(org::Creature.Organism, fn::ASCIIString, block::Expr)
    @inFuncBlock(org, fn, block)
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
  #
  function loop(org::Creature.Organism, fn::ASCIIString, block::Expr)
    @inFuncBlock(org, fn, block)
    local v::Symbol = @getVar(org, fn, Int8)
    if v === :nothing return Expr(:nothing) end
    local i::Symbol = @getNewVar(org)
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
  # @param pos Remove position
  # @param fnEx Expressiom of function body, we are deleting in
  # @param block Current block, where mutation occures
  # @param del true means that code is deleting now, false - changing
  #
  function onRemoveLine(org::Creature.Organism, pos::Int, fnEx::Expr, block::Expr, del::Bool = false)
    local lineEx::Expr = block.args[pos] # line we want to remove
    local ex::Expr
    local i::Int
    local vars::Array{Symbol, 1}
    #
    # Finds block of current "if" operator and removes it from 
    # Organism.vars[fn].blocks array
    # TODO: !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    # TODO: on blocks remove we have to remove block variables
    # TODO: from org.vars[fn].vars
    # TODO: !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    if lineEx.head === :comparison || lineEx.head === :if  # TODO: why :comparison and not :if
      println(lineEx, " ", fn)
      i = findfirst(org.vars[fn].blocks, lineEx.args[2])
      if i > 0 deleteat!(org.vars[fn].blocks, i) end
      #
      # This size reduce should not depend on del parameter, 
      # because in case of change of block based line we are
      # changing one line into 1 + block lines. Block lines
      # should be used in org.codeSize.
      #
      org.codeSize -= length(lineEx.args[2].args)
    #
    # "for" operator is wrapped by block ... end
    #
    elseif lineEx.head === :block # for loop
      println(lineEx, " ", fn)
      i = findfirst(org.vars[fn].blocks, lineEx.args[2].args[2])
      if i > 0 deleteat!(org.vars[fn].blocks, i) end
      #
      # This size reduce should not depend on del parameter, 
      # because in case of change of block based line we are
      # changing one line into 1 + block lines. Block lines
      # should be used in org.codeSize.
      #
      org.codeSize -= length(lineEx.args[2].args[2].args)
    #
    # Finds currently removed variable within it's function and
    # removes it from Creature.Organism.vars map
    #
    elseif lineEx.head === :local
      ex   = lineEx.args[1].args[1]   # shortcut to variable
      vars = org.vars[fnEx === org.code ? "" : "$(fnEx.args[1].args[1])"].vars[ex.args[2]]
      i = findfirst(vars, ex.args[1])
      if i > 0 deleteat!(vars, i) end
    #
    # Finds currently removed function declaration and remove it
    # from Creature.Organism.funcs map. We alse have to remove this
    # function from Creature.Organism.vars map.
    #
    elseif lineEx.head === :function
      i = findfirst(org.funcs, lineEx)
      if i > 0
        delete!(org.vars, string(lineEx.args[1].args[1]))
        deleteat!(org.funcs, i)
      end
      #
      # -1, because we don't calc return operator. This size reduce
      # should not depend on del parameter, because in case of change
      # of block based line we are changing one line into 1 + block
      # lines. Block lines should be used in org.codeSize.
      #
      org.codeSize -= (length(lineEx.args[2].args) - 1)
    elseif lineEx.head === :if
      #
      # This size reduce should not depend on del parameter, 
      # because in case of change of block based line we are
      # changing one line into 1 + block lines. Block lines
      # should be used in org.codeSize.
      #
      org.codeSize -= length(block.args)
    end
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
      rand(1:length(org.funcs[fnIdx].blocks[blockIdx].lines) - (blockIdx === 1 ? 1 : 0)) # skip "return"
    )
  end

  #
  # Available comparison operators. May be used with "if" operator
  #
  const _COMPARE_OPERATORS = [:<, :>, :<=, :>=, :(==), :!=, :!==, :(===)]
end