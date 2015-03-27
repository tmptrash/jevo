module TestMutator
  using FactCheck
  using Mutator
  using Script

  facts("Testing Mutator.mutate()...") do
    code   = :(function t() end)
    blocks = [[
      "vars"  => Symbol[],
      "block" => code.args[2],
      "parent"=> [
        "vars"  => [],          
        "block" => nothing,
        "parent"=> nothing
      ]
    ]]
    script = Script.Code(0,0,10,code,blocks,[],code.args[2])
    Mutator.mutate(script, [1,0,0])

    @fact length(code.args[2].args) => 1
  end

  #
  # We have to do these tests many times, because they 
  # contain randomness. So it's possible, that one test
  # will be passed, but 1000 less possible.
  #
  facts("Testing Mutator._getProbIndex()...") do
    for i = 1:1000
      @fact Mutator._getProbIndex([1])     => 1
      @fact Mutator._getProbIndex([1,2])   => anyof(1,2)
      @fact Mutator._getProbIndex([1,2,3]) => anyof(1,2,3)
      @fact Mutator._getProbIndex([1,0,0]) => 1
      @fact Mutator._getProbIndex([0,1,0]) => 2
      @fact Mutator._getProbIndex([0,0,1]) => 3
    end
    @fact_throws Mutator._getProbIndex([])
  end

  facts("Testing Mutator._addVar()...") do
    code   = :(function t() end)
    blocks = [[
      "vars"  => Symbol[],
      "block" => code.args[2],
      "parent"=> [
        "vars"  => [],          
        "block" => nothing,
        "parent"=> nothing
      ]
    ]]
    script = Script.Code(0,0,10,code,blocks,[],code.args[2])
    Mutator._addVar(script)

    @fact length(code.args[2].args)    => 1
    @fact code.args[2].args[1].args[1] => :(var1)
  end
end