#
# TODO: module description.
# TODO: describe generl approach of a module. mutations probabilities
# TODO: small-changes, code evaluation, energy & cloning
# TODO: describe linear quoted structure of the script we support
# TODO: describe @cmd annotation
#
module Mutator
  import Config
  import Helper
  import Creature
  using Debug

  export mutate
  #
  # TODO: add description of the method
  # TODO: describe indexes
  # TODO: add org.codeSize += 1 for every adding
  # TODO: describe indexes (add,change,del,...)
  #
  function mutate(org::Creature.Organism)
    #
    # If there is no code, we can't mutate it
    #
    if org.codeSize < 1 return false end

    local pIndex::Int = Helper.getProbIndex(org.mutationProbabilities)
    local map::Array{Function, 1} = [_onAdd, _onChange, _onSmallChange, _onDel, _onClone, _onPeriod, _onAmount]

    map[pIndex](org)
    #
    # Updates compiled version of the code. Only valid code will be applied,
    # because exception will be fired in case of error organismcode.
    #
    if pIndex < 5
      try
        #
        # This function must be anonymous, because it's used for comparison
        # with other functions for other organisms. If their names are equal
        # and they are in the same module, then === operator returns true.
        # @param o Associated with this code organism
        #
        org.codeFn = eval(org.code)
      end
    end

    true
  end
  #
  # @cmd
  # Returns AST expression for variable creating. Variable format: 
  # local name::Type = value
  # @param org Organism we have to mutate
  # @param fn An expression of parent(current) function within 
  # we are orking in
  # @return {Expr}
  #
  function _var(org::Creature.Organism, fn::Expr)
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
  # @param fn An expression of parent(current) function within 
  # we are orking in
  # @return {Expr}
  #
  function _plus(org::Creature.Organism, fn::Expr)
    local typ::DataType = _getType()
    local v1::Symbol = _getVar(org, fn, typ)
    local v2::Symbol = _getVar(org, fn, typ)
    local v3::Symbol = _getVar(org, fn, typ)

    if v1 === :nothing return :nothing end

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
  # @param fn An expression of parent(current) function within 
  # we are orking in
  # @return {Expr}
  #
  function _fn(org::Creature.Organism, fn::Expr)
    #
    # We may add functions only in main one. Custom functions can't
    # be used as a container for other custom functions.
    #
    if fn !== org.code return :nothing end
    local typ::DataType
    local i::Int
    local p::Symbol
    local len::Int = rand(1:Config.val(:CODE_MAX_FUNC_PARAMS))
    local var::Dict{DataType, Array{Symbol, 1}} = org.vars[fn]
    #
    # New function parameters in format: [name::Type=val,...]. 
    # At least one parameter should exist.
    #
    local params::Array{Expr, 1} = [:($(typ = _getType();_getNewVar(org))::$(typ)=$(_getVal(typ))) for i=1:len]
    #
    # New function in format: function func_x(var_x::Type=val,...) return var_x end
    # All parameters will be added as local variables.
    #
    local fnEx::Expr = :(function $(_getNewFn(org))($([(push!(var[p.args[1].args[2]], p.args[1].args[1]);p) for p in params]...))
      return $(params[1].args[1].args[1])
    end)

    push!(org.funcs, fnEx)
    push!(org.code.args[2].args, fnEx)

    fnEx
  end
  #
  # @cmd
  # Calls custom function or do nothing if no available functions.
  # It choose custom function from org.funcs array, fill parameters
  # and call it.
  # @param org Organism we are working with
  # @param fn An expression of parent(current) function within 
  # we are orking in
  # @return {Expr|nothing}
  # TODO: add check if we call a function inside other function
  #
  function _fnCall(org::Creature.Organism, fn::Expr)
    if fn !== org.code return :nothing end
    local len::Int = length(org.funcs)
    if len < 1 return :nothing end
    local fnExpr::Expr = org.funcs[rand(1:len)]
    local args::Array{Any, 1} = fnExpr.args[1].args        # shortcut to func args
    local types::Array{DataType, 1} = Array{DataType, 1}() # func types only
    local argsLen::Int = length(args)

    if argsLen > 1
      for i=2:rand(2:argsLen)
        push!(types, args[i].args[1].args[2])
      end
    end

    :($(fnExpr.args[1].args[1])($([(ex = _getVar(org, i);ex === :nothing ? _getVal(i) : ex) for i in types]...)))
  end

  #
  # Adds one line of code into existing code including all
  # custom function bodies. It shouldn't add function inside
  # existing function.
  # @param org Organism we are working with
  #
  function _onAdd(org::Creature.Organism)
    local pos::Tuple = _getRandPos(org)
    local fn::Function = CODE_SNIPPETS[rand(1:length(CODE_SNIPPETS))]
    local ex::Expr

    if pos[2] === org.code || (pos[2] !== org.code && fn !== _fn && fn !== _fnCall) && (ex = fn(org, pos[2])) !== :nothing
      insert!(pos[2].args[2].args, pos[1], ex)
      org.codeSize += 1
    end
  end
  #
  # Makes one big change in a code included code of all 
  # custom functions. Big change it's change one line. It's
  # possible to skip changing if, for example, insertion
  # position is an empty body of the function.
  # @param org Organism we are working with
  #
  function _onChange(org::Creature.Organism)
    local pos::Tuple = _getRandPos(org)
    local args::Array{Expr, 1} = pos[2].args[2].args
    local fn::Function
    local oldExpr::Expr
    local ex::Expr

    if length(args) > 0
      fn = CODE_SNIPPETS[rand(1:length(CODE_SNIPPETS))]
      if pos[2] === org.code || (pos[2] !== org.code && fn !== _fn && fn !== _fnCall) && (ex = fn(org, pos[2])) !== :nothing
        _onRemoveLine(pos)
        args[pos[1]] = ex
      end
    end
  end
  #
  # Makes one small change in a code included code of all 
  # custom functions. Small change it's change of variable
  # or constant to other/same variable or constant.
  # @param org Organism we are working with
  #
  function _onSmallChange(org::Creature.Organism)
    local pos::Tuple = _getRandPos(org)

    if length(pos[2].args[2].args) > 0
      # TODO: AST deep analyzing here!
    end
  end
  #
  # Removes one code line if possible.
  # @param org Organism we are working with
  # TODO: if we remove function we have to calculate it's
  # TODO: body size to decrease codeSize (-= bodyLen)
  #
  function _onDel(org::Creature.Organism)
    local pos::Tuple = _getRandPos(org)
    local args::Array{Expr, 1} = pos[2].args[2].args

    if length(args) > 0
      _onRemoveLine(pos)
      deleteat!(args, pos[1])
    end
  end
  #
  # mutationsOnClone property mutation handler. It changes this 
  # property randomly.
  # @param org Organism we are working with
  #
  function _onClone(org::Creature.Organism)
    org.mutationsOnClone = rand(0:Config.val(:ORGANISM_MAX_MUTATIONS_ON_CLONE))
  end
  #
  # mutationPeriod property mutation handler. It changes this 
  # property randomly.
  # @param org Organism we are working with
  #
  function _onPeriod(org::Creature.Organism)
    org.mutationPeriod = rand(0:Config.val(:ORGANISM_MAX_MUTATION_PERIOD))
  end
  #
  # mutationAmount property mutation handler. It changes this 
  # property randomly.
  # @param org Organism we are working with
  #
  function _onAmount(org::Creature.Organism)
    org.mutationAmount = rand(0:Config.val(:ORGANISM_MAX_MUTATION_AMOUNT))
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
  function _onRemoveLine(org::Creature.Organism, pos::Tuple)
    local expr::Expr = pos[2][pos[1]]        # line we want to remove
    local ex::Expr   = expr.args[1].args[1]  # shortcut to variable
    local i::Int

    # TODO: check if removed line doesn't contain blocks. In this 
    # TODO: case codeSize should be decreased more.
    #org.codeSize -= 1

    #
    # Finds currently removed variable within it's function and 
    # removes it from Creature.Organism.vars map
    #
    if expr.head === :local
      i = findfirst(org.vars[pos[3]][ex.args[2]], ex.args[1])
      if i > 0 deleteat!(org.vars[pos[3]][ex.args[2]], i) end
    #
    # Finds currently removed function declaration and remove it
    # from Creature.Organism.funcs map
    #
    elseif expr.head === :function
      i = findfirst(org.funcs[pos[3]])
      if i > 0 deleteat!(org.funcs[pos[3]], i) end
      org.codeSize -= length(pos[2])
    # TODO: blocks check will be added here
    end
    org.codeSize -= 1
  end
  #
  # Returns random position in a code (including all cusom 
  # functions), where we have to insert/change/delete code 
  # line. Position is chose randomly. It takes main function 
  # and all custom functions together, choose one function 
  # randomly and choose random position inside this function. 
  # Last tuple parameter is a parent(current) function.
  # @param org Organism we are working with
  # @return {Tuple} (index::Int,lines::Any,mainFn::Bool)
  #
  function _getRandPos(org::Creature.Organism)
    local fn::Int = rand(1:length(org.funcs) + 1) # + 1 for main func
    #
    # 1 means main function (not custom)
    #
    if fn === 1 return (rand(1:length(org.code.args[2].args)), org.code) end

    (rand(1:length(org.funcs[fn - 1].args[2].args) + 1), org.funcs[fn - 1])
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
  # @return {Symbol}
  #
  function _getNewFn(org::Creature.Organism)
    Symbol("func_$(org.fnId += 1)")
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
  function _getVar(org::Creature.Organism, fn::Expr, typ::DataType)
    if length(org.vars[fn][typ]) < 1 return :nothing end 
    org.vars[fn][typ][rand(1:length(org.vars[fn][typ]))]
  end

  #
  # TODO:
  #
  const CODE_SNIPPETS = [
    _var, _plus, _fn, _fnCall
  ]
  #
  # TODO:
  #
  const CODE_BLOCKS = [
    # atomic elements
    "_","<",">",".",",","@","!","=","{","}","[","]","(",")","'","\"","?",":","&",
    "*","+","-","%",";","^","|","/","~","\$"," ",
    # operators
    "&&","||","\\","+=","-=","!=","*=","/=","^=","%=",".%=","&=","\$=","=>",
    "<<=",">>=",">>>=",">=","<=","==","===","!==",">>","<<",">>>","|=",".%",".!=",
    ".*",".+",".-","./",".<",".>",".<<",".<=",".==",".>=",".>>",".\\",".^","//",
	"...","->",
    # letters
    "0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i",
    "j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",#"A","B",
    #"C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U",
    #"V","W","X","Y","Z",
    # complex keywords
    #_getFunction,
    # keywords
    ";function ",";for ",";end;",";while ",";if ",";else;",";elseif ",";break;",
    ";switch ",";case ",";otherwise ",";try;",";catch (e);",";type ",";typealias ",
    ";return "," true "," false ",";quote;"," in ",";abstract ",";module ",";baremodule ",
    ";using ",";continue;",";ifelse ",";do ",";eval(",";let ",";finally;",";throw ",
    ";bitstype ",
    # types
    " Number "," Real "," BigInt "," Integer "," UInt "," UInt8 "," UInt16 "," UInt32 ",
    " UInt64 "," UInt128 "," Int "," Int8 "," Int16 "," Int32 "," Int64 "," Int128 ",
    " BigFloat "," FloatingPoint "," Float16 "," Float32 "," Float64 "," Bool "," Char ",
    " ASCIIString "," UTF8String "," ByteString "," Array "," BitArray "," Range ",
    " Tuple "," Symbol "," Function "," Type "," Any "," String "," Signed "," Dict ",
    # organism api
    ";clone(o);",";getEnergy(o,",";energyLeft(o);",";energyRight(o);",";energyUp(o);",
    ";energyDown(o);",";stepLeft(o);",";stepRight(o);",";stepUp(o);",";stepDown(o);"
    # TODO: here should be a buildin functions from Base, Core and Main modules
    # math/geom functions
    # "round","iround","floor","ifloor","ceil","iceil","trunc","itrunc","div","fld",
    # "rem","mod","gcd","lcm","abs","abs2","sign","signbit","copysign","flipsign",
    # "sqrt","cbrt","hypot","exp","expm1","ldexp","log","log2","log10","log1p",
    # "exponent","significand","sin","cos","tan","cot","sec","csc","sinh","cosh",
    # "tanh","coth","sech","csch","asin","acos","atan","acot","asec","acsc","asinh",
    # "acosh","atanh","acoth","asech","acsch","sinc","cosc","atan2"
  ]
end