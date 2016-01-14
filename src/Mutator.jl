#
# TODO: module description.
# TODO: describe generl approach of a module. mutations probabilities
# TODO: small-changes, code evaluation, energy & cloning
# TODO: describe linear quoted structure of the script we support
#
module Mutator
  import Config
  import Helper
  import Creature
  import Code
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
  # Adds one line of code into existing code including all
  # custom function bodies. It shouldn't add function inside
  # existing function.
  # @param org Organism we are working with
  #
  function _onAdd(org::Creature.Organism)
    local pos::Tuple = Code.getRandPos(org)
    local fn::Function = CODE_SNIPPETS[rand(1:length(CODE_SNIPPETS))]
    local fnName::ASCIIString = pos[2] === org.code ? "" : string(pos[2].args[1].args[1])
    local isMainFn::Bool = isempty(fnName)
    local ex::Expr

    if (isMainFn || !isMainFn && fn !== Code.fn && fn !== Code.fnCall) && (ex = fn(org, fnName)).head !== :nothing
      #
      # All new custom functions should be at the beginning
      # to prevent UndefVarError error
      #
      insert!(pos[2].args[2].args, fn === Code.fn ? 1 : pos[1], ex)
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
  @debug function _onChange(org::Creature.Organism)
  @bp
    local pos::Tuple = Code.getRandPos(org)
    local lines::Array{Expr, 1} = pos[2].args[2].args
    local fnName::ASCIIString = pos[2] === org.code ? "" : string(pos[2].args[1].args[1])
    local isMainFn::Bool = isempty(fnName)
    local fn::Function
    local oldExpr::Expr
    local ex::Expr

    if length(lines) > 0
      fn = CODE_SNIPPETS[rand(1:length(CODE_SNIPPETS))]
      if (isMainFn || !isMainFn && fn !== Code.fn && fn !== Code.fnCall) && (ex = fn(org, fnName)).head !== :nothing
        if fn !== Code.fn || (fn === Code.fn && pos[1] === 1)
          Code.onRemoveLine(org, pos)
          lines[pos[1]] = ex
        end
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
    local pos::Tuple = Code.getRandPos(org)

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
    local pos::Tuple = Code.getRandPos(org)
    local args::Array{Expr, 1} = pos[2].args[2].args

    if length(args) > 0
      Code.onRemoveLine(org, pos)
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
  # Array of available functions. Each function should return Expr type.
  # They are used for generating (add,change) code of organisms.
  #
  const CODE_SNIPPETS = [
    Code.var, Code.plus, Code.fn, Code.fnCall
  ]
 #  #
 #  # TODO:
 #  #
 #  const CODE_BLOCKS = [
 #    # atomic elements
 #    "_","<",">",".",",","@","!","=","{","}","[","]","(",")","'","\"","?",":","&",
 #    "*","+","-","%",";","^","|","/","~","\$"," ",
 #    # operators
 #    "&&","||","\\","+=","-=","!=","*=","/=","^=","%=",".%=","&=","\$=","=>",
 #    "<<=",">>=",">>>=",">=","<=","==","===","!==",">>","<<",">>>","|=",".%",".!=",
 #    ".*",".+",".-","./",".<",".>",".<<",".<=",".==",".>=",".>>",".\\",".^","//",
 # "...","->",
 #    # letters
 #    "0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i",
 #    "j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",#"A","B",
 #    #"C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U",
 #    #"V","W","X","Y","Z",
 #    # complex keywords
 #    #_getFunction,
 #    # keywords
 #    ";function ",";for ",";end;",";while ",";if ",";else;",";elseif ",";break;",
 #    ";switch ",";case ",";otherwise ",";try;",";catch (e);",";type ",";typealias ",
 #    ";return "," true "," false ",";quote;"," in ",";abstract ",";module ",";baremodule ",
 #    ";using ",";continue;",";ifelse ",";do ",";eval(",";let ",";finally;",";throw ",
 #    ";bitstype ",
 #    # types
 #    " Number "," Real "," BigInt "," Integer "," UInt "," UInt8 "," UInt16 "," UInt32 ",
 #    " UInt64 "," UInt128 "," Int "," Int8 "," Int16 "," Int32 "," Int64 "," Int128 ",
 #    " BigFloat "," FloatingPoint "," Float16 "," Float32 "," Float64 "," Bool "," Char ",
 #    " ASCIIString "," UTF8String "," ByteString "," Array "," BitArray "," Range ",
 #    " Tuple "," Symbol "," Function "," Type "," Any "," String "," Signed "," Dict ",
 #    # organism api
 #    ";clone(o);",";getEnergy(o,",";energyLeft(o);",";energyRight(o);",";energyUp(o);",
 #    ";energyDown(o);",";stepLeft(o);",";stepRight(o);",";stepUp(o);",";stepDown(o);"
 #    # TODO: here should be a buildin functions from Base, Core and Main modules
 #    # math/geom functions
 #    # "round","iround","floor","ifloor","ceil","iceil","trunc","itrunc","div","fld",
 #    # "rem","mod","gcd","lcm","abs","abs2","sign","signbit","copysign","flipsign",
 #    # "sqrt","cbrt","hypot","exp","expm1","ldexp","log","log2","log10","log1p",
 #    # "exponent","significand","sin","cos","tan","cot","sec","csc","sinh","cosh",
 #    # "tanh","coth","sech","csch","asin","acos","atan","acot","asec","acsc","asinh",
 #    # "acosh","atanh","acoth","asech","acsch","sinc","cosc","atan2"
 #  ]
end