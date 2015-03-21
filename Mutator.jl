#
# TODO: description...
# TODO: public methods
# TODO: usage...
# TODO: amount of add,delete and change mutations depend on script size
# TODO: describe _code. Code structure should be described in Script.Code type
# TODO: describe [], {|}, var, op, sign, const keywords
# TODO: add types to increase the speed
# TODO: main while() loop musn't be removed
#
module Mutator
  export mutate

  import Script
  # TODO: remove this module
  using  Debug

  #
  # Do one random mutation of script.
  # TODO: describe what is mutation. It's typed (add, delete, change)
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
  # field must contain at least one block.
  # @param {Script.Code} code Script of some particular organism, we 
  # have to mutate (ad new variable).
  # Examples:
  #
  #   var1 = 3
  #   var2 = ~var1
  #   var3 = -var2 * ~34
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
  #   for var = 1:{var|const};end
  #
  # "for" operator adds new block into existing one. This block is between
  # "for" and "end" operators. Also, this block contains it's variables scope.
  # @param {Script.Code} code Script of particular organism we have to mutate
  # (add new for operator).
  # Examples:
  #
  #   for i = 1:3;end
  #   for i = 1:k;end
  #
  function _addFor(code::Script.Code)
    block   = code.blocks[rand(1:length(code.blocks))]
    newVar  = _getNewVar(code)
    newBody = Expr(:block,)
    newFor  = Expr(:for, Expr(:(=), newVar, Expr(:(:), 1, _getVarOrNum(block["vars"], true))), newBody)

    push!(block["block"].args, newFor)
    push!(code.blocks, ["perent"=>block, "vars"=>[newVar], "block"=>newBody]);
  end
  #
  # Adds new if operator into random block within a script. Format:
  #
  #   if {var|const} Cond {var|const};else;end
  #
  # "if" operator adds new block into existing one. But, this block doesn't
  # contain variables scope. It uses parent's scope.
  # @param {Script.Code} code Script of particulat organism, we have to mutate
  # (add new if operator).
  # Examples:
  #
  #   if 1<2;end
  #   if i<3;else;end
  #   if i>k;end
  #
  function _addIf(code::Script.Code)
    block    = code.blocks[rand(1:length(code.blocks))]
    vars     = block["vars"]
    ifParams = [:if, Expr(:comparison, _getVarOrNum(vars, true), _cond[rand(1:length(_cond))], _getVarOrNum(vars, true)), Expr(:block,)]

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
  # @param {Script.Code} code Script of particular organism we have to mutate
  # (add new function).
  # Example:
  #
  #   function func1();end
  #
  function _addFunc(code::Script.Code)
    block     = code.code.args[2]
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
  # functions. So it's possible to call clone() or funcXXX().
  # @param {Script.Code} code Script of particular organism we have to mutate
  # Example:
  #     var3 = func1(var1, 12)
  #     clone()
  #     var1 = grabEnergyLeft(var2)
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
  # 
  #
  function _changeVar()
  end
  function _changeFor()
  end
  function _changeIf()
  end
  function _changeFunc()
  end
  function _changeFuncCall()
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
  const _sign     = [+, -, ~]
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
  const _change = [_changeVar, _changeFor, _changeIf, _changeFunc, _changeFuncCall]
  const _del    = [_delVar,    _delFor,    _delIf,    _delFunc,    _delFuncCall   ]
end