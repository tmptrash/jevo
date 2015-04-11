#
# TODO: This module has pasponed. It will be continued only after
# TODO: first stable version will appear.
#
module TestMutator
  using FactCheck
  using Mutator
  using Script
  using Config
  # TODO: remove this
  using Debug

  #
  # Checks if specified variable assign line is valid. It checks
  # all possible variants (full, short, with function,...)
  # @param block Current code block
  # @param expr Expression without assign var. e.g.: v = ...
  # In this case without "v".
  #
  function _testVar(block::Script.Block, expr::Expr)
    if typeof(expr) === Int || # var = const
       _isSignedVar(expr)      # var = sign{const|var}
      return true
    end

    false
  end


  facts("Testing Mutator._addVar()...") do
    code   = :(function t() end)
    blocks = [Script.Block(
      [:var2],
      code.args[2],
      Script.Block(
        Symbol[],
        Expr(:call, :~, 1)
      )
    )]
    script = Script.Code(
      0,0,Config.mutator["funcMaxArgs"],
      code,
      blocks,
      Script.Func[],
      code.args[2]
    )
    Mutator._addVar(script)
    #
    # After adding a var assign line it might be only one in block
    #
    @fact length(code.args[2].args)              => 1
    #
    # Before adding there is no variables in current block,
    # so first variable will be "var1"
    #
    @fact code.args[2].args[1].args[1]           => :(var1)
    #@fact _testVar(code.args[2].args[2].args[2]) => true
  end

  # facts("Testing 'add' logic of Mutator.mutate()...") do
  #   #
  #   # Because of randomness, we have to be sure that all variants of
  #   # possible addings will be applied. So we use 1000 times here... 
  #   #
  #   for i = 1:1000
  #     #
  #     # Every time we have to start with default script
  #     #
  #     code   = :(function t() function f() end end)
  #     blocks = [[
  #       "vars"  => Symbol[],
  #       "block" => code.args[2],
  #       "parent"=> [
  #         "vars"  => [],
  #         "block" => nothing,
  #         "parent"=> nothing
  #       ]
  #     ]]
  #     #
  #     # We need to have at least one function, because in case of call _addFuncCall()
  #     # there will be nothing to call and @fact will fail. Second important issue,
  #     # that this function should in the same block with other code (function t()...end)
  #     #
  #     script = Script.Code(0,0,Config.mutator["funcMaxArgs"],code,blocks,[["name"=>"f", "args"=>[]]],code.args[2])
  #     Mutator.mutate(script, [1,0,0])
  #     #
  #     # > 1, because this block already has function t() and our new code,
  #     # added in Mutator.mutate() function. See code for details.
  #     #
  #     @fact length(code.args[2].args) > 1 => true
  #   end
  # end

  # facts("Testing 'change' logic of Mutator.mutate()...") do
  #   context("Testing var = num") do
  #     #
  #     # It's a little bit hack, because we set unsupported values like 1.1 or 2.2.
  #     # We have to do so, because they will be changed by some integer or variable,
  #     # but not float. The same about / (right divide). We don't support it.
  #     #
  #     code   = Expr(:function, Expr(:call, :t), Expr(:block, Expr(:(=), :var1, 1.2))) #:(function t() var1 = 1.2 end)
  #     blocks = [[
  #       "vars"  => [:var1],
  #       "block" => code.args[2],
  #       "parent"=> [
  #         "vars"  => [],
  #         "block" => nothing,
  #         "parent"=> nothing
  #       ]
  #     ]]
  #     script = Script.Code(0,0,Config.mutator["funcMaxArgs"],code,blocks,[],code.args[2])
  #     Mutator.mutate(script, [0,1,0])
  #     #
  #     # In this particular test var1 should't be changed, because it's only one 
  #     # variable in a block.
  #     #
  #     @fact code.args[2].args[1].args[1] === :var1  => true
  #     #
  #     # Change should update value 1.2 only
  #     #
  #     @fact code.args[2].args[1].args[2] !== 1.2    => true
  #   end
  #   context("Testing var = num op num") do
  #     #
  #     # It's a little bit hack, because we set unsupported values like 1.1 or 2.2.
  #     # We have to do so, because they will be changed by some integer or variable,
  #     # but not float. The same about / (right divide). We don't support it.
  #     #
  #     code   = Expr(:function, Expr(:call, :t), Expr(:block, Expr(:(=), :var1, Expr(:call, :/, 1.1, 2.2)))) #:(function t() var1 = 1.1 / 2.2 end)
  #     blocks = [[
  #       "vars"  => [:var1],
  #       "block" => code.args[2],
  #       "parent"=> [
  #         "vars"  => [],
  #         "block" => nothing,
  #         "parent"=> nothing
  #       ]
  #     ]]
  #     script = Script.Code(0,0,Config.mutator["funcMaxArgs"],code,blocks,[],code.args[2])
  #     Mutator.mutate(script, [0,1,0])
  #     #
  #     # In this particular test var1 should't be changed, because it's only one 
  #     # variable in a block.
  #     #
  #     @fact code.args[2].args[1].args[1] === :var1  => true
  #     #
  #     # Change should update 1, + or 2
  #     #
  #     args = code.args[2].args[1].args[2].args
  #     @fact args[1] !== :/ || args[2] !== 1.1 || args[3] !== 2.2 => true
  #   end
  #   context("Testing var = var") do
  #     #
  #     # It's a little bit hack, because we set unsupported values like 1.1 or 2.2.
  #     # We have to do so, because they will be changed by some integer or variable,
  #     # but not float. The same about / (right divide). We don't support it.
  #     #
  #     code   = Expr(:function, Expr(:call, :t), Expr(:block, Expr(:(=), :var1, :var2))) #:(function t() var1 = var2 end)
  #     blocks = [[
  #       "vars"  => [],
  #       "block" => code.args[2],
  #       "parent"=> [
  #         "vars"  => [],
  #         "block" => nothing,
  #         "parent"=> nothing
  #       ]
  #     ]]
  #     script = Script.Code(0,0,Config.mutator["funcMaxArgs"],code,blocks,[],code.args[2])
  #     Mutator.mutate(script, [0,1,0])
  #     #
  #     # In this particular test var1 should't be changed, because it's only one 
  #     # variable in a block.
  #     #
  #     @fact code.args[2].args[1].args[1] === :var1 => true
  #     #
  #     # Change should update var2 only
  #     #
  #     @fact typeof(code.args[2].args[1].args[2]) !== Symbol => true
  #   end
  #   context("Testing var = var op var") do
  #     #
  #     # It's a little bit hack, because we set unsupported values like 1.1 or 2.2.
  #     # We have to do so, because they will be changed by some integer or variable,
  #     # but not float. The same about / (right divide). We don't support it.
  #     #
  #     code   = Expr(:function, Expr(:call, :t), Expr(:block, Expr(:(=), :var1, Expr(:call, :/, :var2, :var3)))) #:(function t() var1 = var2 / var3 end)
  #     blocks = [[
  #       "vars"  => [:var4],
  #       "block" => code.args[2],
  #       "parent"=> [
  #         "vars"  => [],
  #         "block" => nothing,
  #         "parent"=> nothing
  #       ]
  #     ]]
  #     script = Script.Code(0,0,Config.mutator["funcMaxArgs"],code,blocks,[],code.args[2])
  #     Mutator.mutate(script, [0,1,0])
  #     #
  #     # In this particular test var1 should't be changed, because it's only one 
  #     # variable in a block.
  #     #
  #     @fact code.args[2].args[1].args[1] === :var1  => true
  #     #
  #     # Change should update 1, + or 2
  #     #
  #     args = code.args[2].args[1].args[2].args
  #     @fact args[1] !== :/ || args[2] !== :var2 || args[3] !== :var3 => true
  #   end
  #   context("Testing var = var op num") do
  #     #
  #     # It's a little bit hack, because we set unsupported values like 1.1 or 2.2.
  #     # We have to do so, because they will be changed by some integer or variable,
  #     # but not float. The same about / (right divide). We don't support it.
  #     #
  #     code   = Expr(:function, Expr(:call, :t), Expr(:block, Expr(:(=), :var1, Expr(:call, :/, :var2, 2.2)))) #:(function t() var1 = var2 / 2.2 end)
  #     blocks = [[
  #       "vars"  => [:var4],
  #       "block" => code.args[2],
  #       "parent"=> [
  #         "vars"  => [],
  #         "block" => nothing,
  #         "parent"=> nothing
  #       ]
  #     ]]
  #     script = Script.Code(0,0,Config.mutator["funcMaxArgs"],code,blocks,[],code.args[2])
  #     Mutator.mutate(script, [0,1,0])
  #     #
  #     # In this particular test var1 should't be changed, because it's only one 
  #     # variable in a block.
  #     #
  #     @fact code.args[2].args[1].args[1] === :var1  => true
  #     #
  #     # Change should update 1, + or 2
  #     #
  #     args = code.args[2].args[1].args[2].args
  #     @fact args[1] !== :/ || args[2] !== :var2 || args[3] !== 2.2 => true
  #   end
  #   context("Testing var = num op var") do
  #     #
  #     # It's a little bit hack, because we set unsupported values like 1.1 or 2.2.
  #     # We have to do so, because they will be changed by some integer or variable,
  #     # but not float. The same about / (right divide). We don't support it.
  #     #
  #     code   = Expr(:function, Expr(:call, :t), Expr(:block, Expr(:(=), :var1, Expr(:call, :/, 2.2, :var2)))) #:(function t() var1 = var2 / 2.2 end)
  #     blocks = [[
  #       "vars"  => [:var4],
  #       "block" => code.args[2],
  #       "parent"=> [
  #         "vars"  => [],
  #         "block" => nothing,
  #         "parent"=> nothing
  #       ]
  #     ]]
  #     script = Script.Code(0,0,Config.mutator["funcMaxArgs"],code,blocks,[],code.args[2])
  #     Mutator.mutate(script, [0,1,0])
  #     #
  #     # In this particular test var1 should't be changed, because it's only one 
  #     # variable in a block.
  #     #
  #     @fact code.args[2].args[1].args[1] === :var1  => true
  #     #
  #     # Change should update 1, + or 2
  #     #
  #     args = code.args[2].args[1].args[2].args
  #     @fact args[1] !== :/ || args[2] !== 2.2 || args[3] !== :var2 => true
  #   end
  #   context("Testing var = sign var") do
  #     #
  #     # It's a little bit hack, because we set unsupported values like 1.1 or 2.2.
  #     # We have to do so, because they will be changed by some integer or variable,
  #     # but not float. The same about / (right divide). We don't support it.
  #     #
  #     code   = Expr(:function, Expr(:call, :t), Expr(:block, Expr(:(=), :var1, Expr(:call, :-, :var2)))) #:(function t() var1 = -var2 end)
  #     blocks = [[
  #       "vars"  => [:var3],
  #       "block" => code.args[2],
  #       "parent"=> [
  #         "vars"  => [],
  #         "block" => nothing,
  #         "parent"=> nothing
  #       ]
  #     ]]
  #     script = Script.Code(0,0,Config.mutator["funcMaxArgs"],code,blocks,[],code.args[2])
  #     Mutator.mutate(script, [0,1,0])
  #     #
  #     # In this particular test var1 should't be changed, because it's only one 
  #     # variable in a block.
  #     #
  #     @fact code.args[2].args[1].args[1] === :var1 => true
  #     #
  #     # Change should update var2 only
  #     #
  #     args = code.args[2].args[1].args[2].args
  #     @fact args[1] !== :- || args[2] !== :var2 => true
  #   end

  #   context("Testing for var={var|num}:{var|num} end") do
  #     #
  #     # It's a little bit hack, because we set unsupported values like 1.1 or 2.2.
  #     # We have to do so, because they will be changed by some integer or variable,
  #     # but not float. The same about / (right divide). We don't support it.
  #     #
  #     code   = Expr(:function, Expr(:call, :t), Expr(:block, Expr(:for, Expr(:(=), :var1, Expr(:(:), 1.1, 2.2)), Expr(:block,)))) #:(function t() for var1=1.1:2.2 end end)
  #     blocks = [[
  #       "vars"  => [:var2],
  #       "block" => code.args[2],
  #       "parent"=> [
  #         "vars"  => [],
  #         "block" => nothing,
  #         "parent"=> nothing
  #       ]
  #     ]]
  #     script = Script.Code(0,0,Config.mutator["funcMaxArgs"],code,blocks,[],code.args[2])
  #     Mutator.mutate(script, [0,1,0])
  #     #
  #     # In this particular test var1 should't be changed, because it's only one 
  #     # variable in a block.
  #     #
  #     @fact code.args[2].args[1].args[1].args[1] === :var1 => true
  #     #
  #     # Change should update var2 only
  #     #
  #     args = code.args[2].args[1].args[1].args[2].args
  #     @fact args[1] !== 1.1 || args[2] !== 2.2 => true
  #   end

  #   context("Testing if var cond var end") do
  #     #
  #     # It's a little bit hack, because we set unsupported values like 1.1 or 2.2.
  #     # We have to do so, because they will be changed by some integer or variable,
  #     # but not float.
  #     #
  #     code   = Expr(:function, Expr(:call, :t), Expr(:block, Expr(:if, Expr(:comparison, 1.1, :≥, 2.2), Expr(:block,)))) #:(function t() if 1.1 ≥ 2.2 end end)
  #     blocks = [[
  #       "vars"  => [:var2],
  #       "block" => code.args[2],
  #       "parent"=> [
  #         "vars"  => [],
  #         "block" => nothing,
  #         "parent"=> nothing
  #       ]
  #     ]]
  #     script = Script.Code(0,0,Config.mutator["funcMaxArgs"],code,blocks,[],code.args[2])
  #     Mutator.mutate(script, [0,1,0])
  #     #
  #     # In case of if operator only left, right operands and comparison operation may be changed
  #     #
  #     args = code.args[2].args[1].args[1].args 
  #     @fact args[1] !== 1.1 || [2] !== :≥ || args[3] !== 2.2 => true
  #   end

  #   context("Testing func(args)") do
  #     #
  #     # It's a little bit hack, because we set unsupported values like 1.1 or 2.2.
  #     # We have to do so, because they will be changed by some integer or variable,
  #     # but not float.
  #     #
  #     code   = Expr(:function, Expr(:call, :t), Expr(:block, Expr(:call, :f, :var1, :var2))) #:(function t() f(var1, var2) end)
  #     blocks = [[
  #       "vars"  => [:var3],
  #       "block" => code.args[2],
  #       "parent"=> [
  #         "vars"  => [],
  #         "block" => nothing,
  #         "parent"=> nothing
  #       ]
  #     ]]
  #     script = Script.Code(0,0,Config.mutator["funcMaxArgs"],code,blocks,[],code.args[2])
  #     Mutator.mutate(script, [0,1,0])
      
  #     args = code.args[2].args[1].args
  #     #
  #     # In case of function call only arguments may be changed
  #     #
  #     @fact args[1] === :f && args[2] !== :var1 || args[3] !== :var2 => true
  #   end
  # end

  # facts("Testing 'del' logic of Mutator.mutate()...") do
  #   context("Testing variable delete...") do
  #     #
  #     # It's a little bit hack, because we set unsupported values like 1.1 or 2.2.
  #     # We have to do so, because they will be changed by some integer or variable,
  #     # but not float. The same about / (right divide). We don't support it.
  #     #
  #     code   = Expr(:function, Expr(:call, :t), Expr(:block, Expr(:(=), :var1, 1))) #:(function t() var1 = 1 end)
  #     blocks = [[
  #       "vars"  => [],
  #       "block" => code.args[2],
  #       "parent"=> [
  #         "vars"  => [],
  #         "block" => nothing,
  #         "parent"=> nothing
  #       ]
  #     ]]
  #     script = Script.Code(0,0,Config.mutator["funcMaxArgs"],code,blocks,[],code.args[2])
  #     Mutator.mutate(script, [0,0,1])

  #     @fact length(code.args[2].args) => 0
  #   end
  #   context("Testing for operator delete...") do
  #     #
  #     # It's a little bit hack, because we set unsupported values like 1.1 or 2.2.
  #     # We have to do so, because they will be changed by some integer or variable,
  #     # but not float. The same about / (right divide). We don't support it.
  #     #
  #     code   = Expr(:function, Expr(:call, :t), Expr(:block, Expr(:for, Expr(:(=), :var1, Expr(:(:), 1.1, 2.2)), Expr(:block,)))) #:(function t() for var1=1.1:2.2 end end)
  #     blocks = [[
  #       "vars"  => [],
  #       "block" => code.args[2],
  #       "parent"=> [
  #         "vars"  => [],
  #         "block" => nothing,
  #         "parent"=> nothing
  #       ]
  #     ]]
  #     script = Script.Code(0,0,Config.mutator["funcMaxArgs"],code,blocks,[],code.args[2])
  #     Mutator.mutate(script, [0,0,1])

  #     @fact length(code.args[2].args) => 0
  #   end
  #   context("Testing if operator delete...") do
  #     #
  #     # It's a little bit hack, because we set unsupported values like 1.1 or 2.2.
  #     # We have to do so, because they will be changed by some integer or variable,
  #     # but not float. The same about / (right divide). We don't support it.
  #     #
  #     code   = Expr(:function, Expr(:call, :t), Expr(:block, Expr(:if, Expr(:comparison, 1.1, :≥, 2.2), Expr(:block,)))) #:(function t() if 1.1 ≥ 2.2 end end)
  #     blocks = [[
  #       "vars"  => [],
  #       "block" => code.args[2],
  #       "parent"=> [
  #         "vars"  => [],
  #         "block" => nothing,
  #         "parent"=> nothing
  #       ]
  #     ]]
  #     script = Script.Code(0,0,Config.mutator["funcMaxArgs"],code,blocks,[],code.args[2])
  #     Mutator.mutate(script, [0,0,1])

  #     @fact length(code.args[2].args) => 0
  #   end
  #   context("Testing custom function delete...") do
  #     #
  #     # It's a little bit hack, because we set unsupported values like 1.1 or 2.2.
  #     # We have to do so, because they will be changed by some integer or variable,
  #     # but not float. The same about / (right divide). We don't support it.
  #     #
  #     code   = Expr(:function, Expr(:call, :t), Expr(:block, Expr(:function, Expr(:call, :m), Expr(:block,)))) #:(function t() function m() end end)
  #     blocks = [[
  #       "vars"  => [],
  #       "block" => code.args[2],
  #       "parent"=> [
  #         "vars"  => [],
  #         "block" => nothing,
  #         "parent"=> nothing
  #       ]
  #     ]]
  #     script = Script.Code(0,0,Config.mutator["funcMaxArgs"],code,blocks,[],code.args[2])
  #     Mutator.mutate(script, [0,0,1])

  #     @fact length(code.args[2].args) => 0
  #   end
  #   context("Testing function call delete...") do
  #     #
  #     # It's a little bit hack, because we set unsupported values like 1.1 or 2.2.
  #     # We have to do so, because they will be changed by some integer or variable,
  #     # but not float. The same about / (right divide). We don't support it.
  #     #
  #     code   = Expr(:function, Expr(:call, :t), Expr(:block, Expr(:call, :m, :var1))) #:(function t() m(var1) end end)

  #     blocks = [[
  #       "vars"  => [],
  #       "block" => code.args[2],
  #       "parent"=> [
  #         "vars"  => [],
  #         "block" => nothing,
  #         "parent"=> nothing
  #       ]
  #     ]]
  #     script = Script.Code(0,0,Config.mutator["funcMaxArgs"],code,blocks,[],code.args[2])
  #     Mutator.mutate(script, [0,0,1])

  #     @fact length(code.args[2].args) => 0
  #   end
  # end

  # # TODO: should be moved to TestHelper module
  # facts("Testing Mutator._getProbIndex()...") do
  #   #
  #   # We have to do these tests many times, because they 
  #   # contain randomness. So it's possible, that one test
  #   # will be passed, but 1000 less possible.
  #   #
  #   for i = 1:1000
  #     @fact Mutator._getProbIndex([1])     => 1
  #     @fact Mutator._getProbIndex([1,2])   => anyof(1,2)
  #     @fact Mutator._getProbIndex([1,2,3]) => anyof(1,2,3)
  #     @fact Mutator._getProbIndex([1,0,0]) => 1
  #     @fact Mutator._getProbIndex([0,1,0]) => 2
  #     @fact Mutator._getProbIndex([0,0,1]) => 3
  #   end
  #   @fact_throws Mutator._getProbIndex([])
  # end

  #
  # Returns true if expression is a: var = sign{const|var}
  #
  function _isSignedVar(expr)
    typeof(expr) === Expr         &&
    Script.isSign(expr.args[1])   && 
    length(expr.args) === 2       && 
    (typeof(expr.args[2]) === Int || typeof(expr.args[2]) === Symbol)
  end
end