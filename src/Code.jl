#
# Contains Organism's code related functions. Works in pair with
# Mutator module.
#
# TODO: describe @cmd annotation
# TODO: describe that return operator inside custom functions don't affect of script size
# TODO: describe Expr(:nothing) return value
#
# @author DeadbraiN
#
module Code
  import Creature
  import Config
  import Helper

  using Debug

  include("CodeMacros.jl")
  #
  # Command functions. Amount of these functions will be increased
  # as many Julia language part i'mgoing to support...
  #
  export var
  export plus
  export minus
  export fn
  export fnCall
  export condition
  #
  # Public functions
  #
  export onRemoveLine
  export getRandPos

  #
  # @cmd
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
  # + operator implementation. Sums two variables. Supports all
  # types: ASCIIString, Int8, Bool,... In case of string uses
  # concatination, for boolean - & operator. If code is empty
  # this function will skipp the execution.
  # @param org Organism we have to mutate
  # @param fn Parent(current) function unique name
  # we are working in
  # @param block Current flock within fn function
  # @return {Expr}
  #
  function plus(org::Creature.Organism, fn::ASCIIString, block::Expr)
    local typ::DataType = @getType()
    local v1::Symbol    = @getVar(org, fn, typ)
    local v2::Symbol    = @getVar(org, fn, typ)
    local v3::Symbol    = @getVar(org, fn, typ)

    if v1 === :nothing return Expr(:nothing) end

    if typ === ASCIIString 
      return :($(v1) = $(v2) * $(v3))
    elseif typ === Bool
      return :($(v1) = $(v2) & $(v3))
    end

    :($(v1) = $(v2) + $(v3))
  end
  #
  # @cmd
  # - operator implementation. Minus two variables. Supports all
  # types: ASCIIString, Int8, Bool,... In case of string uses
  # concatination, for boolean - & operator. If code is empty
  # this function will skipp the execution.
  # @param org Organism we have to mutate
  # @param fn Parent(current) function unique name
  # we are working in
  # @param block Current flock within fn function
  # @return {Expr}
  #
  function minus(org::Creature.Organism, fn::ASCIIString, block::Expr)
    local typ::DataType = @getType()
    local v1::Symbol    = @getVar(org, fn, typ)
    local v2::Symbol    = @getVar(org, fn, typ)
    local v3::Symbol    = @getVar(org, fn, typ)
    local l::Int

    if v1 === :nothing return Expr(:nothing) end
    #
    # "1234"   - "85"  = "12" (just cut v1 by length of v2)
    # "qwerty" - "111" = "qwe"
    #
    if typ === ASCIIString
      return :($(v1) = $(v2)[1:(length(v3) > length(v2) ? end : length(v3))])
    #
    # true  - true  = false, true  - false = true, 
    # false - false = false, false - true  = true
    #
    elseif typ === Bool
      return :($(v1) = Bool(abs($(v2) - $(v3))))
    end
    #
    # Numeric types are here
    #
    :($(v1) = $(v2) - $(v3))
  end
  #
  # @cmd
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
    push!(org.vars[fnName].blocks, fnEx.args[2])
    push!(org.funcs, fnEx)

    fnEx
  end
  #
  # @cmd
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
  # Saves custom value to organism's private memory
  # @param org Organism we are working with
  # @param fn Parent(current) function unique name
  # we are working in
  # @param block Current flock within fn function
  # @return {Expr|nothing}
  #
  function toMem(org::Creature.Organism, fn::ASCIIString, block::Expr)
    local typ::DataType = @getType()
    local key::Symbol   = @getVar(org, fn, Int16)
    local val::Symbol   = @getVar(org, fn, Int16)

    if key === :nothing return Expr(:nothing) end

    :(o.mem[$key]=$val)
  end
  #
  # @cmd
  # Extracts custom value from organism's private memory
  # @param org Organism we are working with
  # @param fn Parent(current) function unique name
  # we are working in
  # @param block Current flock within fn function
  # @return {Expr|nothing}
  #
  function fromMem(org::Creature.Organism, fn::ASCIIString, block::Expr)
    local typ::DataType = @getType()
    local key::Symbol   = @getVar(org, fn, Int16)
    local val::Symbol   = @getVar(org, fn, Int16)

    if key === :nothing return Expr(:nothing) end
    # TODO: how to check return type?
    :($val=o.mem[$key])
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
  #
  function onRemoveLine(org::Creature.Organism, pos::Int, fnEx::Expr, block::Expr)
    local lineEx::Expr = block.args[pos] # line we want to remove
    local ex::Expr
    local i::Int
    local vars::Array{Symbol, 1}
    #
    # Finds currently removed variable within it's function and
    # removes it from Creature.Organism.vars map
    #
    if lineEx.head === :local
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
      # -1, because we don't calc return operator
      #
      org.codeSize -= (length(lineEx.args[2].args) - 1)
    #
    # Finds block of current if operator and removes it from 
    # Organism.vars[fn].blocks array
    #
    elseif lineEx.head === :comparison
      i = findfirst(org.vars[fn].blocks, block)
      if i > 0 deleteat!(org.vars[fn].blocks, i) end
      org.codeSize -= length(lineEx.args[2].args)
    end
    org.codeSize -= 1
  end
  #
  # Returns random position in a code (including all custom 
  # functions), where we have to insert/change/delete code 
  # line. Position is chose randomly. It takes main function 
  # and all custom functions together, choose one function 
  # randomly and choose random position inside this function's
  # block.
  # @param org Organism we are working with
  # @return {Tuple} (index::Int, fn::Expr, block::Expr)
  #
  function getRandPos(org::Creature.Organism)
    #
    # + 1, because main function exists everytime
    #
    local fnIndex::Int = rand(1:length(org.funcs) + 1)
    local block::Expr
    local blocks::Array{Expr, 1}
    local fnName::ASCIIString
    local i::Int
    local fnEx::Expr
    #
    # fnIndex > 1 means custom function
    #
    if fnIndex > 1
      fnEx   = org.funcs[fnIndex - 1]
      fnName = string(fnEx.args[1].args[1])
      blocks = org.vars[fnName].blocks
      block  = blocks[rand(1:length(blocks))]
      #
      # If it's block of the function body, then we have to skip 
      # return operator.
      #
      if block === fnEx.args[2] return (rand(1:((i = length(block.args)) > 1 ? i - 1 : 1)), org.funcs[fnIndex-1], block) end
      return (rand(1:((i=length(block.args)) > 0 ? i : 1)), org.funcs[fnIndex-1], block)
    end
    #
    # main function
    #
    blocks = org.vars[""].blocks
    block  = blocks[rand(1:length(blocks))]

    (rand(1:((i=length(block.args)) > 0 ? i : 1)), org.code, block)
  end

  #
  # Available comparison operators. May be used with "if" operator
  #
  const _COMPARE_OPERATORS = [:<, :>, :<=, :>=, :(==), :!=, :!==, :(===)]
end