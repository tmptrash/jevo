 #
 # Organism's script related functionality. Every organism, contains this
 # script. It's like a DNA for biological organisms. It can be mutated by 
 # Mutator module.
 #
 module Script
  export Code
  
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
  # For more details see Script.Code.blocks field's description.
  #
  type Block
    #
    # 
    #
    vars::Array{Symbol}
    block::Expr
    parent::Block
  end
  #
  # Represents code of script. In real it's Julia code based on Expressions.
  # See Expr type for details. Use this link:
  # (http://docs.julialang.org/en/latest/manual/metaprogramming)
  #
  type Code
    #
    # {Uint} Current index of new variable. Should be 0 by default.
    # It represents total amount (created and removed) of variables.
    # In real, it uses for creation of unique variables, like: varXXX,
    # where XXX - is a vIndex number.
    #
    vIndex::Uint
    #
    # {Uint} Current index of new function. Should be 0 by default.
    # The same like variables, but in format: funcXXX, where XXX is
    # a fIndex number.
    #
    fIndex::Uint
    #
    # {Uint8} Maximum amount of parameters for function. See 
    # Config.mutator.funcMaxArgs parameter for details.
    #
    funcMaxArgs::Uint8
    #
    # {Expr} Reference to organism's script's code. It's changed by Mutator.
    # This is native Julia code, represented by Expressions. See this link
    # for details: http://docs.julialang.org/en/latest/manual/metaprogramming.
    # This parameter is related to blocks. blocks should descript this code.
    #
    code::Expr
    #
    # {Array{Dict{ASCIIString, Any}}} This is an array of Julia's blocks. Block or 
    # quote is a section in a code, which creates it's own scope. For example these 
    # operators create it's own scope: function, for, try... Every block is a map 
    # of three elements: "parent"=>Reference to parent block, "vars"=>Array of vars 
    # symbols in current block and "block"=>Array of all block's inner expressions. 
    # Example:
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
    blocks::Array{Dict{ASCIIString, Any}}
    #
    # {Array{Dict{ASCIIString, Any}}} Map of the functions with parameters 
    # available to call in script' code. All functions live on one level.
    # It's impossible to have inner function in other function. Example: 
    #  
    #     ["name"=>"func1", "args"=>[["name"=>"var1", "type"=>Int], ...]]
    #
    # There are two types of functions: embedded and generated. Embedded function
    # are functions like checkEnergy() or stepLeft(). They aren't be changed by
    # enyone. Generated functions are functions, which were created by organism
    # itself (e.g. by Mutator module). These functions may be changed, added and
    # removed (again by Mutator). And don't forget, that funcs and blocks must
    # be synchronized.
    #
    funcs::Array{Dict{ASCIIString, Any}}
    #
    # Quote (container) for organism's functions. All functions must be in one
    # block. We are not support inline functions.
    #
    fnBlock::Expr
  end
end