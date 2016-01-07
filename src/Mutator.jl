#
# TODO: module description
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
  #
  function mutate(org::Creature.Organism)
    local pIndex::Int = Helper.getProbIndex(org.mutationProbabilities)
    local len::Int = org.codeSize
    local i::Int

    if len < 1 return false end

    if     pIndex === 2 org.code[rand(1:len)] = CODE_BLOCKS[rand(1:length(CODE_BLOCKS))]
    elseif pIndex === 1
      i = rand(1:len + 1)
      if i > len && len === length(org.code) resize!(org.code, (org.codeSize += div(len, 2))) end
      org.codeSize += 1
      insert!(org.code, i, CODE_BLOCKS[rand(1:length(CODE_BLOCKS))])
    elseif pIndex === 3 org.code[rand(1:len)] = ""
    elseif pIndex === 4 org.mutationsOnClone = rand(0:Config.val(:ORGANISM_MAX_MUTATIONS_ON_CLONE))
    elseif pIndex === 5 org.mutationPeriod = rand(0:Config.val(:ORGANISM_MAX_MUTATION_PERIOD))
    elseif pIndex === 6 org.mutationAmount = rand(0:Config.val(:ORGANISM_MAX_MUTATION_AMOUNT))
    end
    #
    # Updates compiled version of the code. Only valid code will be applied,
    # because exception will be fired in case of error organismcode.
    # TODO: if code is valid, then we have to check in on remote controlled
    # TODO: worker to prevent infinite loop.
    #
    if pIndex < 4
      try
        #
        # This function must be anonymous, because it's used for comparison
        # with other functions for other organisms. If their names are equal
        # and they are in the same module, then === operator returns true.
        # @param o Associated with this code organism
        #
        org.fnCode = Creature.wrapCode(org.code, org.codeSize)
      end
    end

    true
  end
  #
  # @cmd
  # Returns AST expression for variable creating. Variable format: 
  # local name::Type = value
  # @param org Organism we have to mutate
  # @return {Expr}
  #
  function _var(org::Creature.Organism)
    local typ::DataType = _getType()
    local varSym::Symbol = _getNewVar(org)
    local ex::Expr = :(local $(varSym)::$(typ)=$(_getVal(typ)))

    push!(org.vars[typ], varSym)

    ex
  end
  #
  # @cmd
  # + operator implementation. Sums two variables. Supports all
  # types: ASCIIString, Int8, Bool,... In case of string uses 
  # concatination, for boolean - & operator.
  # @param org Organism we have to mutate
  # @return {Expr}
  #
  function _plus(org::Creature.Organism)
    local typ::DataType = _getType()
    local v1::Symbol = _getVar(org, typ)
    local v2::Symbol = _getVar(org, typ)
    local v3::Symbol = _getVar(org, typ)

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
  # default values and empty body block.
  # @param org Organism we are working with
  # @return {Expr}
  #
  function _fn(org::Creature.Organism)
    local typ::DataType
    local i::Int
    local p::Symbol
    local len::Int = rand(1:Config.val(:CODE_MAX_FUNC_PARAMS))
    local params::Tuple = tuple([:($(typ = _getType();_getNewVar(org))::$(typ)=$(_getVal(typ))) for i=0:len]...)
    local ex::Expr = :(function $(_getNewFn(org))($([p for p in params]...)) end)

    push!(org.funcs, ex)

    ex
  end
  #
  # @cmd
  # Calls custom function or do nothing if no available functions
  # @param org Organism we are working with
  # @return {Expr|nothing}
  #
  function _fnCall(org::Creature.Organism)
    local len::Int = length(org.funcs)
    if len < 1 return nothing end
    local fnExpr::Expr = org.funcs[rand(1:len)]
    local args::Array{Any, 1} = fnExpr.args[1].args         # shortcut to func args
    local params::Array{DataType, 1} = Array{DataType, 1}() # func types only
    local argsLen::Int = length(args)

    if argsLen > 1
      for i=2:rand(2:argsLen)
        push!(params, args[i].args[1].args[2])
      end
    end

    :($(fnExpr.args[1].args[1])($([_getVar(org, i) for i in params]...)))
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
  # @param typ Type of variable we want to take
  # @return {Symbol}
  #
  function _getVar(org::Creature.Organism, typ::DataType)
    org.vars[typ][rand(1:length(org.vars[typ]))]
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