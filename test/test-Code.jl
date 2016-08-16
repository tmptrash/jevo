#
# TODO: add combined tests fn+loop, loop+fnCall and so on...
#
module TestCode
  using FactCheck
  import Code
  import Creature
  import Helper
  import Mutator
  import Config

  include("Helper.jl")
  #
  # var
  #
  facts("Testing Code.var() in empty script") do
    conf = Config.create()
    org  = Creature.create(conf)
    var  = Code.var(conf, org, Helper.Pos(1,1,1))

    @fact var.head --> :local
    @fact var.args[1].args[1].args[1] --> :var_1
    @fact Code.eval(org.code)(conf, org) --> true
  end
  facts("Testing Code.var() + other Code.var()") do
    conf = Config.create()
    org  = Creature.create(conf)
    Mutator._onAdd(conf, org, Helper.Pos(1,1,1), Code.CodePart(Code.var, false))
    Mutator._onAdd(conf, org, Helper.Pos(1,1,2), Code.CodePart(Code.var, false))

    @fact Helper.getHead(org.code, [2,1]) --> :local
    @fact Helper.getHead(org.code, [2,2]) --> :local
    @fact Helper.getArg(org.code, [2,1,1,1,1]) --> :var_2
    @fact Helper.getArg(org.code, [2,2,1,1,1]) --> :var_1
    @fact Code.eval(org.code)(conf, org) --> true
  end
  facts("Testing Code.var() inside Code.fn()") do
    conf = Config.create()
    conf.CODE_MAX_FUNC_PARAMS = 1
    org = Creature.create(conf)
    Mutator._onAdd(conf, org, Helper.Pos(1,1,1), Code.CodePart(Code.fn, true))
    Mutator._onAdd(conf, org, Helper.Pos(2,1,1), Code.CodePart(Code.var, false))

    @fact Helper.getArg(org.code, [2,1,1,1]) --> :func_2
    @fact Helper.getArg(org.code, [2,1,2,1,1,1,1]) --> :var_3
    @fact Code.eval(org.code)(conf, org) --> true
  end
  #
  # fn
  #
  facts("Testing Code.fn() inside empty script") do
    conf = Config.create()
    conf.CODE_MAX_FUNC_PARAMS = 1
    org = Creature.create(conf)
    Mutator._onAdd(conf, org, Helper.Pos(1,1,1), Code.CodePart(Code.fn, true))

    @fact Helper.getArg(org.code, [2,1,1,1]) --> :func_2
    @fact Code.eval(org.code)(conf, org) --> true
  end
  facts("Testing Code.fn() arguments") do
    conf = Config.create()
    org  = Creature.create(conf)
    conf.CODE_MAX_FUNC_PARAMS = 1
    Mutator._onAdd(conf, org, Helper.Pos(1,1,1), Code.CodePart(Code.fn, true))

    @fact Helper.getArg(org.code, [2,1,1,2,1,1]) --> :var_1
    @fact Code.eval(org.code)(conf, org) --> true
  end
  facts("Testing Code.fn() outside main function") do
    conf = Config.create()
    conf.CODE_MAX_FUNC_PARAMS = 1
    org = Creature.create(conf)
    Mutator._onAdd(conf, org, Helper.Pos(1,1,1), Code.CodePart(Code.fn, true))
    Mutator._onAdd(conf, org, Helper.Pos(2,1,1), Code.CodePart(Code.fn, true))

    @fact length(org.funcs) --> 2
    @fact length(Helper.getLines(org.code, [2,1,2])) --> 1
    @fact Code.eval(org.code)(conf, org) --> true
  end
  facts("Testing Code.fn() + Code.fn()") do
    conf = Config.create()
    conf.CODE_MAX_FUNC_PARAMS = 1
    org = Creature.create(conf)
    Mutator._onAdd(conf, org, Helper.Pos(1,1,1), Code.CodePart(Code.fn, true))
    Mutator._onAdd(conf, org, Helper.Pos(1,1,2), Code.CodePart(Code.fn, true))

    @fact length(org.funcs) --> 3
    @fact length(Helper.getLines(org.code, [2])) --> 3
    @fact Helper.getHead(org.code, [2,1]) --> :function
    @fact Helper.getHead(org.code, [2,2]) --> :function
    @fact Code.eval(org.code)(conf, org) --> true
  end
  facts("Testing Code.fn() should return the value") do
    conf = Config.create()
    conf.CODE_MAX_FUNC_PARAMS = 1
    org = Creature.create(conf)
    Mutator._onAdd(conf, org, Helper.Pos(1,1,1), Code.CodePart(Code.fn, true))
    Mutator._onAdd(conf, org, Helper.Pos(1,1,2), Code.CodePart(Code.fn, true))

    @fact Helper.getHead(org.code, [2,3]) --> :return
    @fact Helper.getHead(org.code, [2,1,2,1]) --> :return
    @fact Helper.getHead(org.code, [2,2,2,1]) --> :return
    @fact Code.eval(org.code)(conf, org) --> true
  end
  #
  # fnCall
  #
  facts("Testing Code.fnCall() in empty script") do
    conf = Config.create()
    org = Creature.create(conf)
    Mutator._onAdd(conf, org, Helper.Pos(1,1,1), Code.CodePart(Code.fnCall, false))

    @fact length(Helper.getLines(org.code, [2])) --> 1
    @fact Helper.getHead(org.code, [2,1]) --> :return
    @fact Code.eval(org.code)(conf, org) --> true
  end
  facts("Testing Code.fnCall(), but without a function") do
    conf = Config.create()
    org = Creature.create(conf)
    Mutator._onAdd(conf, org, Helper.Pos(1,1,1), Code.CodePart(Code.fnCall, false))

    @fact length(Helper.getLines(org.code, [2])) --> 1
    @fact Helper.getHead(org.code, [2,1]) --> :return
    @fact Code.eval(org.code)(conf, org) --> true
  end
  facts("Testing Code.fnCall() for one Code.fn(), but without variables") do
    conf = Config.create()
    org = Creature.create(conf)
    Mutator._onAdd(conf, org, Helper.Pos(1,1,1), Code.CodePart(Code.fn, true))
    Mutator._onAdd(conf, org, Helper.Pos(1,1,1), Code.CodePart(Code.fnCall, false))

    @fact length(Helper.getLines(org.code, [2])) --> 2
    @fact Helper.getHead(org.code, [2,1]) --> :function
    @fact Helper.getHead(org.code, [2,2]) --> :return
    @fact Code.eval(org.code)(conf, org) --> true
  end
  facts("Testing Code.fnCall() of one Code.fn()") do
    local conf = Config.create()
    local org = Creature.create(conf)

    conf.CODE_MAX_FUNC_PARAMS = 1
    Mutator._onAdd(conf, org, Helper.Pos(1,1,1), Code.CodePart(Code.fn, true))
    addVars(org, [2], Helper.Pos(1,1,1))
    Mutator._onAdd(conf, org, Helper.Pos(1,1,7), Code.CodePart(Code.fnCall, false))

    @fact Helper.getHead(org.code, [2,7]) --> :(=)
    @fact Helper.getArg(org.code, [2,7,2,1]) --> :func_2
    @fact Helper.getArg(org.code, [2,7,1]) --> Helper.getArg(org.code, [2,7,2,2])
    @fact Code.eval(org.code)(conf, org) --> true
  end
  facts("Testing Code.fnCall() after removing Code.fn()") do
    local conf = Config.create()
    local org  = Creature.create(conf)
    local cp   = Code.CodePart(Code.fn, true)

    Mutator._onAdd(conf, org, Helper.Pos(1,1,1), cp)
    addVars(org, [2], Helper.Pos(1,1,1))
    Mutator._onDel(conf, org, Helper.Pos(1,1,6), cp)
    @fact Mutator._onAdd(conf, org, Helper.Pos(1,1,7), Code.CodePart(Code.fnCall, false)) --> false

    @fact length(Helper.getLines(org.code, [2])) --> 6
    @fact length(org.funcs) --> 1
    @fact Code.eval(org.code)(conf, org) --> true
  end
  #
  # if
  #
  facts("Testing Code.condition() with all variables") do
    local conf = Config.create()
    local org  = Creature.create(conf)

    addVars(org, [2], Helper.Pos(1,1,1))
    Mutator._onAdd(conf, org, Helper.Pos(1,1,6), Code.CodePart(Code.condition, true))

    @fact length(Helper.getLines(org.code, [2])) --> 7
    @fact Helper.getHead(org.code, [2,6]) --> :if
    @fact length(org.funcs[1].blocks) --> 2
    @fact Code.eval(org.code)(conf, org) --> true
  end
  facts("Testing Code.condition() without variables") do
    local conf = Config.create()
    local org  = Creature.create(conf)

    Mutator._onAdd(conf, org, Helper.Pos(1,1,1), Code.CodePart(Code.condition, true))

    @fact length(Helper.getLines(org.code, [2])) --> 1
    @fact Code.eval(org.code)(conf, org) --> true
  end
  facts("Testing Code.condition() inside function") do
    local conf = Config.create()
    local org  = Creature.create(conf)

    conf.CODE_MAX_FUNC_PARAMS = 1
    Mutator._onAdd(conf, org, Helper.Pos(1,1,1), Code.CodePart(Code.fn, true))
    @fact Helper.getArg(org.code, [2,1,1,1]) --> :func_2
    Mutator._onAdd(conf, org, Helper.Pos(1,1,1), Code.CodePart(Code.condition, true))
    @fact length(Helper.getLines(org.code, [2,1,2])) --> 1
    @fact Code.eval(org.code)(conf, org) --> true
  end
  facts("Testing Code.condition() inside function, with variables") do
    local conf = Config.create()
    local org  = Creature.create(conf)

    conf.CODE_MAX_FUNC_PARAMS = 1
    Mutator._onAdd(conf, org, Helper.Pos(1,1,1), Code.CodePart(Code.fn, true))
    @fact Helper.getArg(org.code, [2,1,1,1]) --> :func_2

    addVars(org, [2,1,2], Helper.Pos(2,1,1))
    Mutator._onAdd(conf, org, Helper.Pos(2,1,6), Code.CodePart(Code.condition, true))
    @fact Helper.getHead(org.code, [2,1,2,6]) --> :if
    @fact Code.eval(org.code)(conf, org) --> true
  end
  facts("Testing Code.condition() inside other Code.condition()") do
    local conf = Config.create()
    local org  = Creature.create(conf)

    conf.CODE_MAX_FUNC_PARAMS = 1
    Mutator._onAdd(conf, org, Helper.Pos(1,1,1), Code.CodePart(Code.fn, true))
    @fact Helper.getArg(org.code, [2,1,1,1]) --> :func_2
    addVars(org, [2,1,2], Helper.Pos(2,1,1))
    @fact Mutator._onAdd(conf, org, Helper.Pos(2,1,6), Code.CodePart(Code.condition, true)) --> true
    @fact Mutator._onAdd(conf, org, Helper.Pos(2,2,1), Code.CodePart(Code.condition, true)) --> false
    @fact length(Helper.getLines(org.code, [2,1,2,6,2])) --> 0
    @fact Code.eval(org.code)(conf, org) --> true
  end
  facts("Testing Code.condition() inside other Code.condition() with variables") do
    local conf = Config.create()
    local org  = Creature.create(conf)

    addVars(org, [2], Helper.Pos(1,1,1))
    Mutator._onAdd(conf, org, Helper.Pos(1,1,6), Code.CodePart(Code.condition, true))

    addVars(org, [2,6,2], Helper.Pos(1,2,1))
    Mutator._onAdd(conf, org, Helper.Pos(1,2,6), Code.CodePart(Code.condition, true))
    @fact length(Helper.getLines(org.code, [2,6,2])) --> 5
    @fact Code.eval(org.code)(conf, org) --> true
  end
  #
  # for
  #
  facts("Testing Code.loop() and empty code") do
    local conf = Config.create()
    local org  = Creature.create(conf)

    Mutator._onAdd(conf, org, Helper.Pos(1,1,1), Code.CodePart(Code.loop, true))

    @fact length(Helper.getLines(org.code, [2])) --> 1
    @fact Code.eval(org.code)(conf, org) --> true
  end
  facts("Testing Code.loop() and one variable") do
    local conf  = Config.create()
    local org   = Creature.create(conf)
    local var   = symbol("var_", org.symbolId += 1)
    local lines = org.code.args[2].args

    push!(org.funcs[1].blocks[1].vars[Int8], var)
    insert!(lines, 1, :(local $(var)::Int8=12))
    Mutator._onAdd(conf, org, Helper.Pos(1,1,2), Code.CodePart(Code.loop, true))

    @fact Helper.getHead(org.code, [2,2]) --> :for
    @fact Code.eval(org.code)(conf, org) --> true
  end
  facts("Testing Code.loop() inside other Code.loop() without Code.var()") do
    local conf  = Config.create()
    local org   = Creature.create(conf)
    local var   = symbol("var_", org.symbolId += 1)
    local lines = org.code.args[2].args

    push!(org.funcs[1].blocks[1].vars[Int8], var)
    insert!(lines, 1, :(local $(var)::Int8=12))
    Mutator._onAdd(conf, org, Helper.Pos(1,1,2), Code.CodePart(Code.loop, true))
    Mutator._onAdd(conf, org, Helper.Pos(1,2,1), Code.CodePart(Code.loop, true))
    @fact length(Helper.getLines(org.code, [2,2,2])) --> 0
    @fact Code.eval(org.code)(conf, org) --> true
  end
  facts("Testing Code.loop() inside other Code.loop() with Code.var()") do
    local conf = Config.create()
    local org  = Creature.create(conf)

    addVar(org, [2], Helper.Pos(1,1,1), Int8)
    Mutator._onAdd(conf, org, Helper.Pos(1,1,2), Code.CodePart(Code.loop, true))
    addVar(org, [2,2,2], Helper.Pos(1,2,1), Int8)
    Mutator._onAdd(conf, org, Helper.Pos(1,2,1), Code.CodePart(Code.loop, true))

    @fact length(Helper.getLines(org.code, [2,2,2])) --> 1
    @fact Code.eval(org.code)(conf, org) --> true
  end
  facts("Testing Code.loop() near other Code.loop()") do
    local conf = Config.create()
    local org  = Creature.create(conf)

    addVar(org, [2], Helper.Pos(1,1,1), Int8)
    Mutator._onAdd(conf, org, Helper.Pos(1,1,2), Code.CodePart(Code.loop, true))
    Mutator._onAdd(conf, org, Helper.Pos(1,1,3), Code.CodePart(Code.loop, true))

    @fact Helper.getHead(org.code, [2,2]) --> :for
    @fact Helper.getHead(org.code, [2,3]) --> :for
    @fact length(Helper.getLines(org.code, [2])) --> 4
    @fact Code.eval(org.code)(conf, org) --> true
  end
  #
  # commands mix
  #
  facts("Testing Code.fn() inside Code.loop()") do
    local conf = Config.create()
    local org  = Creature.create(conf)

    addVars(org, [2], Helper.Pos(1,1,1))
    Mutator._onAdd(conf, org, Helper.Pos(1,1,6), Code.CodePart(Code.loop, true))
    Mutator._onAdd(conf, org, Helper.Pos(1,2,1), Code.CodePart(Code.fn, true))

    @fact length(Helper.getLines(org.code, [2])) --> 7
    @fact length(Helper.getLines(org.code, [2,6,2])) --> 0
    @fact Code.eval(org.code)(conf, org) --> true
  end
  facts("Testing Code.loop() inside Code.fn()") do
    local conf = Config.create()
    local org  = Creature.create(conf)

    conf.CODE_MAX_FUNC_PARAMS = 1
    Mutator._onAdd(conf, org, Helper.Pos(1,1,1), Code.CodePart(Code.fn, true))
    addVar(org, [2,1,2], Helper.Pos(2,1,1), Int8)
    Mutator._onAdd(conf, org, Helper.Pos(2,1,2), Code.CodePart(Code.loop, true))

    @fact length(Helper.getLines(org.code, [2])) --> 2
    @fact length(Helper.getLines(org.code, [2,1,2])) --> 3
    @fact Code.eval(org.code)(conf, org) --> true
  end
end
