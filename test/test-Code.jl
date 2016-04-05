module TestCode
  using FactCheck
  import Code
  import Creature
  import Helper
  import Mutator
  import Config
  #
  # var
  #
  facts("Testing Code.var() in empty script") do
    org = Creature.create()
    var = Code.var(org, Helper.Pos(1,1,1))

    @fact var.head --> :local
    @fact var.args[1].args[1].args[1] --> :var_1
    @fact eval(org.code)(org) --> true
  end
  facts("Testing Code.var() + other Code.var()") do
    org = Creature.create()
    Mutator._onAdd(org, Helper.Pos(1,1,1), Code.CodePart(Code.var, false))
    Mutator._onAdd(org, Helper.Pos(1,1,1), Code.CodePart(Code.var, false))
    
    @fact Helper.getHead(org.code, [2,1]) --> :local
    @fact Helper.getHead(org.code, [2,2]) --> :local
    @fact Helper.getArg(org.code, [2,1,1,1,1]) --> :var_2
    @fact Helper.getArg(org.code, [2,2,1,1,1]) --> :var_1
    @fact eval(org.code)(org) --> true
  end
  facts("Testing Code.var() inside Code.fn()") do
    Config.val(:CODE_MAX_FUNC_PARAMS, 1)
    org = Creature.create()
    Mutator._onAdd(org, Helper.Pos(1,1,1), Code.CodePart(Code.fn, true))
    Mutator._onAdd(org, Helper.Pos(2,1,1), Code.CodePart(Code.var, false))

    @fact Helper.getArg(org.code, [2,1,1,1]) --> :func_2
    @fact Helper.getArg(org.code, [2,1,2,1,1,1,1]) --> :var_3
    @fact eval(org.code)(org) --> true
  end
  #
  # fn
  #
  facts("Testing Code.fn() inside empty script") do
    Config.val(:CODE_MAX_FUNC_PARAMS, 1)
    org = Creature.create()
    Mutator._onAdd(org, Helper.Pos(1,1,1), Code.CodePart(Code.fn, true))
    
    @fact Helper.getArg(org.code, [2,1,1,1]) --> :func_2
    @fact eval(org.code)(org) --> true
  end
  facts("Testing Code.fn() arguments") do
    org = Creature.create()
    Config.val(:CODE_MAX_FUNC_PARAMS, 1)
    Mutator._onAdd(org, Helper.Pos(1,1,1), Code.CodePart(Code.fn, true))
    
    @fact Helper.getArg(org.code, [2,1,1,2,1,1]) --> :var_1
    @fact eval(org.code)(org) --> true
  end
  facts("Testing Code.fn() outside main function") do
    Config.val(:CODE_MAX_FUNC_PARAMS, 1)
    org = Creature.create()
    Mutator._onAdd(org, Helper.Pos(1,1,1), Code.CodePart(Code.fn, true))
    Mutator._onAdd(org, Helper.Pos(2,1,1), Code.CodePart(Code.fn, true))

    @fact length(org.funcs) --> 2
    @fact length(Helper.getLines(org.code, [2,1,2])) --> 1
    @fact eval(org.code)(org) --> true
  end
  facts("Testing Code.fn() + Code.fn()") do
    Config.val(:CODE_MAX_FUNC_PARAMS, 1)
    org = Creature.create()
    Mutator._onAdd(org, Helper.Pos(1,1,1), Code.CodePart(Code.fn, true))
    Mutator._onAdd(org, Helper.Pos(1,1,1), Code.CodePart(Code.fn, true))

    @fact length(org.funcs) --> 3
    @fact length(Helper.getLines(org.code, [2])) --> 3
    @fact Helper.getHead(org.code, [2,1]) --> :function
    @fact Helper.getHead(org.code, [2,2]) --> :function
    @fact eval(org.code)(org) --> true
  end
  facts("Testing Code.fn() should return the value") do
    Config.val(:CODE_MAX_FUNC_PARAMS, 1)
    org = Creature.create()
    Mutator._onAdd(org, Helper.Pos(1,1,1), Code.CodePart(Code.fn, true))
    Mutator._onAdd(org, Helper.Pos(1,1,1), Code.CodePart(Code.fn, true))

    @fact Helper.getHead(org.code, [2,3]) --> :return
    @fact Helper.getHead(org.code, [2,1,2,1]) --> :return
    @fact Helper.getHead(org.code, [2,2,2,1]) --> :return
    @fact eval(org.code)(org) --> true
  end
  #
  # fnCall
  #
  facts("Testing Code.fnCall() in empty script") do
    org = Creature.create()
    Mutator._onAdd(org, Helper.Pos(1,1,1), Code.CodePart(Code.fnCall, false))

    @fact length(Helper.getLines(org.code, [2])) --> 1
    @fact Helper.getHead(org.code, [2,1]) --> :return
    @fact eval(org.code)(org) --> true
  end
  facts("Testing Code.fnCall(), but without a function") do
    org = Creature.create()
    Mutator._onAdd(org, Helper.Pos(1,1,1), Code.CodePart(Code.fnCall, false))
    
    @fact length(Helper.getLines(org.code, [2])) --> 1
    @fact Helper.getHead(org.code, [2,1]) --> :return
    @fact eval(org.code)(org) --> true
  end
  facts("Testing Code.fnCall() for one Code.fn(), but without variables") do
    org = Creature.create()
    Mutator._onAdd(org, Helper.Pos(1,1,1), Code.CodePart(Code.fn, true))
    Mutator._onAdd(org, Helper.Pos(1,1,1), Code.CodePart(Code.fnCall, false))

    @fact length(Helper.getLines(org.code, [2])) --> 2
    @fact Helper.getHead(org.code, [2,1]) --> :function
    @fact Helper.getHead(org.code, [2,2]) --> :return
    @fact eval(org.code)(org) --> true
  end
  facts("Testing Code.fnCall() of one Code.fn()") do
    local org   = Creature.create()
    local lines = org.code.args[2].args
    Mutator._onAdd(org, Helper.Pos(1,1,1), Code.CodePart(Code.fn, true))
    Helper.getSupportedTypes(function (t)
      var = symbol("var_", org.symbolId += 1)
      push!(org.funcs[1].blocks[1].vars[t], var)
      insert!(lines, 1, :(local $(var)::$t=$(t !== ASCIIString ? rand(t) : randstring())))
    end)
    Mutator._onAdd(org, Helper.Pos(1,1,7), Code.CodePart(Code.fnCall, false))

    @fact Helper.getHead(org.code, [2,7]) --> :(=)
    @fact Helper.getArg(org.code, [2,7,2,1]) --> :func_2
    @fact Helper.getArg(org.code, [2,7,1]) --> Helper.getArg(org.code, [2,7,2,2])
    @fact eval(org.code)(org) --> true
  end
  facts("Testing Code.fnCall() after removing Code.fn()") do
    local org   = Creature.create()
    local lines = org.code.args[2].args
    local cp    = Code.CodePart(Code.fn, true)

    Mutator._onAdd(org, Helper.Pos(1,1,1), cp)
    Helper.getSupportedTypes(function (t)
      var = symbol("var_", org.symbolId += 1)
      push!(org.funcs[1].blocks[1].vars[t], var)
      insert!(lines, 1, :(local $(var)::$t=$(t !== ASCIIString ? rand(t) : randstring())))
    end)
    Mutator._onDel(org, Helper.Pos(1,1,6), cp)
    @fact Mutator._onAdd(org, Helper.Pos(1,1,7), Code.CodePart(Code.fnCall, false)) --> false

    @fact length(Helper.getLines(org.code, [2])) --> 6
    @fact length(org.funcs) --> 1
    @fact eval(org.code)(org) --> true
  end
  #
  # if
  #
  facts("Testing Code.condition() with all variables") do
    local org   = Creature.create()
    local lines = org.code.args[2].args

    Helper.getSupportedTypes(function (t)
      var = symbol("var_", org.symbolId += 1)
      push!(org.funcs[1].blocks[1].vars[t], var)
      insert!(lines, 1, :(local $(var)::$t=$(t !== ASCIIString ? rand(t) : randstring())))
    end)
    Mutator._onAdd(org, Helper.Pos(1,1,6), Code.CodePart(Code.condition, true))
    
    @fact length(Helper.getLines(org.code, [2])) --> 7
    @fact Helper.getHead(org.code, [2,6]) --> :if
    @fact length(org.funcs[1].blocks) --> 2
    @fact eval(org.code)(org) --> true
  end
  facts("Testing Code.condition() without variables") do
    local org = Creature.create()

    Mutator._onAdd(org, Helper.Pos(1,1,1), Code.CodePart(Code.condition, true))
    
    @fact length(Helper.getLines(org.code, [2])) --> 1
    @fact eval(org.code)(org) --> true
  end
  facts("Testing Code.condition() inside function") do
    local org = Creature.create()

    Mutator._onAdd(org, Helper.Pos(1,1,1), Code.CodePart(Code.fn, true))
    @fact Helper.getArg(org.code, [2,1,1,1]) --> :func_2
    Mutator._onAdd(org, Helper.Pos(1,1,1), Code.CodePart(Code.condition, true))
    @fact length(Helper.getLines(org.code, [2,1,2])) --> 1
    @fact eval(org.code)(org) --> true
  end
  facts("Testing Code.condition() inside function, with variables") do
    local org   = Creature.create()
    local lines

    Mutator._onAdd(org, Helper.Pos(1,1,1), Code.CodePart(Code.fn, true))
    lines = org.code.args[2].args[1].args[2].args
    @fact Helper.getArg(org.code, [2,1,1,1]) --> :func_2
    Helper.getSupportedTypes(function (t)
      var = symbol("var_", org.symbolId += 1)
      push!(org.funcs[2].blocks[1].vars[t], var)
      insert!(lines, 1, :(local $(var)::$t=$(t !== ASCIIString ? rand(t) : randstring())))
    end)
    Mutator._onAdd(org, Helper.Pos(2,1,6), Code.CodePart(Code.condition, true))
    @fact Helper.getHead(org.code, [2,1,2,6]) --> :if
    @fact eval(org.code)(org) --> true
  end
  facts("Testing Code.condition() inside other Code.condition()") do
    local org = Creature.create()

    Mutator._onAdd(org, Helper.Pos(1,1,1), Code.CodePart(Code.fn, true))
    lines = org.code.args[2].args[1].args[2].args
    @fact Helper.getArg(org.code, [2,1,1,1]) --> :func_2
    Helper.getSupportedTypes(function (t)
      var = symbol("var_", org.symbolId += 1)
      push!(org.funcs[2].blocks[1].vars[t], var)
      insert!(lines, 1, :(local $(var)::$t=$(t !== ASCIIString ? rand(t) : randstring())))
    end)
    @fact Mutator._onAdd(org, Helper.Pos(2,1,6), Code.CodePart(Code.condition, true)) --> true
    @fact Mutator._onAdd(org, Helper.Pos(2,2,1), Code.CodePart(Code.condition, true)) --> false
    @fact length(Helper.getLines(org.code, [2,1,2,6,2])) --> 0
    @fact eval(org.code)(org) --> true
  end
  facts("Testing Code.condition() inside other Code.condition() with variables") do
    local org   = Creature.create()
    local lines = org.code.args[2].args

    Helper.getSupportedTypes(function (t)
      var = symbol("var_", org.symbolId += 1)
      push!(org.funcs[1].blocks[1].vars[t], var)
      insert!(lines, 1, :(local $(var)::$t=$(t !== ASCIIString ? rand(t) : randstring())))
    end)
    Mutator._onAdd(org, Helper.Pos(1,1,6), Code.CodePart(Code.condition, true))

    lines = Helper.getLines(org.code, [2,6,2])
    Helper.getSupportedTypes(function (t)
      var = symbol("var_", org.symbolId += 1)
      push!(org.funcs[1].blocks[2].vars[t], var)
      insert!(lines, 1, :(local $(var)::$t=$(t !== ASCIIString ? rand(t) : randstring())))
    end)
    Mutator._onAdd(org, Helper.Pos(1,2,6), Code.CodePart(Code.condition, true))
    @fact length(Helper.getLines(org.code, [2,6,2])) --> 5
    @fact eval(org.code)(org) --> true
  end
end