#
# TODO: description...
# TODO: public methods
# TODO: usage...
# TODO: amount of add,delete and change mutations depend on script size
#
module Mutator
  export init
  export mutate
  using Debug

  #
  # This method should be called first. before mutate
  # and any other public method of this module...
  # @param {Expr} script Scriptwe have to mutate
  #
  function init(script)
    _script = script
    _inited = true
  end
  #
  # Do one mutation of script
  # TODO: describe what is mutation. It's typed (add, delete, change)
  # @return {Bool} true means, that mutation was done, false - some mistake
  #
  function mutate()
    if !_inited
      warn("Module Mutator wasn't inited. Default parameters will be used.")
      return false
    end



    true
  end

  #
  # Adds variable into the random block within the script. General form:
  # var = [sign]{const|var} [op [sign]{const|var}]
  #
  function _addVar()
    block  = _blocks[rand(1:length(_blocks))]
    vars   = block["vars"]
    ex     = _getVarOrNum(vars)
    newVar = _getNewVar()

    if (_randTrue())
      ex = Expr(:call, _op[rand(1:length(_op))], ex, _getVarOrNum(vars))
    end
    push!(vars, newVar)
    push!(block["block"].args, Expr(:(=), newVar, ex))
  end
  function _addFor()
  end
  function _addIf()
  end
  function _addFunc()
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

  function _randTrue()
    rand(1:2) === 2
  end
  #
  # TODO: should return variable avaialble in current block
  #
  function _getVar(vars)
    vars[rand(1:length(vars))]
  end
  #
  # Generates new variable
  # {symbol}
  #
  function _getNewVar()
    symbol("var$(_vars.index = _vars.index + 1)")
  end
  #
  # Returns an expresion for variable or a number in format: [sign]{var|const}
  # @param  {Expr} vars Variables array in current block
  # @return {Expr}
  #
  function _getVarOrNum(vars)
    _randTrue() ? Expr(:call, _sign[rand(1:length(_sign))], _getVar(vars)) : _getNum()
  end
  #
  # Returns expression for number in format: [sign]const
  # @return {Expr}
  #
  function _getNum()
    Expr(:call, _sign[rand(1:length(_sign))], rand(0:typemax(Int)))
  end

  #
  # Contains all variable related data
  #
  type Vars
    #
    # {Int} Current index of new variable in format var<index>
    #
    index::Int
  end

  #
  # {Bool} Will be set to true after call init()
  #
  _inited   = false
  #
  # {Expr} Reference to organism's default script. It contains task
  # function and infinite loop inside. Organism lives in this loop
  # during it has an energy.
  #
  _script   = :(function t();while(true);var0=0;produce("start");end;end)
  #
  # TODO: fix this comment
  # {Array} Array of available script blocks. For example: for, while,
  # function contain blocks inside. By default it contains one main block
  # of root while within t() function. See _script field for details.
  #
  _blocks   = [["vars"=>[:(var0)], "block"=>_script.args[2].args[2].args[2]]]
  #
  # {Int} Name of current variable. Name of variable will be
  #       changed every time when new variable will be produced.
  #
  _vars     = Vars(0)
  #
  # {Array} Available signs. Is used before numeric variables. e.g.: -x or ~y
  #
  _sign     = [+, -, ~]
  #
  # {Array} Available operators. Is used between numeric variables and constants
  #
  _op       = [+, -, \, *, $, |, &, ^, %, >>>, >>, <<]
  #
  # TODO:
  #
  _add    = [_addVar,    _addFor,    _addIf,    _addFunc,    _addFuncCall,    _addLibCall   ]
  _change = [_changeVar, _changeFor, _changeIf, _changeFunc, _changeFuncCall, _changeLibCall]
  _del    = [_delVar,    _delFor,    _delIf,    _delFunc,    _delFuncCall,    _delLibCall   ]
end
