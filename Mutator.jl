#
# TODO: description...
# TODO: public methods
# TODO: usage...
# TODO: amount of add,delete and change mutations depend on script size
#
module Mutator
  export init
  export mutate

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
  # Adds variable into the random block within the script
  #
  function _addVar()
    push!(_getRandExpr().args, :($"var$_genVar()"))
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
  #
  # Generates new variable
  #
  function _genVar()
    "var$_varIndex"
  end
  #
  # Returns random index within custom array of expressions
  # @param  {Array{Any}} Array of expressions. Must be with minimum 1 element
  # @return {Int}
  #
  function _getRandExpr(arr)
    return arr[rand(1:length(arr))]
  end

  #
  # {Expr} Reference to organism's default script. It contains task
  # function and infinite loop inside. Organism lives in this loop
  # during it has an energy.
  #
  _script = :(function t();while(true);produce("start");end;end)
  #
  # {Array} Array of available script blocks. For example: for, while,
  # function contain blocks inside. By default it contains one main block
  # of root while within t() function. See _script field for details.
  #
  _blocks = [_script.args[2].args[2].args[2]]
  #
  # {Bool} Will be set to true after call init()
  #
  _inited = false
  #
  # {Int} Name of current variable. Name of variable will be 
  #       changed every time when new variable will be produced.
  #
  _varIndex = 1
  #
  # TODO:
  #
  _add    = [_addVar,    _addFor,    _addIf,    _addFunc,    _addFuncCall,    _addLibCall   ]
  _change = [_changeVar, _changeFor, _changeIf, _changeFunc, _changeFuncCall, _changeLibCall]
  _del    = [_delVar,    _delFor,    _delIf,    _delFunc,    _delFuncCall,    _delLibCall   ]
end