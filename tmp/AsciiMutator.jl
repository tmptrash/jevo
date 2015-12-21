module AsciiMutator
  using Helper

  export mutate
  export Code

  type Code
    #
    # Start string should contain 3 symbols: unchanged 1, empty 2 and unchanged 3.
    # e.g.: "; ;"
    #
    str::ASCIIString
    function Code() new("; ;") end
  end
  #
  # TODO: optimize this method as deep aspossible
  #
  function mutate(code::Code, prob::Array{Int})
    p = Helper.getProbIndex(prob)
    l = length(code.str) - 1
    i = rand(2:l)
    c = Char(rand(32:126))

    # insert
    if p === 1
      code.str = string(code.str[1:i-1], c, code.str[i:end])
    # change
    elseif p === 2
      code.str = string(code.str[1:i-1], c, code.str[i+1:end])
    # delete
    elseif l > 2
      code.str = string(code.str[1:i-1], code.str[i+1:end])
    end

    code
  end
end