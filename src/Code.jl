#
# Contains Organism's code related functions. Works in pair with
# Mutator module.
#
# TODO: describe @cmd annotation
# TODO: describe that return operator inside custom functions don't affect of script size
#
# @author DeadbraiN
#
module Code
  import Creature
  import Config
  import Helper

  using Debug
  #
  # Command functions. Amount of these functions will be increased
  # as many Julia language part i'mgoing to support...
  #
  export var
  export plus
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
  # @return {Expr}
  #
  @debug function var(org::Creature.Organism, fn::ASCIIString)
  @bp
    local typ::DataType  = _getType()
    local varSym::Symbol = _getNewVar(org)

    push!(org.vars[fn].vars[typ], varSym)

    :(local $(varSym)::$(typ)=$(_getVal(typ)))
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
  # @return {Expr}
  #
  @debug function plus(org::Creature.Organism, fn::ASCIIString)
  @bp
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
  # we are working in
  # @return {Expr}
  #
  @debug function fn(org::Creature.Organism, fn::ASCIIString)
  @bp
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
    local func::Creature.Func = (org.vars[fnName] = Creature.Func(Helper.getTypesMap(), []))
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
    local fnEx::Expr = :(function $(Symbol(fnName))($([(push!(func.vars[p.args[1].args[2]], p.args[1].args[1]);p) for p in params]...)) end)

    push!(fnEx.args[2].args, :(return $(params[1].args[1].args[1])))
    push!(org.vars[fn].blocks, fnEx.args[2])
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
  # we are working in
  # @return {Expr|nothing}
  # TODO: add check if we call a function inside other function
  #
  @debug function fnCall(org::Creature.Organism, fn::ASCIIString)
  @bp
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
  # @cmd
  # TODO:
  # if operator implementation
  # @param org Organism we are working with
  # @param fn Parent(current) function unique name
  # we are working in
  # @return {Expr|nothing}
  #
  function condition(org::Creature.Organism, fn::ASCIIString)

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
  @debug function onRemoveLine(org::Creature.Organism, pos::Int, fnEx::Expr, block::Expr)
  @bp
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
    # from Creature.Organism.funcs map
    #
    elseif lineEx.head === :function
      i = findfirst(org.funcs, lineEx)
      if i > 0
        delete!(org.vars, org.funcs[i].args[1].args[1])
        deleteat!(org.funcs, i)
      end
      org.codeSize -= (length(lineEx.args[2].args) - 1) # -1, because we don't calc return operator
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
  # @param org Organism we are working with
  # @return {Tuple} (index::Int, fn::Expr, block::Expr)
  #
  @debug function getRandPos(org::Creature.Organism)
  @bp
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
    # args[2].args is an array of function body (block)
    # This is custom function. i-1 means that we can't change 
    # return operator at the end of custom function
    #
    if fnIndex > 1
      fnEx   = org.funcs[fnIndex-1]
      fnName = "$(fnEx.args[1].args[1])"
      blocks = org.vars[fnName].blocks
      block  = blocks[rand(1:length(blocks))]
      if block === fnEx.args[2] # block of the function's body
        i = (rand(1:(i = length(block.args)) > 1 ? i - 1 : 1))
      else
        i = rand(1:length(block.args))
      end

      return (i, org.funcs[fnIndex-1], block)
    end
    #
    # main function
    #
    blocks = org.vars[""].blocks
    block  = blocks[rand(1:length(blocks))]
    i      = rand(1:length(block.args))

    (i, org.code, block)
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
    local types::Array{DataType} = Helper.getSupportedTypes()
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
    if length(org.vars[fn].vars[typ]) < 1 return :nothing end 
    org.vars[fn].vars[typ][rand(1:length(org.vars[fn].vars[typ]))]
  end
end