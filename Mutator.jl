#
# The purpose of this module is in mutation process. In real nature,
# organisms have DNA inside all cells. This DNA may be mutated during copy.
# In most cases mutations add errors and garbage to DNA. But in very small
# cases, they add new abilities... In our case DNA is a organism's script
# on Julia language. Like with DNA, it changes this script. Every change or 
# mutation is a small add, change or remove operation on script line. It's 
# impossible to mutate the script with syntax error. But it's possible to 
# create logical errors. For example it's possible to have stack overflow. 
# This is normal situation. An exception in this case will occure and 
# organism will lost some energy. Main method here is called mutate(). It 
# makes one change/add/remove operation with script. It works in a simple 
# way:
#
#   1. Finds random block of code in Script.Code.blocks array
#   2. Finds one line in block
#   2. Chooses one operation (add, remove, change)
#   3. apply operation to this line
#
# So, all you need to do is call mutate(script, probabilities). Second 
# argument is a probabilities array. It sets probabilities for add, remove,
# and change operations. For example: [3,2,1] means that mutator will add(3)
# new operand more often, then delete(1) or change(2).
#
# There are many organisms in our virtual world. So, we have to have an
# ability to switch between them. For this, Mutator adds produce() calls
# in every block. In our case: for, if, else, function.
# This module uses special expression for describing operands. For example:
#     
#    var = [sign]{const|var} [op [sign]{const|var}]
#
# It means:
#    
#     var   - Variable
#     sign  - One of possible signs. See _sign for details
#     const - constant. e.g.: 34 or 0
#     op    - operator. e.g.: +,-,^ and so on
#     []    - optional expression
#     {|}   - one value should be choosed
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
#     creature = Organism.create()
#     Mutator.mutate(creature.script, [3,2,1])
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
# OPT : think about moving block related and func related function in separate
# OPT : modules
#
module Mutator
  export mutate

  import Script
  import Exceptions
  # TODO: remove this module
  using  Debug

  #
  # Record for variable or number. Is used in _findVars() function
  #
  type VarOrNum
    #
    # Expression where variable or number was found
    #
    expr::Expr
    #
    # Index of variable or number within expression
    #
    index::Uint
    #
    # true - var, false - num
    #
    var::Bool
  end

  #
  # Do one random mutation of script. It may be: add, remove or change.
  # Depending on probability (prob argument) it makes a desicion about
  # type of operation (add, del, change) and modifies script (code
  # parameter).
  # @param code Organism's script we have to mutate
  # @param prob Strategy of mutating. See Config.mutator["addDelChange"] 
  # for details.
  #
  function mutate(code::Script.Code, prob::Array{Int})
    #
    # This code calculates index. This index is used for choosing between 
    # [add, remove, change] operation. 1 - add, 2 - remove, 3 - change
    #
    index = _getProbIndex(prob)
    if index === 1      # add
      _addCb[rand(1:length(_addCb))](code)
    elseif index === 2  # change
      _processLine(code, _changeCb)
    else                # delete
      _processLine(code, _delCb)
    end
  end
  #
  # Adds variable into the random block within the script. General syntax:
  #
  #   var = {[sign]{const|var}|funcXXX([args])} [op [sign]{const|var}]
  #
  # This syntax contains three avaialble types of assign: short, mid and long.
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
  #   var1 = 3            # short form
  #   var2 = ~var1        # mid form
  #   var2 = -var2 * ~34  # full form
  #
  # @param code Script of some particular organism, we 
  # have to mutate (in this case, add new variable).
  #
  function _addVar(code::Script.Code)
    block  = _getRandBlock(code)
    ex     = _getVarOrNum(block, false)
    newVar = _getNewOrLocalVar(block, code)
    #
    # If true, then "ex" obtains full form:
    # var = [sign]{const|var} [op [sign]{const|var}]
    #
    if Helper.randTrue()
      ex = Expr(:call, _getOperation(), ex, _getVarOrNum(block, false))
    #
    # If true, then "ex" obtains this form: var = funcXXX(args)
    #
    elseif Helper.randTrue() && length(code.funcs) > 0
      ex = _createFuncCall(code, block)
    end
    _addExpr(block, Expr(:(=), newVar, ex))
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
    block    = _getRandBlock(code)
    newVar   = _getNewVar(code)
    newBody  = Expr(:block,)
    newFor   = Expr(:for, Expr(:(=), newVar, Expr(:(:), _getVarOrNum(block), _getVarOrNum(block))), newBody)
    newBlock = _createBlock(code, block, newBody, [newVar])

    _addExpr(block, newFor)
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
    block    = _getRandBlock(code)
    vars     = block.vars
    ifParams = [:if, Expr(:comparison, _getVarOrNum(block), _getCondition(), _getVarOrNum(block)), Expr(:block,)]
    #
    # else block is optional
    #
    if Helper.randTrue()
      body = Expr(:block,)
      push!(ifParams, body)
      _createBlock(code, block, body, vars)
    end

    _createBlock(code, block, ifParams[3], vars)
    _addExpr(block, apply(Expr, ifParams))
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
    newFunc   = _getNewFunc(code)
    func      = [:call, newFunc]
    params    = rand(0:code.funcMaxArgs)
    funcArgs  = Var[]
    vars      = (Symbol)[]
    #
    # Here we obtain function raguments list
    #
    for p = 1:params
      arg = _getNewVar(code)
      push!(funcArgs, Var(string(arg), Int))
      push!(func, arg)
      push!(vars, arg)
    end
    _addFunc(code, string(newFunc), funcArgs)
    _addExpr(code.fnBlock, Expr(:function, apply(Expr, func), newBlock))
    _createBlock(code, code.fnBlock, newBlock, vars)
  end
  #
  # Works in two steps: first, it finds random block. Second - it finds random 
  # line in this block. Depending of line type (e.g. var assignment, if operator, 
  # function call,...) it calls special callback function. Callback functions
  # should be in this order:
  #
  #     [cbVar, cbFor, cbIf, cbFunc, cbFuncCall]
  #
  # Every callback function will be called with two arguments: 
  #
  #     block::Script.Block, line::Expr, index::Uint
  #
  # @param code Script of particular organism we have to mutate
  # @param cbs Callback functions for every type of operator
  #
  function _processLine(code::Script.Code, cbs::Array{Function})
    if _isEmpty(code) return nothing end  # No code
    block = _getRandBlock(code)
    if _isEmpty(block) return nothing end # No lines in block
    line, index = _getRandLine(block)
    if _isEmpty(line) return nothing end  # Empty line
    head = line.head

    if head === :call && line.args[1] === :produce
      return nothing                   # skip produce() call
    elseif head === :function
      cbs[4](code, block, line, index) # function funcXXX(args)...end
    elseif head == :if
      cbs[3](code, block, line, index) # if...end
    elseif head == :for
      cbs[2](code, block, line, index) # for varXXX = 1:XXX...end
    elseif head === :(=)
      cbs[1](code, block, line, index) # varXXX = {varXXX|number|funcXXX([args])}[ op {varXXX|number}]
    end
  end
  #
  # This function changes code line with variable assignment:
  # 
  #   var = [sign]{const|var} [op [sign]{const|var}]
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
  function _changeVar(code::Script.Code, block::Script.Block, line::Expr, index::Uint)
    vars = VarOrNum[]
    #
    # We can't change first variable, because it may cause an errors.
    # This variable me be used later in code, so we can't remove it.
    # 2 means - skip first variable: varXXX = ...
    #
    _findVars(vars, line, uint(2))
    
    v = vars[rand(1:length(vars))]
    if (v.var)                                        # We may change it to variable or number
      #
      # If true and line has simple forms like: var = num|var, 
      # then line will be changed to: var = funcXXX(args)
      #
      if Helper.randTrue() && typeof(line.args[2]) !== Expr
        #
        # var = var|num -> var = funcXXX([args])
        #
        if Helper.randTrue()
          v.expr.args[v.index] = _createFuncCall(code, block)
        else
          v.expr.args[v.index] = _getVarOrNum(block)
        end
      else
        #
        # This is function call like this: var = funcXXX([args])
        #
        if typeof(line.args[2]) === Expr && findfirst(block.vars, line.args[2].args[1]) === 0
          #
          # Changes one function argument
          #
          if length(line.args[2].args) > 1
            line.args[2].args[rand(2:length(line.args[2].args))] = _getVarOrNum(block)
          #
          # function without arguments. Changes function name
          #
          else
           v.expr.args[v.index] = _createFuncCall(code, block)
          end
        else
          v.expr.args[v.index] = _getVarOrNum(block)
        end
      end
    elseif findfirst(_sign, v.expr.args[v.index]) > 0 # This is a sign (+, -, ~)
      v.expr.args[v.index] = _sign[rand(1:length(_sign))]
    else                                              # This is an operator (+,-,/,$,^,...)
      v.expr.args[v.index] = _getOperation()
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
  function _changeFor(code::Script.Code, block::Script.Block, line::Expr, index::Uint)
    v = _getVarOrNum(block)
    line.args[1].args[2].args[Helper.randTrue() ? 1 : 2] = (v === line.args[1].args[1] ? _getNum(true) : v)
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
  function _changeIf(code::Script.Code, block::Script.Block, line::Expr, index::Uint)
    #
    # 2 - condition, 1,3 - variables or numbers
    #
    idx = rand(1:3)
    line.args[1].args[idx] = (idx === 2 ? _getCondition() : _getVarOrNum(block))
  end
  #
  # Removes one line of code with index in specified block.
  # @param code  Organism's code
  # @param {Dict} block Current block of code 
  # @param {Expr} line  Line with variables to change
  # @param {Uint} index Index of "line" in "block"
  #
  # TODO: We have to check if current var/func has no dependencies,
  # TODO: only in this case we may remove it.
  # TODO: We may remove line if it:
  # TODO:   if, for, short funccall
  # TODO: if it's var assign or full func call, then we have to 
  #
  function _delLine(code::Script.Code, block::Script.Block, line::Expr, index::Uint)
    #splice!(block["block"].args, index)
  end
  #
  # Removes variable assigment line in format:
  #
  #   var = {[sign]{const|var}|funcXXX([args])} [op [sign]{const|var}]
  # 
  # It's possible to obtain an error after remove, because removed var
  # may be used somewhere in code below or above. It's normal, because 
  # sometimes change operation may fix this error.
  #
  # @param code  Organism's code
  # @param {Dict} block Current block of code 
  # @param {Expr} line  Line with variables to change
  # @param {Uint} index Index of "line" in "block"
  #
  function _delVar(code::Script.Code, block::Script.Block, line::Expr, index::Uint)
    _removeVar(block, block.block.args[index].args[1])
    splice!(block.block.args, index)
  end
  #
  # @param code  Organism's code
  # @param {Dict} block Current block of code 
  # @param {Expr} line  Line with variables to change
  # @param {Uint} index Index of "line" in "block"
  #
  function _delFor(code::Script.Code, block::Script.Block, line::Expr, index::Uint)
    splice!(block.block.args, index)
    _removeBlock(code, block)
  end
  #
  # It calculates probability index from variable amount of components.
  # Let's imagine we have three actions: one, two and three. We want 
  # these actions to be called randomly, but with different probabilities.
  # For example it may be [3,2,1]. It means that one should be called
  # in half cases, two in 1/3 cases and three in 1/6 cases. Probabilities
  # should be greated then -1.
  # @param {Array{Int}} prob Probabilities array. e.g.: [3,2,1] or [1,3]
  # @return {Int}
  #
  function _getProbIndex(prob::Array{Int})
    if length(prob) < 1 throw(UserException("Invalid parameter prob: $prob. Array with at least one element expected.")) end

    num = rand(1:sum(prob))
    s   = 0
    i   = 1

    for i = 1:length(prob)
      if num <= (s += prob[i]) break end
    end

    i
  end
  #
  # Parses expression recursively and collects all variables and numbers
  # into "vars" map. Every variable or number is a record in vars argument.
  # Example:
  #
  #     VarOrNum(expr, 1, true)
  #
  # This line means that expr.args[1] contains variable in expr.args[1].
  # @param vars Container for variables: [VarOrNum(expr, 1, true),...]
  # @param parent Expression where we should search for variables/numbers
  # @param index Index of operand in expr, where we should start search
  #
  function _findVars(vars::Array{VarOrNum}, parent::Expr, index::Uint)
    expr = parent.args[index]
    #
    # "var"=>true means that current operand is a variable or a number const
    #
    if typeof(expr) !== Expr
      push!(vars, VarOrNum(parent, index, true)
      return nothing
    end
    for i = 1:length(expr.args)
      if typeof(expr.args[i]) === Expr
        _findVars(vars, expr, i)
      elseif typeof(expr.args[i]) === Symbol
        push!(vars, VarOrNum(expr, i, i!==1))
      else
        push!(vars, VarOrNum(expr, i, true))
      end
    end
  end
  #
  # Removes variable "v" from block "block".
  # @param block Current code block
  # @param v Variable to remove
  #
  function _removeVar(block::Script.Block, v::Symbol)
    splice!(block.vars, findfirst(block.vars, v))
  end
  #
  # Removes block "block" from code "code".
  # @param code Code
  # @param block Block to remove
  #
  function _removeBlock(code::Script.Code, block::Script.Block)
    splice!(code.blocks, findfirst(code.blocks, block))
  end
  #
  # Generates new variable symbol.
  # @param  {Script.Code} code Script of current organism.
  # @return {Symbol} New symbol in format: "varXXX", where XXX - Uint
  #
  function _getNewVar(code::Script.Code)
    symbol("var$(code.vIndex = code.vIndex + 1)")
  end
  #
  # Generates new function symbol.
  # @param  {Script.Code} code Script of current organism.
  # @return {Symbol} New symbol in format: "funcXXX", where XXX - Uint
  #
  function _getNewFunc(code::Script.Code)
    symbol("func$(code.fIndex = code.fIndex + 1)")
  end
  #
  # Returns an expresion for variable or a number in format: [sign]{var|const}
  # @param  block  Block, with variables array
  # @param  simple true if method should return only {var|const} without sign
  # @return {Expr}
  #
  function _getVarOrNum(block::Block, simple=true)
    vars = block.vars
    if (length(vars) === 0) return _getNum(simple) end
    v = vars[rand(1:length(vars))]
    if Helper.randTrue() 
      if simple 
        v
      else
        Expr(:call, _sign[rand(1:length(_sign))], v)
      end
    else
      _getNum(simple)
    end
  end
  #
  # Returns expression for number in format: [sign]const
  # @param  {Bool} true if it should return only const without sign
  # @return {Expr}
  #
  function _getNum(simple=false)
    num = rand(0:typemax(Int))
    simple ? num : Expr(:call, _sign[rand(1:length(_sign))], num)
  end
  #
  # Returns random block from all available
  # @return {Dict{ASCIIString, Any}}
  #
  function _getRandBlock(code::Script.Code)
    code.blocks[rand(1:length(code.blocks))]
  end
  #
  # Returns new or existing variable is specified vars scope. Returns 
  # new variable in case when Helper.randTrue() returns true. In case
  # of new variable adds it into the block.
  # @param block Block with all available variables
  # @param code Code of specified organism
  # @return {Symbol}
  #
  function _getNewOrLocalVar(block::Block, code::Script.Code)
    vars = block.vars
    if Helper.randTrue() && length(vars) > 0 
      return vars[rand(1:length(vars))]
    end
    newVar = _getNewVar(code)
    _addScopeVar(block, newVar)
    newVar
  end
  #
  # Returns random function from all avaialble
  # @return {Script.Func}
  #
  function _getFunc()
    code.funcs[rand(1:length(code.funcs))]
  end
  #
  # Returns random operation. See "_op" for details. For example:
  #
  #     var = var + var
  #
  # In this example "+" is an operation
  # @return {Function}
  #
  function _getOperation()
    _op[rand(1:length(_op))]
  end
  #
  # Returns random condition. See "_cond" for details. For example:
  #
  #     if var < var
  #
  # In this example "<" is a condition
  # @return {Function}
  #
  function _getCondition()
    _cond[rand(1:length(_cond))
  end
  #
  # Adds expression into the block
  # @param block Block we insert to
  # @param expr Expression to insert
  #
  function _addExpr(block::Block, expr::Expr)
    push!(block.block.args, expr)
  end
  #
  # Adds new cusom function into the functions map
  #
  function _addFunc(code::Script.Code, name::ASCIIString, args::Array{Var})
    push!(code.funcs, Script.Func(name, args))
  end
  #
  # Adds expression into another expression
  # @param dest Destination expression
  # @param src  Source expression
  #
  function _addExpr(dest::Expr, src::Expr)
    push!(dest.args, expr)
  end
  #
  # Adds variable "var" into the block "block".
  # @param block Block
  # @param var Variable we have to insert
  #
  function _addScopeVar(block::Block, var::Symbol)
    push!(block.vars, newVar)
  end
  #
  # Creates new block and adds it into blocks array.
  # @param code Source code, where new block will be added
  # @param parent Parent block
  # @param body Reference to Julia block(quote)
  # @return {Block} New block
  #
  function _createBlock(code::Script.Code, parent::Block, body::Expr, vars::Array{Symbol})
    block = Block(parent, vars, body)
    push!(code.blocks, block)
    _addExpr(block, Expr(:call, :produce))
    block
  end
  #
  # Creates function call without variable assign at the beginning and
  # returns it. It choose one functions from available list (Script.Code.funcs)
  # and creates random argument values/variables. Example:
  #
  #   funcXXX([args])
  #
  # @param code Organism's code
  # @param block Current code block
  # @return {Expr}
  #
  function _createFuncCall(code::Script.Code, block::Script.Block)
    if (length(code.funcs) < 1) return nothing end
    func = _getFunc()
    args = Any[:call, symbol(func.name)]
    # TODO: possible problem here. we don't check var type.
    # TODO: we assume, that all vars are Int
    for i = 1:length(func.args) push!(args, _getVarOrNum(block)) end

    apply(Expr, args)
  end
  #
  # Returns true if code is empty. Empty means, no code
  # blocks or one code block, but without lines inside.
  # @param code Code to check
  # @return {Bool}
  #
  function _isEmpty(code::Script.Code)
    length(code.blocks) === 0 || length(code.blocks) === 1 && length(code.blocks[1].block.args) === 0
  end
  #
  # Checks if code block has no lines inside
  # @param block Code block to check
  # @return {Bool}
  #
  function _isEmpty(block::Script.Block)
    length(block.block.args) === 0
  end
  #
  # Returns true if code line is empty. Empty means
  # code line without operator. For example, comment.
  # @param line Line to check
  # @return {Bool}
  #
  function _isEmpty(line::Expr)
    typeof(line) !== Expr
  end
  #
  # Returns random line and it's index within block
  # @return {(Expr, Uint)}
  #
  function _getRandLine(block::Script.Block)
    index = uint(rand(1:length(block.block.args)))
    (block.block.args[index], index)
  end
  #
  # {Array} Available signs. Is used before numeric variables. e.g.: -x or ~y.
  # ! operator should be here.
  #
  const _sign     = [:+, :-, :~]
  #
  #
  #
  const _cond     = [:<, :>, :(==), :(!==), :<=, :>=]
  #
  # {Array} Available operators. Is used between numeric variables and constants
  #
  const _op       = [+, -, \, *, $, |, &, ^, %, >>>, >>, <<]
  #
  # {Array{Array{Function}}} Available operation for script lines. This is:
  # adding, removing and changing lines.
  #
  const _addCb    = [_addVar,    _addFor,    _addIf,    _addFunc,  ]
  const _changeCb = [_changeVar, _changeFor, _changeIf, ()->nothing]
  const _delCb    = [_delVar,    _delFor,    _delLine,   _delLine, ]
end