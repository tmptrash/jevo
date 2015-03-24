#
# This module changes organism's script. Every change or mutation is a small
# add, change or remove operation on script. Mutation does by Julia language 
# rules. It's impossible to mutate the script with syntax error. But it's 
# possible to create logical errors. For example it's possible to have 
# stack overflow. This is normal situation. An exception in this case will
# occure and organism will lost some energy. Main method here is called
# mutate(). It makes one change/add/remove operation with script. It works
# in a simple way:
#
#   1. Finds random block of code in Script.Code.blocks array
#   2. Choose one operation (add,remove,change)
#   3. apply operation
#
# TODO: every peivate method should have standart description of operation it
# TODO: works with. e.g.: if {var|const} op {var|const} end
# TODO: usage...
# TODO: amount of add,delete and change mutations depend on script size
# TODO: describe _code. Code structure should be described in Script.Code type
# TODO: describe [], {|}, var, op, sign, const keywords
# TODO: add types to increase the speed
# TODO: main while() loop musn't be removed
# TODO: think about functions copy (like gene copy)
#
module Mutator
  export mutate

  import Script
  # TODO: remove this module
  using  Debug

  #
  # Do one random mutation of script. It may be add, remove or change.
  # @param  {Script.Code} Organism's script we have to mutate
  # @return {Bool} true means, that mutation has done, false - some mistake
  #
  function mutate(code::Script.Code)
    # TODO: here we should choose add, remove or change operation according
    # TODO: to percentage (e.g. add:remove:change=60%:10%:30%)



    true
  end

  #
  # Adds variable into the random block within the script. Format:
  #
  #   var = [sign]{const|var} [op [sign]{const|var}]
  #
  # Added variable will be added to _blocks[xxx]["vars"] array. _blocks
  # field must contain at least one block. Examples:
  #
  #   var1 = 3
  #   var2 = ~var1
  #   var3 = -var2 * ~34
  #
  # @param {Script.Code} code Script of some particular organism, we 
  # have to mutate (ad new variable).
  #
  function _addVar(code::Script.Code)
    block  = code.blocks[rand(1:length(code.blocks))]
    vars   = block["vars"]
    ex     = _getVarOrNum(vars)
    newVar = _getNewVar(code)

    if (_randTrue())
      ex = Expr(:call, _op[rand(1:length(_op))], ex, _getVarOrNum(vars))
    end
    push!(vars, newVar)
    push!(block["block"].args, Expr(:(=), newVar, ex))
  end
  #
  # Adds new "for" keyword into the random block within the script. Format:
  #
  #   for var = {var|const}:{var|const};end
  #
  # "for" operator adds new block into existing one. This block is between
  # "for" and "end" operators. Also, this block contains it's variables scope.
  # Examples:
  #
  #   for i = 2:3;end
  #   for i = 7:k;end
  #   for i = m:k;end
  #
  # @param {Script.Code} code Script of particular organism we have to mutate
  # (add new for operator).
  #
  function _addFor(code::Script.Code)
    block   = code.blocks[rand(1:length(code.blocks))]
    newVar  = _getNewVar(code)
    newBody = Expr(:block,)
    newFor  = Expr(:for, Expr(:(=), newVar, Expr(:(:), _getVarOrNum(block["vars"], true), _getVarOrNum(block["vars"], true))), newBody)

    push!(block["block"].args, newFor)
    push!(code.blocks, ["parent"=>block, "vars"=>[newVar], "block"=>newBody]);
  end
  #
  # Adds new if operator into random block within a script. Format:
  #
  #   if {var|const} Cond {var|const};else;end
  #
  # "if" operator adds new block into existing one. But, this block doesn't
  # contain variables scope. It uses parent's scope.
  # Examples:
  #
  #   if 1<2;end
  #   if i<3;else;end
  #   if i>k;end
  #
  # @param {Script.Code} code Script of particulat organism, we have to mutate
  # (add new if operator).
  #
  function _addIf(code::Script.Code)
    block    = code.blocks[rand(1:length(code.blocks))]
    vars     = block["vars"]
    ifParams = [:if, Expr(:comparison, _getVarOrNum(vars, true), _cond[rand(1:length(_cond))], _getVarOrNum(vars, true)), Expr(:block,)]
    #
    # else block is optional
    #
    if _randTrue()
      push!(ifParams, Expr(:block,))
      push!(code.blocks, ["parent"=>block, "vars"=>vars, "block"=>ifParams[4]])
    end

    push!(block["block"].args, apply(Expr, ifParams))
    push!(code.blocks, ["parent"=>block, "vars"=>vars, "block"=>ifParams[3]])
  end
  # TODO: describe function creation details
  # Adds new named function into the main block within script. Format:
  #
  #   function XXX(args);end
  #
  # "function" operator adds new block into existing one. This block is in a 
  # body of the function. Also, this block contains it's own variables scope.
  # It's important, that all functions will leave in main block only.
  # Example:
  #
  #   function func1();end
  #
  # @param {Script.Code} code Script of particular organism we have to mutate
  # (add new function).
  #
  function _addFunc(code::Script.Code)
    block     = code.code.args[2].args[2]
    newBlock  = Expr(:block,)
    newFunc   = _getNewFunc(code)
    func      = [:call, newFunc]
    maxParams = rand(0:code.funcMaxArgs)
    funcArgs  = (Dict{ASCIIString, Any})[]
    vars      = (Symbol)[]

    for i = 1:maxParams
      arg = _getNewVar(code)
      push!(funcArgs, ["name"=>string(arg), "type"=>Int])
      push!(func, arg)
      push!(vars, arg)
    end
    push!(code.funcs, ["name"=>string(newFunc), "args"=>funcArgs])
    push!(block.args, Expr(:function, apply(Expr, func), newBlock))
    push!(code.blocks, ["parent"=>block, "vars"=>vars, "block"=>newBlock])
  end
  #
  # Adds new function call into the random block within script. Format:
  #
  #   [var=]funcXXX([args])
  #
  # This call doesn't add new code block. It may return a value. So, if 
  # current block contains variables one of them will be set into funcation
  # return value. There is no difference between embedded and generated
  # functions. So it's possible to call clone() or funcXXX(). Example:
  #
  #     var3 = func1(var1, 12)
  #     clone()
  #     var1 = grabEnergyLeft(var2)
  #
  # @param {Script.Code} code Script of particular organism we have to mutate
  #
  function _addFuncCall(code::Script.Code)
    block  = code.blocks[rand(1:length(code.blocks))]
    vars   = block["vars"]
    func   = code.funcs[rand(1:length(code.funcs))]
    args   = Any[:call, symbol(func["name"])]
    varLen = length(vars)

    # TODO: possible problem here. we don't check var type.
    # TODO: we assume, that all vars are Int
    for i = 1:length(func["args"]) push!(args, _getVarOrNum(vars, true)) end
    #
    # If no variables in current block, just call the function and ignore return
    #
    push!(block["block"].args, varLen > 0 ? Expr(:(=), vars[rand(1:varLen)], apply(Expr, args)) : apply(Expr, args))
  end
  #
  # General change function. It calls special function (like _changeVar() or
  # _changeIf()) inside depending on current operator. First, it find random
  # block. Second - it find random line in this block. Depending of line type
  # (e.g. var assignment, if operator, function call,...) it calls special
  # change function.
  # @param {Script.Code} code Script of particular organism we have to mutate
  #
  function _changeLine(code::Script.Code)
    #
    # We can't change code, because there is no code at the moment.
    #
    if length(code.blocks) === 0 || length(code.blocks) === 1 && length(code.blocks[1].args) === 0 return nothing end
    block  = code.blocks[rand(1:length(code.blocks))]
    if length(block.args) === 0 return nothing end
    line   = rand(1:length(block.args))

    #
    # Possible operations: funcXXX(args), varXXX = funcXXX(args)
    #
    if line.head === :call || (line.head === :(=) && typeof(line.args[2]) === Expr && typeof(eval(line.args[2].args[1])) === Function)
      _changeFuncCall(line)
    #
    # Possible operations: varXXX = {varXXX|number}[ op {varXXX|number}]
    #
    elseif line.head === :(=)
      _changeVar(block, line)
    #
    # Possible operations: for varXXX = 1:XXX...end
    #
    elseif line.head == :for
      _changeFor(line)
    #
    # Possible operations: if...end
    #
    elseif line.head == :if
      _changeIf(line)
    end
  end
  #
  # TODO: describe how changer works. it desn't increase/decrease
  # TODO: length of line, just change var/number in one place
  # TODO: possible problem with only one supported type Int
  # @param {Dict} block Current block of code 
  # @param {Expr} line  Line with variables to change
  #
  function _changeVar(block, line::Expr)
    #
    # map of variables, numbers and operations for changing
    #
    vars = Dict{ASCIIString, Any}[]
    #
    # First name is always a variable 
    #
    push!(vars, ["expr"=>line, "index"=>1, "var"=>true])
    _parseVars(vars, line, 2)
    #
    # There are three types of change: var, number, operation
    # TODO: describe these ifs
    #
    v = vars[rand(1:length(vars))]
    if (v["var"])
      if v["expr"] === line && v["index"] === 1
        v["expr"].args[1] = block["vars"][rand(1:length(block["vars"]))]
      else
        v["expr"].args[v["index"]] = _getVarOrNum(block["vars"], true)
      end
    elseif findfirst(_sign, v["expr"].args[v["index"]]) > 0
      v["expr"].args[v["index"]] = _sign[rand(1:length(_sign))]
    else
      v["expr"].args[v["index"]] = _op[rand(1:length(_op))]
    end
  end
  #
  # Changes for operator. It's possible to change min or max expression.
  # It's impossible to change variable. For example, we can't change "i"
  # in this loop:
  #
  #     for i = 1:k;end
  #
  # It changes only one variable|number per one call.
  # @param {Dict} block Current block of code 
  # @param {Expr} line  Line with for operator to change
  #
  function _changeFor(block, line::Expr)
    v = _getVarOrNum(block["vars"], true)
    line.args[1].args[2].args[_randTrue() ? 1 : 2] = (v === line.args[1].args[1] ? _getNum(true) : v)
  end
  #
  # TODO:
  # @param {Dict} block Current block of code 
  # @param {Expr} line  Line with for operator to change
  #
  @debug function _changeIf(block, line::Expr)
    @bp
    #
    # 2 - condition, 1,3 - variables or numbers
    #
    index = _randTrue() ? 2 : (_randTrue() ? 1: 3)
    line.args[1].args[index] = (index === 2 ? _cond[rand(1:length(_cond))] : _getVarOrNum(block["vars"], true))
  end
  function _changeFuncCall(line)
  end
  #
  #
  #
  function _delVar()
  end
  function _delFor()
  end
  function _delIf()
  end
  function _delFunc()
  end
  function _delFuncCall()
  end

  #
  # Parses expression recursively and collects all variables and numbers
  # into "vars" map. Every varible or number is a record in vars. Example:
  #
  #     ["expr"=>expr, "index"=>1]
  #
  # This line means that expr.args[1] contains variable or number
  # @params {Array} vars Container for variables: [["expr"=>Expr, "index"=>Number],...]
  # TODO:
  # TODO:
  #
  function _parseVars(vars::Array{Dict{ASCIIString, Any}}, parent::Expr, index)
    expr = parent.args[index]

    if typeof(expr) !== Expr
      push!(vars, ["expr"=>parent, "index"=>index, "var"=>true])
      return nothing
    end
    for i = 1:length(expr.args)
      if typeof(expr.args[i]) === Expr
        _parseVars(vars, expr, i)
      elseif typeof(expr.args[i]) === Symbol
        push!(vars, ["expr"=>expr, "index"=>i, "var"=>i!==1])
      else
        push!(vars, ["expr"=>expr, "index"=>i, "var"=>true])
      end
    end
  end
  #
  # Chooses (returns) true or false randomly. Is used to choose between two
  # variants of something. For example + or - sign.
  # @return {Bool}
  #
  function _randTrue()
    rand(1:2) === 1
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
  # @param  {Expr} vars   Variables array in current block
  # @param  {Bool} simple true if method should return only {var|const} without sign
  # @return {Expr}
  #
  function _getVarOrNum(vars, simple=false)
    if (length(vars) === 0) return _getNum(simple) end
    v = vars[rand(1:length(vars))]
    if _randTrue() 
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
  # TODO:
  #
  const _add    = [_addVar,    _addFor,    _addIf,    _addFunc,    _addFuncCall   ]
  const _change = [_changeVar, _changeFor, _changeIf,              _changeFuncCall]
  const _del    = [_delVar,    _delFor,    _delIf,    _delFunc,    _delFuncCall   ]
end