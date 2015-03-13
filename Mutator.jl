#
# TODO: description...
# TODO: public methods
# TODO: usage...
# TODO: amount of add,delete and change mutations depend on script size
# TODO: describe _code. Code structure should be described in Script.Code type
# TODO: describe [], {|}, var, op, sign, const keywords
#
module Mutator
  # TODO: remove this export 
  export init
  export mutate
  # TODO: remove this module
  using  Debug
  import Script

  #
  # Do one random mutation of script
  # TODO: describe what is mutation. It's typed (add, delete, change)
  # @param  {Script.Code} Organism's script we have to mutate
  # @return {Bool} true means, that mutation has done, false - some mistake
  #
  function mutate(code::Script.Code)
    #
    # _code field will be used in current and all other private methods
    # which are called from here. This is analog of private field. In other
    # case we have to pass this variable in all private methods.
    #
    _code = code
    # TODO: here we should choose add, remove or change operation according
    # TODO: to percentage (e.g. add:remove:change=60%:10%:30%)
    true
  end

  #
  # Adds variable into the random block within the script. Format:
  #   var = [sign]{const|var} [op [sign]{const|var}]
  # Added variable will be added to _blocks[xxx]["vars"] array. _blocks
  # field must contain at least one block.
  # Examples:
  #   var1 = 3
  #   var2 = ~var1
  #   var3 = -var2 * ~34
  #
  function _addVar()
    block  = _code.blocks[rand(1:length(_code.blocks))]
    vars   = block["vars"]
    ex     = _getVarOrNum(vars)
    newVar = _getNewVar()

    if (_randTrue())
      ex = Expr(:call, _op[rand(1:length(_op))], ex, _getVarOrNum(vars))
    end
    push!(vars, newVar)
    push!(block["block"].args, Expr(:(=), newVar, ex))
  end
  #
  # Adds new "for" keyword into the random block within the script. Format:
  #   for var = 1:{var|const};end
  # "for" operator adds new block into existing one. This block is between 
  # "for" and "end" operators. Also, this block contains it's variables scope.
  # Examples:
  #   for i = 1:3;end
  #   for i = 1:k;end
  #
  function _addFor()
    block  = _code.blocks[rand(1:length(_code.blocks))]
    newVar = _getNewVar()
    newFor = Expr(:for, Expr(:(=), newVar, Expr(:(:), 1, _getVarOrNum(block["vars"], true))), Expr(:block,))

    push!(block["block"].args, newFor)
    push!(_code.blocks, ["perent"=>block, "vars"=>[newVar], "block"=>newFor]);
  end
  #
  # Adds new if operator into random block within a script. Format:
  #   if {var|const} Cond {var|const};else;end
  # "if" operator adds new block into existing one. But, this block doesn't
  # contain variables scope. It uses parent's scope.
  # Examples:
  #   if 1<2;end
  #   if i<3;else;end
  #   if i>k;end
  #
  function _addIf()
    block    = _code.blocks[rand(1:length(_code.blocks))]
    vars     = block["vars"]
    ifParams = [:if, Expr(:comparison, _getVarOrNum(vars, true), _cond[rand(1:length(_cond))], _getVarOrNum(vars, true)), Expr(:block,)]

    if _randTrue()
      push!(ifParams, Expr(:block,))
      push!(_code.blocks, ["parent"=>block, "vars"=>vars, "block"=>ifParams[4]])
    end

    push!(block["block"].args, apply(Expr, ifParams))
    push!(_code.blocks, ["parent"=>block, "vars"=>vars, "block"=>ifParams[3]])
  end
  # TODO: describe function creation details
  # Adds new named function into the main block within script. Format:
  #   function XXX(args);end
  # "function" operator adds new block into existing one. This block is in a 
  # body of the function. Also, this block contains it's own variables scope.
  # It's important, that all functions will leave in main block only.
  # Example:
  #   function func1();end
  #
  function _addFunc()
    block     = _code.code.args[2]
    funcs     = _code.blocks[1]["parent"]["funcs"]
    newBlock  = Expr(:block,)
    newFunc   = _getNewFunc()
    func      = [:call, newFunc]
    maxParams = rand(0:_code.funcMaxParams)
    funcArgs  = (Dict{ASCIIString, Any})[]
    vars      = (Symbol)[]

    for i = 1:maxParams
      arg = _getNewVar()
      push!(funcArgs, ["name"=>string(arg), "type"=>Int])
      push!(func, arg)
      push!(vars, arg)
    end
    push!(funcs, ["name"=>string(newFunc), "args"=>funcArgs])
    push!(block.args, Expr(:function, apply(Expr, func), newBlock))
    push!(_code.blocks, ["parent"=>block, "vars"=>vars, "block"=>newBlock])
  end
  function _addFuncCall()
  end
  function _addLibCall()
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
  function _changeLibCall()
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
  function _delLibCall()
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
  # {symbol} New symbol in format: "varXXX", where XXX - Uint
  #
  function _getNewVar()
    symbol("var$(_code.vIndex = _code.vIndex + 1)")
  end
  #
  # Generates new function symbol.
  # {symbol} New symbol in format: "funcXXX", where XXX - Uint
  #
  function _getNewFunc()
    symbol("func$(_code.fIndex = _code.fIndex + 1)")
  end
  #
  # Returns an expresion for variable or a number in format: [sign]{var|const}
  # @param  {Expr} vars   Variables array in current block
  # @param  {Bool} simple true if method should return only {var|const} without sign
  # @return {Expr}
  #
  function _getVarOrNum(vars, simple=false)
    v = vars[rand(1:length(vars))]
    _randTrue() ? (simple ? v : Expr(:call, _sign[rand(1:length(_sign))], v)) : _getNum(simple)
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
  # {Script.Code} Current reference to the organism's code we have to mutate.
  # It will be changed every time some public method will be called (e.g. mutate()).
  #
  _code = Script.Code(0,0,1, :((=)()), [Dict{ASCIIString, Any}()])
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
  const _add    = [_addVar,    _addFor,    _addIf,    _addFunc,    _addFuncCall,    _addLibCall   ]
  const _change = [_changeVar, _changeFor, _changeIf, _changeFunc, _changeFuncCall, _changeLibCall]
  const _del    = [_delVar,    _delFor,    _delIf,    _delFunc,    _delFuncCall,    _delLibCall   ]
end