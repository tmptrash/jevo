# TODO: comment everything
module AsciiMutator
  using Helper

  export mutate
  export Code

  type Code
    str::ASCIIString
    #
    # Start string should contain 3 symbols: 1 unchanged, 2 empty and 3 unchanged.
    # String should be a correct julia code. 
    #
    function Code() new("; ;") end
  end
  #
  # TODO: optimize this method as deep aspossible
  # Produces one add/change/del mutation on code and returns it's modified version.
  # Probabilities array is an array of three items: add,change,del values. e.g.:
  # [1,2,1] means that add and del mutations will be twice less then change one.
  # Character for adding and changing is in visible ASCII range - 32:126. see ASCII
  # table for details. Change mutation is the most frequent, so it should be first.
  # @param code Code we have to modify
  # @param prob Probability array (add,change,del). e.g.: [X,X,X]
  # @return {AsciiMutator.Code}
  #
  function mutate(code::Code, prob::Array{Int})
    pIndex = Helper.getProbIndex(prob)
    len    = length(code.str) - 1
    i      = rand(2:len)

    # 1 - add, 2 - change, 3 - del
    if pIndex === 2 code.str     = string(code.str[1:i-1], Char(rand(32:126)), code.str[i+1:end])
    elseif pIndex === 1 code.str = string(code.str[1:i-1], Char(rand(32:126)), code.str[i:end])
    elseif len > 2 code.str      = string(code.str[1:i-1], code.str[i+1:end]) end
    code
  end
end