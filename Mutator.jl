#
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
#     organism = Creature.create()            # creates new organism
#     Mutator.mutate(organism.script, [3,2])  # ads one mutation to his code
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
  export mutate

  import Script
  import Exceptions
  import Helper
  import Config

  #
  # Do one random mutation of script. It may be: add or change.
  # Depending on probability (prob argument) it makes a desicion about
  # type of operation (add, change) and modifies script (code
  # parameter).
  # @param code Organism's script we have to mutate
  # @param prob Strategy of mutating. See Config.mutator["addChange"] 
  # for details.
  #
  function mutate(code::Script.Code, prob::Array{Int})
    #
    # This code calculates index. This index is used for choosing between 
    # [add, change] operation. 1 - add, 2 - change
    #
    index = Helper.getProbIndex(prob)
    if index === 1      # add
      _addCb[rand(1:length(_addCb))](code)
    elseif index === 2  # change
      _change(code)
    end
  end
  # TODO: Check if it's possible to obtain something different from number
  # TODO: on function return. It's possible to get an error in this case.
  #
  # Adds variable into the random block within the script. General syntax:
  #
  #   var = {[sign]{const|var} [op [sign]{const|var}]|func([args])}
  #
  # This syntax contains two avaialble types of assign: short, mid and long.
  # See examples below for details. Let's analyze real example:
  #
  #   Expr: (:(=), :var1, (:call, :+, (:call, :-, :var2), (:call, :~, 123)))
  #   Real: var1 = -var2 + ~123
  #
  # First and second lines are the same, but in different forms. First one
  # is a final expression we have to obtain in _addVar() function. Second is
  # a same expression, but in Julia language.
  # First(new) variable will be added to code.blocks[xxx]["vars"] array. 
  # code.blocks field must contain at least one block. Details about
  # code.blocks see in description of Script.Code.blocks field. Examples:
  #
  #   var1 = 3               # short form
  #   var1 = funcXXX([args]) # short form
  #   var2 = ~var1           # mid form
  #   var2 = -var2 * ~34     # full form
  #
  # @param code Script of some particular organism, we 
  # have to mutate (in this case, add new variable).
  #
  function _addVar(code::Script.Code)
    block  = Script.getRandBlock(code)
    ex     = Script.getVarOrNum(block, false)
    newVar, isNew = Script.getNewOrLocalVar(block, code)
    #
    # If true, then "ex" obtains full form:
    # var = [sign]{const|var} [op [sign]{const|var}]
    #
    if Helper.randTrue()
      ex = Expr(:call, Script.getOperation(), ex, Script.getVarOrNum(block, false))
    #
    # If true, then "ex" obtains this form: var = funcXXX(args)
    #
    elseif Helper.randTrue() && length(code.funcs) > 0
      ex = Script.createFuncCall(code, block)
    end
    Script.addExpr(block, Expr(:(=), newVar, ex))
    #
    # New variable must be added only after new expression will be added,
    # because this new var may be added in this expression. This will cause
    # an error. e.g.: var1 = var1 # var1 is undefined at the moment
    # 
    if isNew Script.addVar(block, newVar) end
  end
  #
  # Adds "for" keyword into the random block within the script. General syntax:
  #
  #   for var = {var|const}:{var|const} end
  #
  # Expression format:
  #
  #   Expr: (:for, (:(=), :var1, (:(:), :var2, 123)), (:block,))
  #   Real: for var1 = var2:123 end
  #
  # "for" operator adds new block into existing one. This block is between
  # "for" and "end" operators. Also, this block contains it's variables scope.
  # "var" (loop variable) will be first in this scope. Examples:
  #
  #   for i = 2:3 end
  #   for i = 7:k end
  #   for i = m:k end
  #
  # @param code Script of particular organism we have to mutate
  # (add new for operator).
  #
  function _addFor(code::Script.Code)
    block    = Script.getRandBlock(code)
    newVar   = Script.getNewVar(code)
    newBody  = Expr(:block,)
    newFor   = Expr(:for, Expr(:(=), newVar, Expr(:(:), Script.getVarOrNum(block), Script.getVarOrNum(block))), newBody)
    newBlock = Script.createBlock(code, block, newBody, [newVar])

    Script.addExpr(block, newFor)
  end
  #
  # Adds new if operator into random block within a script. General syntax:
  #
  #   if {var|const} cond {var|const} else end
  #
  # This syntax contains two available states: short and full. Short version
  # doesn't contain else block. Here is an expression format:
  # 
  #   Expr: (:if, (:comparison, :i, :<, 3), (:block,), (:block,))
  #   Real: if i < 3 else end
  #
  # "if" operator adds new block into existing one. But, this block doesn't
  # contain variables scope. It uses parent's scope. Examples:
  #
  #   if 1<2 end
  #   if i<3 else end
  #   if i>k end
  #
  # @param code Script of particulat organism, we have to mutate
  # (add new if operator).
  #
  function _addIf(code::Script.Code)
    block    = Script.getRandBlock(code)
    vars     = block.vars
    ifParams = [:if, Expr(:comparison, Script.getVarOrNum(block), Script.getCondition(), Script.getVarOrNum(block)), Expr(:block,)]
    #
    # else block is optional
    #
    if Helper.randTrue()
      body = Expr(:block,)
      push!(ifParams, body)
      Script.createBlock(code, block, body, vars)
    end

    Script.createBlock(code, block, ifParams[3], vars)
    Script.addExpr(block, apply(Expr, ifParams))
  end
  # 
  # Adds new named function into the functions block within script. See
  # Script.Block.fnBlock for details. General syntax:
  #
  #   function XXX([args]) end
  #
  # Expression format:
  #
  #   Expr: (:function, (:call, :func1, :var1), (:block,))
  #   Real: function func1(var1) end
  #
  # "function" operator adds new block into existing one. This block is in a 
  # body of the function. Also, this block contains it's own variables scope.
  # It's important, that all functions leave in special separate block. All
  # function's arguments will be used as local(scope) variables. Amount of
  # arguments is specified in Config.mutator["funcMaxArgs"] parameter. Example:
  #
  #   function func1() end
  #   function func2(var1) end
  #
  # @param code Script of particular organism we have to mutate
  # (add new custom function).
  #
  function _addFunc(code::Script.Code)
    newBlock  = Expr(:block,)
    newFunc   = Script.getNewFunc(code)
    func      = [:call, newFunc]
    params    = rand(0:code.funcMaxArgs)
    funcArgs  = Script.Var[]
    vars      = (Symbol)[]
    #
    # Here we obtain function raguments list
    #
    for p = 1:params
      arg = Script.getNewVar(code)
      push!(funcArgs, Script.Var(string(arg), Int))
      push!(func, arg)
      push!(vars, arg)
    end
    Script.addFunc(code, string(newFunc), funcArgs)
    Script.addExpr(code.fnBlock.block, Expr(:function, apply(Expr, func), newBlock))
    Script.createBlock(code, code.fnBlock, newBlock, vars)
  end
  #
  # Works in two steps: first, it finds random block. Second - it finds random 
  # line in this block. Depending of line type (e.g. var assignment, if operator, 
  # function call,...) it calls special callback function. 
  # Every callback function will be called with two arguments: 
  #
  #     block::Script.Block, line::Expr, index::UInt
  #
  # @param code Script of particular organism we have to mutate
  #
  function _change(code::Script.Code)
    if Script.isEmpty(code) return nothing end   # No code
    block = Script.getRandBlock(code)
    if Script.isEmpty(block) return nothing end  # No lines in block
    line, index = Script.getRandLine(block)
    if Script.isEmpty(line) return nothing end   # Empty line
    if line.args[1] === :produce return nothing end
    head = line.head

    if head == :if
      _changeIf(code, block, line, index)        # if...end
    elseif head == :for
      _changeFor(code, block, line, index)       # for varXXX = 1:XXX...end
    elseif head === :(=)
      _changeVar(code, block, line, index)       # varXXX = {varXXX|number|funcXXX([args])}[ op {varXXX|number}]
    end
  end
  #
  # This function changes code line with variable assignment:
  # 
  #   var = {[sign]{const|var} [op [sign]{const|var}]|func([args])}
  # 
  # Expression format:
  #
  #   Expr: (:(=), :var1, (:call, :+, (:call, :-, :var2), (:call, :~, 123)))
  #   Real: var1 = -var2 + ~123
  #
  # There are three elements we may to change here: three vars,
  # one var and two numbers or two vars and one number,... This
  # function just change one of these elements. It also may change
  # "sign" or "op". One call of this function will change only one
  # variable/number/operator/sign.
  #
  # @param code  Organism's code
  # @param block Current block of code
  # @param line  Line with variables to change
  # @param index Index of "line" in "block"
  # 
  function _changeVar(code::Script.Code, block::Script.Block, line::Expr, index::UInt)
    vars = Script.VarOrNum[]
    #
    # We can't change first variable, because it may cause an errors.
    # This variable me be used later in code, so we can't remove it.
    # 2 means - skip first variable: varXXX = ...
    #
    Script.findVars(vars, line, uint(2))
    #
    # We should use == instead === to cast UInt(v.typ) to Int(0,1,...)
    #
    v = vars[rand(1:length(vars))]
    if v.typ == 0                                    # We may change it to variable or number
      v.expr.args[v.index] = Script.getVarOrNum(block)
    elseif v.typ == 1                                # This is an operator (+,-,/,$,^,...)
      v.expr.args[v.index] = Script.getOperation()
    elseif v.typ == 2                                # This is a sign (+, -, ~) before var/num
      v.expr.args[v.index] = Script.getRandSign()
    elseif v.typ == 3                                # Function
      v.expr.args[v.index] = Script.createFuncCall(code, block)
    end
  end
  #
  # Changes "for" operator. It's possible to change only min or max 
  # expression. It's impossible to change variable. For example, we 
  # can't change "i" in this loop:
  #
  #   for i = 1:k end
  # 
  # Because it impacts to all code inside the "for" operator. So,
  # only "1" and "k" may be changed. General syntax: 
  #
  #   for var = {var|const}:{var|const} end
  #
  # Expression format:
  #
  #   Expr: (:for, (:(=), :var1, (:(:), :var2, 123)), (:block,))
  #   Real: for var1 = var2:123 end
  #
  # One call of this function will change only one variable/number.
  #
  # @param code  Organism's code
  # @param block Current block of code 
  # @param line  Line with for operator to change
  # @param index Index of "line" in "block"
  #
  function _changeFor(code::Script.Code, block::Script.Block, line::Expr, index::UInt)
    v = Script.getVarOrNum(block)
    line.args[1].args[2].args[Helper.randTrue() ? 1 : 2] = (v === line.args[1].args[1] ? getNum(true) : v)
  end
  #
  # Change in this case means, changing of operator or 
  # variables. For example we may change "<", "v1" or "v2"
  # in this line:
  #
  #     if v1 < v2...else...end
  #
  # General syntax: 
  #
  #   for var = {var|const}:{var|const} end
  #
  # Expression format:
  #
  #   Expr: (:for, (:(=), :var1, (:(:), :var2, 123)), (:block,))
  #   Real: for var1 = var2:123 end
  #
  # One call of this function makes only one change. It's
  # possible that after mutation line will be the same. Because
  # it may change, for example, condition or var to similar one.
  # @param code  Organism's code
  # @param block Current block of code 
  # @param line  Line with for operator to change
  # @param index Index of "line" in "block"
  #
  function _changeIf(code::Script.Code, block::Script.Block, line::Expr, index::UInt)
    #
    # 2 - condition, 1,3 - variables or numbers
    #
    idx = rand(1:3)
    line.args[1].args[idx] = (idx === 2 ? Script.getCondition() : Script.getVarOrNum(block))
  end

  #
  # Array{Function}} Available operation for script lines. This is:
  # adding, removing and changing lines.
  #
  const _addCb = [_addVar, _addFor, _addIf, _addFunc]
end