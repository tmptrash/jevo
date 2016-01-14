#
# Contains Organism's code related functions. Works in pair with
# Mutator module.
#
# TODO: describe @cmd annotation
#
# @author DeadbraiN
#
module Code
  import Creature
  import Config
  import Helper

  export var
  export plus
  export fn
  export fnCall

  export onRemoveLine
  export getRandPos

  #
  # @cmd
  # Returns AST expression for variable creating. Variable format: 
  # local name::Type = value
  # @param org Organism we have to mutate
  # @param fn Parent(current) function unique name 
  # we are orking in
  # @return {Expr}
  #
  function var(org::Creature.Organism, fn::ASCIIString)
    local typ::DataType  = _getType()
    local varSym::Symbol = _getNewVar(org)
    local ex::Expr = :(local $(varSym)::$(typ)=$(_getVal(typ)))

    push!(org.vars[fn][typ], varSym)

    ex
  end
  #
  # @cmd
  # + operator implementation. Sums two variables. Supports all
  # types: ASCIIString, Int8, Bool,... In case of string uses
  # concatination, for boolean - & operator. If code is empty
  # this function will skipp the execution.
  # @param org Organism we have to mutate
  # @param fn Parent(current) function unique name 
  # we are orking in
  # @return {Expr}
  #
  function plus(org::Creature.Organism, fn::ASCIIString)
    local typ::DataType = _getType()
    local v1::Symbol = _getVar(org, fn, typ)
    local v2::Symbol = _getVar(org, fn, typ)
    local v3::Symbol = _getVar(org, fn, typ)

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
  # Creates custom function with unique name, random arguments with
  # default values. By default it returns first parameter as local 
  # variable
  # @param org Organism we are working with
  # @param fn Parent(current) function unique name 
  # we are orking in
  # @return {Expr}
  #
  function fn(org::Creature.Organism, fn::ASCIIString)
    #
    # We may add functions only in main one. Custom functions can't
    # be used as a container for other custom functions.
    #
    if !isempty(fn) return Expr(:nothing) end
    local typ::DataType
    local i::Int
    local p::Symbol
    local fnName::ASCIIString = _getNewFn(org)
    local paramLen::Int = rand(1:Config.val(:CODE_MAX_FUNC_PARAMS))
    local var::Dict{DataType, Array{Symbol, 1}} = (org.vars[fnName] = Helper.getTypesMap())
    #
    # New function parameters in format: [name::Type=val,...]. 
    # At least one parameter should exist. We choose amount of
    # parameters randomly. All other parameters will be set by
    # default values.
    #
    local params::Array{Expr, 1} = [:($(typ = _getType();_getNewVar(org))::$(typ)=$(_getVal(typ))) for i=1:paramLen]
    #
    # New function in format: function func_x(var_x::Type=val,...) return var_x end
    # All parameters will be added as local variables.
    #
    local fnEx::Expr = :(function $(Symbol(fnName))($([(push!(var[p.args[1].args[2]], p.args[1].args[1]);p) for p in params]...)) end)

    push!(fnEx.args[2].args, :(return $(params[1].args[1].args[1])))
    push!(org.funcs, fnEx)

    fnEx
  end
  #
  # @cmd
  # Calls custom function or do nothing if no available functions.
  # It choose custom function from org.funcs array, fill parameters
  # and call it.
  # @param org Organism we are working with
  # @param fn Parent(current) function unique name
  # we are orking in
  # @return {Expr|nothing}
  # TODO: add check if we call a function inside other function
  #
  function fnCall(org::Creature.Organism, fn::ASCIIString)
    if !isempty(fn) return Expr(:nothing) end
    local len::Int = length(org.funcs)
    if len < 1 return Expr(:nothing) end
    local fnExpr::Expr = org.funcs[rand(1:len)]
    local args::Array{Any, 1} = fnExpr.args[1].args        # shortcut to func args
    local types::Array{DataType, 1} = Array{DataType, 1}() # func types only
    local argsLen::Int = length(args)

    if argsLen > 1
      for i=2:rand(2:argsLen)
        push!(types, args[i].args[1].args[2])
      end
    end

    :($(fnExpr.args[1].args[1])($([(ex = _getVar(org, fn, i);ex === :nothing ? _getVal(i) : ex) for i in types]...)))
  end

  #
  # This method is called before one code line is removed or changed.
  # It checks if removed/changed line is a local variable declaration
  # or function declaration. In this case it clears all related 
  # structures like org.vars and org.funcs... Remove position in a parameter
  # is a tuple of three elements: code::Array{Expr},pos::Int,fn::Expr, where
  # code - array of code lines some AST node, pos - current removing 
  # position in code, fn - parent(current) function.
  # @param pos Remove position. 
  #
  function onRemoveLine(org::Creature.Organism, pos::Tuple)
    local expr::Expr = pos[2][pos[1]]        # line we want to remove
    local ex::Expr   = expr.args[1].args[1]  # shortcut to variable
    local i::Int
    local vars::Array{Symbol, 1}

    # TODO: check if removed line doesn't contain blocks. In this 
    # TODO: case codeSize should be decreased more.
    #org.codeSize -= 1

    #
    # Finds currently removed variable within it's function and 
    # removes it from Creature.Organism.vars map
    #
    if expr.head === :local
      vars = org.vars[string(pos[2].args[1].args[1])][ex.args[2]]
      i = findfirst(vars, ex.args[1])
      if i > 0 deleteat!(vars, i) end
    #
    # Finds currently removed function declaration and remove it
    # from Creature.Organism.funcs map
    #
    elseif expr.head === :function
      i = findfirst(org.funcs[pos[2]])
      if i > 0 deleteat!(org.funcs[pos[2]], i) end
      # TODO: check if this minus correct!
      org.codeSize -= length(pos[2])
    # TODO: blocks check will be added here
    end
    org.codeSize -= 1
  end
  #
  # Returns random position in a code (including all custom 
  # functions), where we have to insert/change/delete code 
  # line. Position is chose randomly. It takes main function 
  # and all custom functions together, choose one function 
  # randomly and choose random position inside this function. 
  # Last tuple parameter is a parent(current) function.
  # @param org Organism we are working with
  # @return {Tuple} (index::Int,lines::Any,mainFn::Bool)
  #
  function getRandPos(org::Creature.Organism)
    local fn::Int = rand(1:length(org.funcs) + 1) # + 1 for main func
    #
    # 1 means main function (not custom)
    #
    fn === 1 ?
      (rand(1:length(org.code.args[2].args)), org.code) :
      (rand(1:length(org.funcs[fn - 1].args[2].args)), org.funcs[fn - 1])
  end
  #
  # Creates new unique variable name and returns it's symbol
  # @param org Owner of new variable
  # @return {Symbol}
  #
  function _getNewVar(org::Creature.Organism)
    Symbol("var_$(org.varId += 1)")
  end
  #
  # Creates new unique custom function name.
  # @param org Organism we are working with
  # @return {ASCIIString}
  #
  function _getNewFn(org::Creature.Organism)
    "func_$(org.fnId += 1)"
  end
  #
  # Returns one of supported types. Is used randomizer for choosing type.
  # @return {DataType}
  #
  function _getType()
    local types::Array{DataType} = [ASCIIString, Bool, Int8, Int16]
    types[rand(1:length(types))]
  end
  #
  # Returns random value by data type. e.g.: 123 for Int8
  # @param typ Data type
  # @return {Any}
  #
  function _getVal(typ::DataType)
    typ !== ASCIIString ? rand(typ) : randstring()
  end
  #
  # Returns a variable from existing in a code
  # @param org Organism we are mutating
  # @param fn An expression of parent(current) function within 
  # we are orking in
  # @param typ Type of variable we want to take
  # @return {Symbol}
  #
  function _getVar(org::Creature.Organism, fn::ASCIIString, typ::DataType)
    if length(org.vars[fn][typ]) < 1 return :nothing end 
    org.vars[fn][typ][rand(1:length(org.vars[fn][typ]))]
  end
end