 #
 # Organism's script related functionality. Every organism, contains this
 # script. It's like a DNA for biological organisms. It can be mutated by 
 # Mutator module.
 #
 module Script
  export Code
  export Block
  export Func
  export Var

  export isSign
  export getNewVar
  export getVarOrNum
  export getNum
  export getRandBlock
  export getRandSign
  export getNewOrLocalVar
  export getOperation
  export getCondition
  export addExpr
  export addFunc
  export isEmpty
  export createBlock
  export createFuncCall
  export addVar
  export getNewFunc
  export findVars
  export getRandLine

  import Helper
  import Config
  # TODO Remove this
  using  Debug
  
  #
  # Record for variable or number. Is used in findVars() function.
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
    # 0 - var|num, 1 - operation, 2 - sign, 3 - func
    #
    typ::Uint8
  end
  #
  # One code block. By block i mean code quote, which may contain it's
  # own variables. For example for, while, try and so on contain they
  # own variables scopes. Every block is a map 
  # of three elements: "parent"=>Reference to parent block, "vars"=>Array 
  # of vars symbols in current block and "block"=>Array of all block's 
  # inner expressions. Example:
  # 
  #     [[
  #       "vars"  => Symbol[],      # no variables in t()
  #       "block" => code.args[2],  # block of t() function
  #       "parent"=> [              # there is no parent for t() function
  #         "vars"  => [],          
  #         "block" => nothing,
  #         "parent"=> nothing
  #     ]]
  #
  # For this example code should be:
  #
  #     code = :(function t();end)
  #
  # For more details see Code.blocks field's description.
  #
  type Block
    #
    # Array of variables(Symbols) in current block. Block may not contain
    # variables. For example if it's empty.
    #
    vars::Array{Symbol}
    #
    # Reference to the block of Julia code. We use this code to add, remove
    # or change it.
    #
    block::Expr
    #
    # Reference to parent block. Root block is empty(nothing). 
    #
    parent::Block
    #
    # This is how we incomplete the type. Read about incomplete here:
    # https://github.com/JuliaLang/julia/blob/master/doc/manual/constructors.rst#incomplete-initialization
    #
    Block(v::Array{Symbol}, b::Expr, p = nothing) = (x = new(v, b); p === nothing ? x : (x.parent = p;x))
  end
  #
  # Describes one function argument
  #
  type Var
    #
    # Name of the argument
    #
    name::ASCIIString
    #
    # Type of the argument
    #
    typ::DataType
  end
  #
  # Describes Julia function with or without arguments. Is used for 
  # generating functions and they call.
  #
  type Func
    #
    # Name of the function
    #
    name::ASCIIString
    #
    # Array of function arguments
    #
    args::Array{Var}
  end
  #
  # Represents code of script. In real it's Julia code based on Expressions.
  # See Expr type for details. Use this link:
  # (http://docs.julialang.org/en/latest/manual/metaprogramming)
  #
  type Code
    #
    # Current index of new variable. Should be 0 by default. It represents 
    # total amount (created and removed) of variables. In real, it uses for 
    # creation of unique variables, like: varXXX, where XXX - is a vIndex 
    # number.
    #
    vIndex::Uint
    #
    # Current index of new function. Should be 0 by default. The same like 
    # variables, but in format: funcXXX, where XXX is a fIndex number.
    #
    fIndex::Uint
    #
    # Maximum amount of parameters for function. See Config.mutator.funcMaxArgs 
    # parameter for details.
    #
    funcMaxArgs::Uint8
    #
    # Reference to organism's script's code. It's changed by Mutator. This 
    # is native Julia code, represented by Expressions. See this link for 
    # details: http://docs.julialang.org/en/latest/manual/metaprogramming.
    # This parameter is related to blocks. blocks should descript this code.
    #
    code::Expr
    #
    # This is an array of Julia's blocks. Block or quote is a section in a code, 
    # which creates it's own scope. For example these operators create it's own 
    # scope: function, for, try... Every block is a map of three elements: 
    # "parent"=>Reference to parent block, "vars"=>Array of vars symbols in 
    # current block and "block"=>Array of all block's inner expressions. Example:
    # 
    #     [[
    #       "vars"  => Symbol[],      # no variables in t()
    #       "block" => code.args[2],  # block of t() function
    #       "parent"=> [              # there is no parent for t() function
    #         "vars"  => [],          
    #         "block" => nothing,
    #         "parent"=> nothing
    #     ]]
    #
    # For this example code should be:
    #
    #     code = :(function t();end)
    #
    # This map was created for fast access to the random code block. For example
    # Mutator uses this to make a change or add something new to the code. It's
    # important, that this map is one dimention, because real code is a tree.
    #
    blocks::Array{Block}
    #
    # Map of the functions with parameters available to call in script' code. 
    # All functions live on one level. It's impossible to have inner function 
    # in other function. Example: 
    #  
    #     ["name"=>"func1", "args"=>[["name"=>"var1", "type"=>Int], ...]]
    #
    # There are two types of functions: embedded and generated. Embedded function
    # are functions like checkEnergy() or stepLeft(). They aren't be changed by
    # enyone. Generated functions are functions, which were created by organism
    # itself (e.g. by Mutator module). These functions may be changed, added and
    # removed (again by Mutator). And don't forget, that funcs and blocks must
    # be synchronized.
    # TODO: optimize this to type instead of Dict
    # 
    funcs::Array{Func}
    #
    # Code block of organism's functions. All functions must be in one
    # (this) block. We are not support inline functions (functions within
    # other functions). Only function should leave in this block. For 
    # example, there is not variables, if or for lines there.
    #
    fnBlock::Block
  end


  #
  # Checks if "sign" is an available sign (a sign from _sign array)
  # @param sign Sign we have to check
  # @return {Bool}
  #
  function isSign(sign)
    findfirst(_sign, sign) > 0
  end
  #
  # Generates new variable symbol.
  # @param  {Code} code Script of current organism.
  # @return {Symbol} New symbol in format: "varXXX", where XXX - Uint
  #
  function getNewVar(code::Code)
    symbol("var$(code.vIndex = code.vIndex + 1)")
  end
  #
  # Returns an expresion for variable or a number in format: [sign]{var|const}
  # @param  block  Block, with variables array
  # @param  simple true if method should return only {var|const} without sign
  # @return {Expr}
  #
  function getVarOrNum(block::Block, simple=true)
    vars = block.vars
    if (length(vars) === 0) return getNum(simple) end
    if Helper.randTrue() 
      if simple 
        _getRandVar(vars)
      else
        Expr(:call, getRandSign(), _getRandVar(vars))
      end
    else
      getNum(simple)
    end
  end
  #
  # Returns expression for number in format: [sign]const
  # @param  {Bool} true if it should return only const without sign
  # @return {Expr}
  #
  function getNum(simple=false)
    num = rand(0:typemax(Int))
    simple ? num : Expr(:call, getRandSign(), num)
  end
  #
  # Returns random block from all available
  # @return {Dict{ASCIIString, Any}}
  #
  function getRandBlock(code::Code)
    code.blocks[rand(Config.script["blocksStartIndex"]:length(code.blocks))]
  end
  #
  # Returns random sign from the list (_sign) of available.
  # @return {Function}
  #
  function getRandSign()
    _sign[rand(1:length(_sign))]
  end
  #
  # Returns new or existing variable is specified vars scope. Returns 
  # new variable in case when Helper.randTrue() returns true. In case
  # of new variable adds it into the block.
  # @param block Block with all available variables
  # @param code Code of specified organism
  # @return {(Symbol, Bool)}
  #
  function getNewOrLocalVar(block::Block, code::Code)
    vars = block.vars
    if Helper.randTrue() && length(vars) > 0 
      v     = _getRandVar(vars)
      isNew = false
    else
      v     = getNewVar(code)
      isNew = true
    end
    (v, isNew)
  end
  #
  # Returns random operation. See "_op" for details. For example:
  #
  #     var = var + var
  #
  # In this example "+" is an operation
  # @return {Function}
  #
  function getOperation()
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
  function getCondition()
    _cond[rand(1:length(_cond))]
  end
  #
  # Adds expression into the block
  # @param block Block we insert to
  # @param expr Expression to insert
  #
  function addExpr(block::Block, expr::Expr)
    push!(block.block.args, expr)
  end
  #
  # Adds expression into another expression
  # @param dest Destination expression
  # @param src  Source expression
  #
  function addExpr(dest::Expr, src::Expr)
    push!(dest.args, src)
  end
  #
  # Adds new cusom function into the functions map
  #
  function addFunc(code::Code, name::ASCIIString, args::Array{Var})
    push!(code.funcs, Script.Func(name, args))
  end
  #
  # Returns true if code is empty. Empty means, no code
  # blocks or one code block, but without lines inside.
  # @param code Code to check
  # @return {Bool}
  #
  function isEmpty(code::Code)
    length(code.blocks) === 0 || length(code.blocks) === 1 && length(code.blocks[1].block.args) === 0
  end
  #
  # Checks if code block has no lines inside
  # @param block Code block to check
  # @return {Bool}
  #
  function isEmpty(block::Script.Block)
    length(block.block.args) === 0
  end
  #
  # Returns true if code line is empty. Empty means
  # code line without operator. For example, comment.
  # @param line Line to check
  # @return {Bool}
  #
  function isEmpty(line)
    typeof(line) !== Expr
  end
  #
  # Creates new block and adds it into blocks array.
  # @param code Source code, where new block will be added
  # @param parent Parent block
  # @param body Reference to Julia block(quote)
  # @param vars Variables of the block
  # @return {Block} New block
  #
  function createBlock(code::Code, parent::Block, body::Expr, vars::Array{Symbol})
    block = Block(vars, body, parent)
    push!(code.blocks, block)
    addExpr(block, Expr(:call, :produce))
    block
  end
  #
  # Creates function call without variable assign at the beginning and
  # returns it. It choose one functions from available list (Code.funcs)
  # and creates random argument values/variables. Example:
  #
  #   funcXXX([args])
  #
  # @param code Organism's code
  # @param block Current code block
  # @return {Expr}
  #
  function createFuncCall(code::Code, block::Script.Block)
    if (length(code.funcs) < 1) return nothing end
    func = _getFunc(code)
    args = Any[:call, symbol(func.name)]
    # TODO: possible problem here. we don't check var type.
    # TODO: we assume, that all vars are Int
    for i = 1:length(func.args) push!(args, getVarOrNum(block)) end

    apply(Expr, args)
  end
  #
  # Parses expression recursively and collects all variables and numbers
  # into "vars" map. Every variable or number is a record in vars argument.
  # Example:
  #
  #     VarOrNum(expr, 1, 0)
  #
  # Available types:
  #
  #     0 - var|num
  #     1 - operation
  #     2 - sign
  #     3 - func
  #
  # This line means that expr.args[1] contains variable in expr.args[1].
  # @param vars Container for variables: [VarOrNum(expr, 1, true),...]
  # @param parent Expression where we should search for variables/numbers
  # @param index Index of operand in expr, where we should start search
  #
  function findVars(vars::Array{VarOrNum}, parent::Expr, index::Uint)
    expr = parent.args[index]
    if typeof(expr) !== Expr                   
      push!(vars, VarOrNum(parent, index, 0))  # var or num
      return nothing
    end
    for i = 1:length(expr.args)
      item = expr.args[i]
      if typeof(item) === Expr                          
        findVars(vars, expr, uint(i))          # expression, go deepper
      elseif isSign(item) && length(expr.args) === 2
          push!(vars, VarOrNum(expr, i, 2))    # sign (-,+,~)
      elseif beginswith(string(item), Config.script["funcPrefix"])
        push!(vars, VarOrNum(parent, 2, 3))    # function
      elseif beginswith(string(item), Config.script["varPrefix"]) || typeof(item) === Int
        push!(vars, VarOrNum(expr, i, 0))      # var or num
      else
        push!(vars, VarOrNum(expr, i, 1))      # operation (-,+,/,$,...)
      end
    end
  end
  #
  # Adds variable "var" into the block "block".
  # @param block Block
  # @param v Variable we have to insert
  #
  function addVar(block::Block, v::Symbol)
    push!(block.vars, v)
  end
    #
  # Returns random function from all avaialble
  # @return {Script.Func}
  #
  function _getFunc(code::Code)
    code.funcs[rand(1:length(code.funcs))]
  end
    #
  # Generates new function symbol.
  # @param  code Script of current organism.
  # @return {Symbol} New symbol in format: "funcXXX", where XXX - Uint
  #
  function getNewFunc(code::Code)
    symbol("$(Config.script["funcPrefix"])$(code.fIndex = code.fIndex + 1)")
  end
  #
  # Returns random line and it's index within block
  # @return {(Expr, Uint)}
  #
  function getRandLine(block::Script.Block)
    index = uint(rand(1:length(block.block.args)))
    (block.block.args[index], index)
  end
  #
  # Returns random variable from list
  # @return {Symbol}
  #
  function _getRandVar(vars::Array{Symbol})
    vars[rand(1:length(vars))]
  end


  #
  # {Array} Available signs. Is used before numeric variables. e.g.: -x or ~y.
  # ! operator should be here.
  #
  const _sign     = [:+, :-, :~]
  #
  # Available conditions. Are used with "if" operator.
  #
  const _cond     = [:<, :>, :(==), :(!==), :<=, :>=]
  #
  # {Array} Available operators. Is used between numeric variables and constants
  #
  const _op       = [+, -, /, *, $, |, &, ^, %, >>>, >>, <<]
end