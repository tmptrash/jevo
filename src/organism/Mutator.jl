#
# TODO: module description.
# TODO: describe generl approach of a module. mutations probabilities
# TODO: small-changes, code evaluation, energy & cloning
# TODO: describe linear quoted structure of the script we support
# TODO: describe functions and variables at the top of the code
# TODO: describe main and custom functions
# OPT: this module should be optimized!
module Mutator
  import Config
  import Helper
  import Creature
  import Code

  export mutate
  #
  # Checks if specified position in a code is correct. By correct i
  # mean: follow the rules like block can't be inside other blocks,
  # except block of function, function declaration can't be inside
  # other custom function and so on... If something wrong with position
  # then false will be returned. We have to prevent: calling function 
  # inside custom function (to prevent recursing), creation function 
  # inside custom function, block operator inside other blocks, except
  # blocks of functions. exp variable should be declared outside the 
  # macros.
  #
  macro posCorrect(org, pos, cmd)
    :(if $cmd.isBlock && $pos.blockIdx !== 1 || $pos.fnIdx !== 1 && $cmd.fn !== Code.fnCall return false end)
  end
  #
  # TODO: add description of the method
  # TODO: describe indexes
  # TODO: add org.codeSize += 1 for every adding
  # TODO: describe indexes (add,change,del,...)
  # TODO: describe return value. false mean no mutation
  #
  function mutate(org::Creature.Organism, amount::Int = 1)
    local i         ::Int
    local res       ::Bool
    local pIndex    ::Int
    local result    ::Bool = true
    local codeChange::Bool
    local pos       ::Helper.Pos
    local cmd       ::Code.CodePart

    for i = 1:amount
      #
      # If there is no code, we can't mutate it. We may only add code line
      #
      pIndex     = org.codeSize < 1 ? 1 : Helper.getProbIndex(org.mutationProbabilities)
      codeChange = pIndex < 5
      pos        = codeChange ? Code.getRandPos(org) : _posStub
      cmd        = codeChange ? Code.CODE_PARTS[rand(1:length(Code.CODE_PARTS))] : _cmdStub
      res        = org.codeSize < 1 ? _onAdd(org, pos, cmd) : _MUTATION_TYPES[pIndex](org, pos, cmd)
      result    &= res
      #
      # Updates compiled version of the code. Only valid code will be applied,
      # because exception will be fired in case of error organism code.
      #
      if codeChange && res
        try
          #
          # This function must be anonymous, because it's used for comparison
          # with other functions for other organisms. If their names are equal
          # and they are in the same module, then === operator returns true.
          # @param o Associated with this code organism
          #
          org.codeFn = Creature.eval(org.code)
          _changeColor(org)
        catch e
          # TODO: here fault script statictics should be collected
        end
      end
    end

    result
  end
  #
  # Changes organism's color a little bit
  # @param org Organism whom color we have to change
  # TODO: this color change algorithm is not effective. Have to change it
  function _changeColor(org::Creature.Organism)
    local pattern::Array{UInt32, 1} = [0x00100000, 0x00010000, 0x00001000, 0x00000100, 0x00000010, 0x00000001]

    org.color -= pattern[rand(1:6)]
    org.color &= 0x00FFFFFF
  end
  #
  # Adds one line of code into existing code blocks including all
  # custom function bodies and their blocks. It shouldn't add function
  # or function call inside other function excepts main one.
  # @param org Organism we are working with
  # @param pos Adding code position
  # @param cmd Command we have to add
  # @return {Bool} true means that add mutation was occured, false
  # that there were no add or adding was skipped.
  #
  function _onAdd(org::Creature.Organism, pos::Helper.Pos, cmd::Code.CodePart)
    @posCorrect(org, pos, cmd)
    local exp::Expr = cmd.fn(org, pos)
    #
    # Incorrect position for adding or it's impossible to 
    # get a command.
    #
    if exp.head === :nothing return false end
    #
    # All new custom functions should be at the beginning
    # to prevent UndefVarError error in case of calling
    # before defining the function. The same for variables.
    #
    insert!(org.funcs[pos.fnIdx].blocks[pos.blockIdx].lines, cmd.fn === Code.fn || cmd.fn === Code.var ? 1 : pos.lineIdx, exp)
    org.codeSize += 1

    true
  end
  #
  # Makes one big change in a code of main and custom functions. Big 
  # change means changing one line. It's possible to skip changing.
  # @param org Organism we are working with
  # @param pos Changing code position
  # @param cmd Command we have change to
  # @return {Bool} true means that there were a change, false
  # that there were no change or change was skipped.
  #
  function _onChange(org::Creature.Organism, pos::Helper.Pos, cmd::Code.CodePart)
    @posCorrect(org, pos, cmd)
    local lines::Array{Any, 1} = org.funcs[pos.fnIdx].blocks[pos.blockIdx].lines
    local exp::Expr            = cmd.fn(org, pos)
    #
    # It's impossible to get a command or no lines to change
    #
    if exp.head === :nothing ||
       length(lines) < 1 ||
       lines[pos.lineIdx].head === :return
      return false
    end
    Code.onRemoveLine(org, pos)
    lines[pos.lineIdx] = exp

    true
  end
  #
  # Removes one code line if possible. It can't remove return
  # operator inside custom functions
  # @param org Organism we are working with
  # @param pos Delete code position
  # @param cmd Unused
  # @return {Bool} true means that there were a delete, false
  # that there were no delete or delete was skipped.
  #
  function _onDel(org::Creature.Organism, pos::Helper.Pos, cmd::Code.CodePart)
    local lines::Array{Any, 1} = org.funcs[pos.fnIdx].blocks[pos.blockIdx].lines

    if length(lines) < 1 ||
       lines[pos.lineIdx].head === :return
      return false
    end
    Code.onRemoveLine(org, pos)
    deleteat!(lines, pos.lineIdx)    
    org.codeSize -= 1

    true
  end
  #
  # Makes one small change in a code included code of all 
  # custom functions. Small change it's change of variable
  # or constant to other/same variable or constant.
  # @param org Organism we are working with
  # @param pos Change code position
  # @param cmd Unused
  # @return {Bool} true means that there were a change, false
  # that there were no change or change was skipped.
  # TODO: implement in future
  #
  function _onSmallChange(org::Creature.Organism, pos::Helper.Pos, cmd::Code.CodePart)
    # TODO: AST deep analyzing here!
    # TODO: variables and constants should be used here
    true
  end
  #
  # mutationsOnClone property mutation handler. It changes this 
  # property randomly. 0 means disable property.
  # @param org Organism we are working with
  # @param pos Unused
  # @param cmd Unused
  #

  function _onClone(org::Creature.Organism, pos::Helper.Pos, cmd::Code.CodePart)
    org.mutationsOnClone = rand(0:Config.val(:ORGANISM_MAX_MUTATIONS_ON_CLONE))
    true
  end
  #
  # mutationPeriod property mutation handler. It changes this
  # property randomly. 0 means disable property.
  # @param org Organism we are working with
  # @param pos Unused
  # @param cmd Unused
  #
  function _onPeriod(org::Creature.Organism, pos::Helper.Pos, cmd::Code.CodePart)
    org.mutationPeriod = rand(0:Config.val(:ORGANISM_MAX_MUTATION_PERIOD))
    true
  end
  #
  # mutationAmount property mutation handler. It changes this 
  # property randomly. 0 means disable property.
  # @param org Organism we are working with
  # @param pos Unused
  # @param cmd Unused
  #
  function _onAmount(org::Creature.Organism, pos::Helper.Pos, cmd::Code.CodePart)
    org.mutationAmount = rand(0:Config.val(:ORGANISM_MAX_MUTATION_AMOUNT))
    true
  end
  #
  # All available functions for mutation types: change, add, del,...
  #
  const _MUTATION_TYPES = [
    _onAdd, _onChange, _onDel, _onSmallChange, _onClone, _onPeriod, _onAmount
  ]
  #
  # "Empty" position. Means no position. Is used only like a stub for 
  # functions, which don't need code position
  #
  const _posStub = Helper.Pos(0,0,0)
  #
  # Stub for CodePart type. Is used with functions like: _onPeriod, _onPeriod,..
  # Which don't need a code part
  #
  const _cmdStub = Code.CodePart(Code.var, false)
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
 #    ";clone(o);",";getEnergy(o,",";eatLeft(o);",";eatRight(o);",";eatUp(o);",
 #    ";eatDown(o);",";stepLeft(o);",";stepRight(o);",";stepUp(o);",";stepDown(o);"
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