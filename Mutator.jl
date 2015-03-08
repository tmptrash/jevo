#
# TODO: description...
# TODO: public methods
# TODO: usage...
# TODO: amount of add,delete and change mutations depend on script size
# TODO: describe _script and _blocks. in blocks describe vars and block fields
# TODO: describe [], {|}, var, op, sign, const keywords
#
module Mutator
  export init
  export mutate
  using Debug

  #
  # This method should be called first. before mutate
  # and any other public method of this module...
  # @param {Expr} script Script we have to mutate
  # @param {Dict} blocks Linear maps of blocks according to script. See
  # default values of _script and _blocks fields for details.
  #
  function init(script, blocks)
    _script = script
    _blocks = blocks
    _fields.inited = true
  end
  #
  # Do one mutation of script
  # TODO: describe what is mutation. It's typed (add, delete, change)
  # @return {Bool} true means, that mutation was done, false - some mistake
  #
  function mutate()
    if (!_fields.inited)
      warn("Module Mutator wasn't inited. Default parameters will be used.")
      return false
    end



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
  #
  # Adds new "for" keyword into the random block within the script. Format:
  #   for var = 1:{var|const};end
  # Examples:
  #   for i = 1:3;end
  #   for i = 1:k;end
  #
  function _addFor()
    block    = _blocks[rand(1:length(_blocks))]
    newVar   = _getNewVar()
    newBlock = Expr(:for, Expr(:(=), newVar, Expr(:(:), 1, _getVarOrNum(block["vars"], true))), Expr(:block,))

    push!(block["block"].args, newBlock)
    push!(_blocks, ["perent"=>block, "vars"=>[newVar], "block"=>newBlock]);
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
  # Chooses (returns) true or false randomly. Is used to choose between two
  # variants of something. For example + or - sign.
  # @return {Bool}
  #
  function _randTrue()
    rand(1:2) === 1
  end
  #
  # Generates new variable symbol.
  # {symbol} New symbol in format: "varXXX", where XXX - Int
  #
  function _getNewVar()
    symbol("var$(_fields.index = _fields.index + 1)")
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
  # Contains all variable related data. We have to use type for simple
  # fields (e.g. Int, Bool), because Julia can't store these fields in
  # module. Only complex types of fields (Array, Type, Dict) are supported
  #
  type Fields
    #
    # {Uint} Current index of new variable. Should be 0 by default.
    #
    index ::Uint
    #
    # {Bool} Will be set to true after call init(). false by default.
    #
    inited::Bool
  end

  #
  # {Int} Name of current variable. Name of variable will be
  #       changed every time when new variable will be produced.
  #
  _fields   = Fields(0, false)
  #
  # {Expr} Reference to organism's default script. It contains task
  # function t() and infinite loop (block) with one variable. Organism
  # lives in this loop while it has energy.
  #
  _script   = :(function t();while(true);var0=0;produce("start");end;end)
  #
  # {Array} Array of available maps of script blocks. For example: for, while,
  # function contain blocks inside. By default it contains one main block
  # of root while within t() function. See _script field for details. Every
  # block is a map of three elements: "parent"=>Parent block, "vars"=>Array of
  # expressions of block and "block"=>Array of block's inner expressions.
  #
  _blocks   = [[                                    # while(true) block
      "vars"  => [:(var0)],
      "block" => _script.args[2].args[2].args[2],
      "parent"=> [                                  # function's t() block
          "vars"  => [],
          "block" => _script.args[2],
          "parent"=> nothing
      ],
  ]]
  #
  # {Array} Available signs. Is used before numeric variables. e.g.: -x or ~y.
  # ! operator should be here.
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