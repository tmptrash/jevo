# TODO: update this comment according to new mutations algorithm
# The purpose of this module is in mutation process. In real nature,
# organisms have DNA inside all cells. This DNA may be mutated during copy.
# In most cases mutations add errors and garbage to DNA. But in very small
# cases, they add new abilities... In our case DNA is a organism's script
# on Julia language. Like with DNA, it changes this script. Every change or 
# mutation is a small add or change operation on script line. It's 
# impossible to mutate the script with syntax error. But it's possible to 
# create logical errors. For example it's possible to have stack overflow. 
# This is normal situation. An exception in this case will occure and 
# organism will lost some energy. Main method here is called mutate(). It 
# makes one change/add operation with script. It works in a simple way:
#
#   1. Finds random block of code in Script.Code.blocks array
#   2. Finds one line in block
#   2. Chooses one operation (add, change)
#   3. apply operation to this line
#
# So, all you need to do is call mutate(script, probabilities). Second 
# argument is a probabilities array. It sets probabilities for add, 
# and change operations. For example: [3,2] means that mutator will add(3)
# new operand more often, then change(2).
#
# There are many organisms in our virtual world. So, we have to have an
# ability to switch between them. For this, Mutator adds produce() calls
# in every block. In our case: for, if, else, function.
# This module uses special expression for describing operands. For example:
#     
#    var = {[sign]{const|var} [op [sign]{const|var}]|func([args])}
#
# It means:
#    
#     var   - Variable
#     sign  - One of possible signs. See _sign for details
#     const - constant. e.g.: 34 or 0
#     op    - operator. e.g.: +,-,^ and so on
#     []    - optional expression
#     {|}   - one value should be choosed
#     func  - custom function
#
# Mutator does it's modifications throught expressions. See this link for 
# details: http://julia.readthedocs.org/en/latest/manual/metaprogramming/
# Julia has special type for this. It's called Expr(). Descriptions in this
# module use short syntax for expressions. For example:
#
#     Expr: (:(=), :var1, (:call, :func1))
#     Real: var1 = func1()
#  
# Short, because we don't use Expr before every (...) block. Real (full)
# expression in this case should be:
#
#     ex = Expr(:(=), :var1, Expr(:call, :func1))
#
# This expression may be run in Julia by calling eval(). Like this:
#
#     eval(ex)
# 
# Usage:
#     organism = Creature.create()   # creates new organism
#     Mutator.mutate(organism)       # ads one mutation to his code
#
# @author DeadbraiN
#
# TODO: every private method should have standart description of operation it
# TODO: works with. e.g.: if {var|const} op {var|const} end
# TODO: usage...
# TODO: think about functions copy (like gene copy)
# TODO: Check if we can move some constants to global Config module
#
# OPT : add speed tests before and after optimization
#
module Mutator
  import Config
  import Helper
  import Creature

  export mutate
  #
  # TODO: add description of the method
  # TODO: describe indexes
  #
  function mutate(org::Creature.Organism)
    local pIndex::Int = Helper.getProbIndex(org.mutationProbabilities)
    local len::Int    = org.codeSize
    local i::Int

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
  end
  #
  # TODO:
  #
  const CODE_BLOCKS = [
    # atomic elements
    "_","<",">",".",",","@","!","=","{","}","[","]","(",")","'","\"","?",":","&",
    "*","+","-","%",";","^","|","/","~",":","\$"," ",
    # operators
    "&&","||","\\","+=","-=","!=","*=","/=","^=","%=",".%=","&=","\$=","=>",
    "<<=",">>=",">>>=",">=","<=","==","===","!==",">>","<<",">>>","|=",".%",".!=",
    ".*",".+",".-","./",".<",".>",".<<",".<=",".==",".>=",".>>",".\\",".^",
    # letters
    "0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i",
    "j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",#"A","B",
    #"C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U",
    #"V","W","X","Y","Z",
    # keywords
    "function","for","end","while","if","else","elseif","break","switch","case",
    "otherwise","try","catch","type","typealias","return","true","false","macro",
    "quote","in","abstract","module","baremodule","using","using","continue",
    "ifelse","do","eval","let","finally","throw","bitstype",
    # types
    "Number","Real","BigInt","Integer","UInt","UInt8","UInt16","UInt32","UInt64",
    "UInt128","Int","Int8","Int16","Int32","Int64","Int128","BigFloat","FloatingPoint",
    "Float16","Float32","Float64","Bool","Char","ASCIIString","UTF8String","ByteString",
    "Array","BitArray","Range","Tuple","Symbol","Function","Type","Any","String",
    "Signed","Dict",
    # organism api
    "clone(o);","getEnergy(o);","energyLeft(o);","energyRight(o);","energyUp(o);",
    "energyDown(o);","stepLeft(o);","stepRight(o);","stepUp(o);","stepDown(o);"
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