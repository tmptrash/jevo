#
# TODO: module description.
# TODO: describe generl approach of a module. mutations probabilities
# TODO: small-changes, code evaluation, energy & cloning
# TODO: describe linear quoted structure of the script we support
# TODO: describe functions and variables at the top of the code
# TODO: describe main and custom functions
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
  # TODO: describe return value. false mean no mutation
  #
  function mutate(org::Creature.Organism, amount::Int = 1)
    local i     ::Int
    local res   ::Bool
    local pIndex::Int
    local result::Bool = true

    for i = 1:amount
      #
      # If there is no code, we can't mutate it. We may only add code line
      #
      pIndex = org.codeSize < 1 ? 1           : Helper.getProbIndex(org.mutationProbabilities)
      res    = org.codeSize < 1 ? _onAdd(org) : _MUTATION_FUNCS[pIndex](org)
      result &= res
      #
      # Updates compiled version of the code. Only valid code will be applied,
      # because exception will be fired in case of error organism code.
      #
      if pIndex < 5 && res
        try
          #
          # This function must be anonymous, because it's used for comparison
          # with other functions for other organisms. If their names are equal
          # and they are in the same module, then === operator returns true.
          # @param o Associated with this code organism
          #
          org.codeFn = eval(org.code)
        catch e
          # TODO: here fault script statictics should be collected
        end
      end
    end

    result
  end
  #
  # Adds one line of code into existing code blocks including all
  # custom function bodies and their blocks. It shouldn't add function
  # or function call inside custom function.
  # @param org Organism we are working with
  # @return {Bool} true means that add mutation was occured, false
  # that there were no add or adding was skipped.
  #
  function _onAdd(org::Creature.Organism)
    pos::Int, fnEx::Expr, block::Expr = Code.getRandPos(org)
    local cmd::Function       = _CODE_SNIPPETS[rand(1:length(_CODE_SNIPPETS))]
    local fnName::ASCIIString = fnEx === org.code ? "" : string(fnEx.args[1].args[1])
    local mainFn::Bool        = isempty(fnName)
    local cmdEx::Expr

    if !((!mainFn && cmd !== Code.fn && cmd !== Code.fnCall || mainFn) && (cmdEx = cmd(org, fnName, block)).head !== :nothing) return false end
    #
    # All new custom functions should be at the beginning
    # to prevent UndefVarError error in case of calling 
    # before defining the function.
    #
    insert!(block.args, cmd === Code.fn || cmd === Code.var ? 1 : pos, cmdEx)
    org.codeSize += 1
    true
  end
  #
  # Makes one big change in a code of main and custom functions. Big 
  # change means changing one line. It's possible to skip changing.
  # @param org Organism we are working with
  # @return {Bool} true means that there were a change, false
  # that there were no change or change was skipped.
  #
  function _onChange(org::Creature.Organism)
    pos::Int, fnEx::Expr, block::Expr = Code.getRandPos(org)
    local cmd::Function         = _CODE_SNIPPETS[rand(1:length(_CODE_SNIPPETS))]
    local fnName::ASCIIString   = fnEx === org.code ? "" : string(fnEx.args[1].args[1])
    local mainFn::Bool          = isempty(fnName)
    local cmdEx::Expr

    if length(block.args) < 1 ||                            # no lines to change
       block.args[pos].head === :return ||                  # return is unmutable
       !(cmd !== Code.fn &&                                 # fn may be only in main function
       (!mainFn && cmd !== Code.fnCall || mainFn) &&        # fnCall may be only in main function
       (cmdEx = cmd(org, fnName, block)).head !== :nothing) # impossible obtain new code line
      return false
    end

    Code.onRemoveLine(org, pos, fnEx, block)
    block.args[pos] = cmdEx
    true
  end
  #
  # Makes one small change in a code included code of all 
  # custom functions. Small change it's change of variable
  # or constant to other/same variable or constant.
  # @param org Organism we are working with
  # @return {Bool} true means that there were a change, false
  # that there were no change or change was skipped.
  # TODO: implement in future
  #
  function _onSmallChange(org::Creature.Organism)
    pos::Int, fnEx::Expr, block::Expr = Code.getRandPos(org)

    if length(block.args) < 1 return false end
    # TODO: AST deep analyzing here!
    # TODO: variables and constants should be used here
    true
  end
  #
  # Removes one code line if possible. It can't remove return
  # operator inside custom functions
  # @param org Organism we are working with
  # @return {Bool} true means that there were a delete, false
  # that there were no delete or delete was skipped.
  #
  function _onDel(org::Creature.Organism)
    pos::Int, fnEx::Expr, block::Expr = Code.getRandPos(org)

    if length(block.args) < 1 || block.args[pos].head === :return return false end

    Code.onRemoveLine(org, pos, fnEx, block)
    deleteat!(block.args, pos)
    true
  end
  #
  # mutationsOnClone property mutation handler. It changes this 
  # property randomly. 0 means disable property.
  # @param org Organism we are working with
  #
  function _onClone(org::Creature.Organism)
    org.mutationsOnClone = rand(0:Config.val(:ORGANISM_MAX_MUTATIONS_ON_CLONE))
    true
  end
  #
  # mutationPeriod property mutation handler. It changes this 
  # property randomly. 0 means disable property.
  # @param org Organism we are working with
  #
  function _onPeriod(org::Creature.Organism)
    org.mutationPeriod = rand(0:Config.val(:ORGANISM_MAX_MUTATION_PERIOD))
    true
  end
  #
  # mutationAmount property mutation handler. It changes this 
  # property randomly. 0 means disable property.
  # @param org Organism we are working with
  #
  function _onAmount(org::Creature.Organism)
    org.mutationAmount = rand(0:Config.val(:ORGANISM_MAX_MUTATION_AMOUNT))
    true
  end

  #
  # Array of available functions. Each function should return Expr type.
  # They are used for generating (add,change) code of organisms. This
  # array can't be empty.
  #
  const _CODE_SNIPPETS = [
    #
    # Code
    #
    Code.var, Code.plus, Code.minus, Code.multiply, Code.divide, Code.reminder, Code.fn, 
    Code.fnCall, Code.condition, Code.toMem, Code.fromMem, Code.loop,
    #
    # CodeOrganism
    #
    Code.getEnergy, Code.eatLeft, Code.eatRight, Code.eatUp, Code.eatDown, 
    Code.stepLeft, Code.stepRight, Code.stepUp, Code.stepDown#=, Code.clone =#
  ]
  #
  # All available functions for mutation types: change, add, del,...
  #
  const _MUTATION_FUNCS = [
    _onAdd, _onChange, _onSmallChange, _onDel, _onClone, _onPeriod, _onAmount
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