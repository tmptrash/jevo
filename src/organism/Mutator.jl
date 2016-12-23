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
  import Dots

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
    :(
      if $cmd.isBlock   && $pos.blockIdx > 1       ||
         $pos.fnIdx > 1 && $cmd.fn === Code.fnCall ||
         $pos.fnIdx > 1 && $cmd.fn === Code.fn
        return false
      end
    )
  end
  #
  # TODO: add description of the method
  # TODO: describe indexes
  # TODO: add org.codeSize += 1 for every adding
  # TODO: describe indexes (add,change,del,...)
  # TODO: describe return value. false mean no mutation
  # TODO: this function is very slow!!! must be optimized
  #
  function mutate(cfg::Config.ConfigData, org::Creature.Organism, percent::Float64 = 1.0)
    local i         ::Int
    local pIndex    ::Int
    local codeChange::Bool
    local pos       ::Helper.CodePos
    local res       ::Bool
    local cmd       ::Code.CodePart
    local realAmount::Int = 0
    local amount    ::Int = Int(div(Float64(org.codeSize) * percent, 100.0))
    #
    # Amount of mutations shouldn't be less then 1
    #
    amount = amount < 1 ? 1 : amount
    for i = 1:amount
      pIndex     = org.codeSize < 1 ? 1 : Helper.getProbIndex(org.mutationProbabilities)
      codeChange = pIndex < 5
      pos        = codeChange ? Code.getRandPos(org) : _posStub
      cmd        = codeChange ? Code.CODE_PARTS[Helper.fastRand(length(Code.CODE_PARTS))] : _cmdStub
      #
      # If there is no code, we can't mutate it. We may only add code line
      #
      res        = org.codeSize < 1 ? _onAdd(cfg, org, pos, cmd) : _MUTATION_TYPES[pIndex](cfg, org, pos, cmd)
      if res realAmount += 1 end
    end
    #
    # It's very important to call eval() as few as possible. This is why
    # we moved it outside the "for" loop.
    #
    if realAmount > 0
      org.mutationsFromStart += realAmount
      _changeColor(cfg, org, realAmount)
      try
        cfg.ORGANISM_EVALS += 1
        org.codeFn = Creature.eval(org.code)
      catch e
        # TODO: here fault script statictics should be collected
      end
    end

    realAmount
  end
  #
  # Changes organism's color a little bit. We use GR library for
  # visualizing organisms and it supports only 1256 colors. But
  # they organizer in a gradient way. So we may just increase
  # color index to obtain smooth color change on organism descendants.
  # @param org Organism whom color we have to change
  # @param amount Amount of mutations
  # TODO: there is a problem here, that in some peiod of time,
  # TODO: organisms will be black (invisible). We have to exclude
  # TODO: black color from the palette
  #
  function _changeColor(cfg::Config.ConfigData, org::Creature.Organism, amount::Int)
    local colIndex::Int = org.mutationsFromStart - (org.mutationsFromStart % cfg.ORGANISM_UPDATE_COLOR_AFTER_MUTATIONS)

    if org.mutationsFromStart > cfg.ORGANISM_UPDATE_COLOR_AFTER_MUTATIONS && colIndex >= org.mutationsFromStart - amount && colIndex <= org.mutationsFromStart
      org.color += 1
      if org.color > Dots.MAX_ORG_COLOR org.color = 1 end
    end
  end
  #
  # Adds one line of code into existing code blocks including all
  # custom function bodies and their blocks. It shouldn't add function
  # or function call inside other function excepts main one.
  # @param cfg Global configuration type
  # @param org Organism we are working with
  # @param pos Adding code position
  # @param cmd Command we have to add
  # @return {Bool} true means that add mutation was occured, false
  # that there where no add or adding was skipped.
  #
  function _onAdd(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos, cmd::Code.CodePart)
    @posCorrect(org, pos, cmd)
    local block::Creature.Block = org.funcs[pos.fnIdx].blocks[pos.blockIdx]
    #
    # We may add a code only after variables/functions declaration
    #
    if pos.lineIdx < block.defIndex return false end
    local exp::Expr = cmd.fn(cfg, org, pos)
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
    insert!(block.expr.args, cmd.fn === Code.fn || cmd.fn === Code.var ? 1 : pos.lineIdx, exp)
    org.codeSize += 1

    true
  end
  #
  # Makes one big change in a code of main and custom functions. Big
  # change means changing one line. It's possible to skip changing.
  # @param cfg Global configuration type
  # @param org Organism we are working with
  # @param pos Changing code position
  # @param cmd Command we have change to
  # @return {Bool} true means that there were a change, false
  # that there were no change or change was skipped.
  #
  function _onChange(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos, cmd::Code.CodePart)
    @posCorrect(org, pos, cmd)
    local block::Creature.Block = org.funcs[pos.fnIdx].blocks[pos.blockIdx]
    #
    # We may add a code only after variables/functions declaration
    #
    if pos.lineIdx < block.defIndex return false end
    local lines::Array{Any, 1} = block.expr.args
    local len::Int = length(lines)
    local exp::Expr
    #
    # It's impossible to get a command or no lines to change
    #
    if len < 1 ||
       pos.lineIdx >= len ||
       lines[pos.lineIdx].head === :return ||
       #
       # Sometimes, we may change a line with var or function and this
       # change will be after other non declarative(var/func) lines. So
       # this is how we break the rule vars/funcs declaration at the beginning.
       #
       (cmd.fn === Code.fn || cmd.fn === Code.var) && pos.lineIdx > block.defIndex ||
       (exp = cmd.fn(cfg, org, pos)).head === :nothing
      return false
    end
    Code.onRemoveLine(org, pos)
    lines[pos.lineIdx] = exp

    true
  end
  #
  # Removes one code line if possible. It can't remove return
  # operator inside custom functions
  # @param cfg Global configuration type
  # @param org Organism we are working with
  # @param pos Delete code position
  # @param cmd Unused
  # @return {Bool} true means that there were a delete, false
  # that there were no delete or delete was skipped.
  #
  function _onDel(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos, cmd::Code.CodePart)
    local lines::Array{Any, 1} = org.funcs[pos.fnIdx].blocks[pos.blockIdx].expr.args
    local len::Int = length(lines)

    if len < 1 ||
       pos.lineIdx >= len ||
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
  # @param cfg Global configuration type
  # @param org Organism we are working with
  # @param pos Change code position
  # @param cmd Unused
  # @return {Bool} true means that there were a change, false
  # that there were no change or change was skipped.
  # TODO: implement in future
  #
  function _onSmallChange(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos, cmd::Code.CodePart)
    # TODO: AST deep analyzing here!
    # TODO: variables and constants should be used here
    true
  end
  #
  # mutationsOnClonePercent property mutation handler. It changes this
  # property randomly. 0 means disable property.
  # @param cfg Global configuration type
  # @param org Organism we are working with
  # @param pos Unused
  # @param cmd Unused
  #
  function _onClone(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos, cmd::Code.CodePart)
    org.mutationsOnClonePercent = rand(Float64) * 100.0
    true
  end
  #
  # mutationPeriod property mutation handler. It changes this
  # property randomly. 0 means disable property.
  # @param cfg Global configuration type
  # @param org Organism we are working with
  # @param pos Unused
  # @param cmd Unused
  #
  function _onPeriod(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos, cmd::Code.CodePart)
    org.mutationPeriod = Helper.fastZRand(cfg.ORGANISM_MAX_MUTATION_PERIOD)
    true
  end
  #
  # mutationPercent property mutation handler. It changes this
  # property randomly. 0 means disable property.
  # @param cfg Global configuration type
  # @param org Organism we are working with
  # @param pos Unused
  # @param cmd Unused
  #
  function _onAmount(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos, cmd::Code.CodePart)
    org.mutationPercent = rand(Float64) * 100.0
    true
  end
  #
  # Mutates "mutation probability" array
  # @param cfg Global configuration type
  # @param org Organism we are working with
  # @param pos Unused
  # @param cmd Unused
  #
  function _onProbs(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos, cmd::Code.CodePart)
    local probIndex = Helper.fastRand(length(org.mutationProbabilities))
    org.mutationProbabilities[probIndex] = Helper.fastZRand(cfg.ORGANISM_MUTATION_PROBABILITY_MAX_VALUE)
    true
  end
  #
  # Mutates "clone energy percent" value
  # @param cfg Global configuration type
  # @param org Organism we are working with
  # @param pos Unused
  # @param cmd Unused
  #
  function _onCloneEnergyPercent(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos, cmd::Code.CodePart)
    org.cloneEnergyPercent = Helper.fastRand(100)
    true
  end
  #
  # All available functions for mutation types: change, add, del,...
  #
  const _MUTATION_TYPES = [
    _onAdd, _onChange, _onDel, _onSmallChange, _onClone, _onPeriod, _onAmount, _onProbs, _onCloneEnergyPercent
  ]
  #
  # "Empty" position. Means no position. Is used only like a stub for
  # functions, which don't need code position
  #
  const _posStub = Helper.CodePos(0,0,0)
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
 #    " String "," UTF8String "," ByteString "," Array "," BitArray "," Range ",
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
