 module Script 
  #
  # Contains all variable related data. We have to use type for simple
  # fields (e.g. Int, Bool), because Julia can't store these fields in
  # module. Only complex types of fields (Array, Type, Dict) are supported
  #
  type Fields
    #
    # {Uint} Current index of new variable. Should be 0 by default.
    #
    vIndex::Uint
    #
    # {Uint} Current index of new function. Should be 0 by default.
    #
    fIndex::Uint
    #
    # {Uint8} Maximum amount of parameters for function
    #
    funcMaxParams::Uint8
  end
  #
  # Represents code of script
  #
  type Code
    #
    # {Int} Name of current variable. Name of variable will be
    #       changed every time when new variable will be produced.
    #
    fields::Fields
    #
    # {Expr} Reference to organism's default script. It contains task
    # function t() and infinite loop (block) with one variable. Organism
    # lives in this loop while it has energy.
    #
    code::Expr
    #
    # {Array} Array of available maps of script blocks. For example: for, while,
    # function contain blocks inside. By default it contains one main block
    # of root while within t() function. See _script field for details. Every
    # block is a map of three elements: "parent"=>Parent block, "vars"=>Array of
    # expressions of block and "block"=>Array of block's inner expressions.
    #
    blocks::Array{Dict{ASCIIString, Any}}
  end
end