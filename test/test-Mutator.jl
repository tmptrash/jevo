module TestMutator
  using FactCheck
  using Mutator
  using Script
  using Config
  # TODO: remove this
  using Debug

  facts("Testing 'add' logic of Mutator.mutate()...") do
    #
    # Because of randomness, we have to be sure that all variants of
    # possible addings will be applied. So we use 1000 times here... 
    #
    for i = 1:1000
      #
      # Every time we have to start with default script
      #
      code   = :(function t() function f() end end)
      blocks = [[
        "vars"  => Symbol[],
        "block" => code.args[2],
        "parent"=> [
          "vars"  => [],
          "block" => nothing,
          "parent"=> nothing
        ]
      ]]
      #
      # We need to have at least one function, because in case of call _addFuncCall()
      # there will be nothing to call and @fact will fail. Second important issue,
      # that this function should in the same block with other code (function t()...end)
      #
      script = Script.Code(0,0,Config.mutator["funcMaxArgs"],code,blocks,[["name"=>"f", "args"=>[]]],code.args[2])
      Mutator.mutate(script, [1,0,0])
      #
      # > 1, because this block already has function t() and our new code,
      # added in Mutator.mutate() function. See code for details.
      #
      @fact length(code.args[2].args) > 1 => true
    end
  end

  facts("Testing 'change' logic of Mutator.mutate()...") do
    context("Testing var = num") do
      #
      # It's a little bit hack, because we set unsupported values like 1.1 or 2.2.
      # We have to do so, because they will be changed by some integer or variable,
      # but not float.
      #
      code   = Expr(:function, Expr(:call, :t), Expr(:block, Expr(:(=), :var1, 1.2))) #:(function t() var1 = 1.2 end)
      blocks = [[
        "vars"  => [:var1],
        "block" => code.args[2],
        "parent"=> [
          "vars"  => [],
          "block" => nothing,
          "parent"=> nothing
        ]
      ]]
      script = Script.Code(0,0,Config.mutator["funcMaxArgs"],code,blocks,[],code.args[2])
      Mutator.mutate(script, [0,1,0])
      #
      # In this particular test var1 should't be changed, because it's only one 
      # variable in a block.
      #
      @fact code.args[2].args[1].args[1] === :var1  => true
      #
      # Change should update value 1.2 only
      #
      @fact code.args[2].args[1].args[2] !== 1.2    => true
    end

    context("Testing var = num op num") do
      #
      # It's a little bit hack, because we set unsupported values like 1.1 or 2.2.
      # We have to do so, because they will be changed by some integer or variable,
      # but not float.
      #
      code   = Expr(:function, Expr(:call, :t), Expr(:block, Expr(:(=), :var1, Expr(:call, :+, 1.1, 2.2)))) #:(function t() var1 = 1.1 + 2.2 end)
      blocks = [[
        "vars"  => [:var1],
        "block" => code.args[2],
        "parent"=> [
          "vars"  => [],
          "block" => nothing,
          "parent"=> nothing
        ]
      ]]
      script = Script.Code(0,0,Config.mutator["funcMaxArgs"],code,blocks,[],code.args[2])
      Mutator.mutate(script, [0,1,0])
      #
      # In this particular test var1 should't be changed, because it's only one 
      # variable in a block.
      #
      @fact code.args[2].args[1].args[1] === :var1  => true
      #
      # Change should update 1, + or 2
      #
      args = code.args[2].args[1].args[2].args
      @fact args[1] !== :+ || args[2] !== 1.1 || args[3] !==2.2 => true
    end

    context("Testing var = var") do
      #
      # It's a little bit hack, because we set unsupported values like 1.1 or 2.2.
      # We have to do so, because they will be changed by some integer or variable,
      # but not float.
      #
      code   = Expr(:function, Expr(:call, :t), Expr(:block, Expr(:(=), :var1, :var2))) #:(function t() var1 = var2 end)
      blocks = [[
        "vars"  => [],
        "block" => code.args[2],
        "parent"=> [
          "vars"  => [],
          "block" => nothing,
          "parent"=> nothing
        ]
      ]]
      script = Script.Code(0,0,Config.mutator["funcMaxArgs"],code,blocks,[],code.args[2])
      Mutator.mutate(script, [0,1,0])
      #
      # In this particular test var1 should't be changed, because it's only one 
      # variable in a block.
      #
      @fact code.args[2].args[1].args[1] === :var1 => true
      #
      # Change should update var2 only
      #
      @fact typeof(code.args[2].args[1].args[2]) !== Symbol => true
    end
  end

  facts("Testing Mutator._getProbIndex()...") do
    #
    # We have to do these tests many times, because they 
    # contain randomness. So it's possible, that one test
    # will be passed, but 1000 less possible.
    #
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