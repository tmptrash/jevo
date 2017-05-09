#
# TODO: add combined tests fn+loop, loop+fnCall and so on...
#
module TestCode
  using FactCheck
  import Code
  import Creature
  import Creature.f16
  import Helper
  import Mutator
  import Config
  include("Helper.jl")
  #
  # fn
  #
  facts("Testing if Code.fn() is added into empty script") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:codeFuncParamAmount=>1))
    local org = d.orgs[1]

    code(d, :fn, org)
    @fact Helper.getArg(org.code, [2,2,1,1]) --> :func_2
    @fact Code.eval(org.code)(d.cfg, org) --> val(org)

    Manager.destroy(d.man)
  end
  facts("Testing two Code.fn()") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:codeFuncParamAmount=>1))
    local org = d.orgs[1]

    code(d, :fn, org)
    code(d, :fn, org)
    @fact length(org.funcs) --> 3
    @fact length(Helper.getLines(org.code, [2])) --> 4
    @fact Code.eval(org.code)(d.cfg, org) --> val(org)

    Manager.destroy(d.man)
  end
  #
  # fnCall
  #
  facts("Testing Code.fnCall(), but without a function") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
    local org = d.orgs[1]

    code(d, :fnCall, org)

    @fact length(Helper.getLines(org.code, [2])) --> 2
    @fact Code.eval(org.code)(d.cfg, org) --> val(org)

    Manager.destroy(d.man)
  end
  facts("Testing Code.fnCall() for one Code.fn()") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
    local org = d.orgs[1]

    code(d, :fn, org)
    code(d, :fnCall, org)

    @fact length(Helper.getLines(org.code, [2])) --> 4
    @fact Helper.getHead(org.code, [2,2]) --> :function
    @fact Helper.getHead(org.code, [2,4]) --> :return
    @fact Code.eval(org.code)(d.cfg, org) --> val(org)

    Manager.destroy(d.man)
  end
  facts("Testing Code.fnCall() for one Code.fn() with body") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:codeFuncParamAmount=>1))
    local org = d.orgs[1]

    code(d, :fn, org)
    code(d, :plus, org, [2,1,1])
    code(d, :fnCall, org)

    @fact length(Helper.getLines(org.code, [2])) --> 4
    @fact Helper.getHead(org.code, [2,2]) --> :function
    @fact Helper.getHead(org.code, [2,4]) --> :return
    @fact Code.eval(org.code)(d.cfg, org) --> val(org) + val(org)

    Manager.destroy(d.man)
  end
  facts("Testing Code.fnCall() after removing Code.fn()") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:codeFuncParamAmount=>1))
    local org = d.orgs[1]

    code(d, :fn, org)
    Mutator._onDel(d.cfg, org, Helper.CodePos(1,1,Creature.VAR_AMOUNT + 1), Code.CodePart(Code.fn, true))
    code(d, :fnCall, org)
    @fact length(Helper.getLines(org.code, [2])) --> Creature.VAR_AMOUNT + 1
    @fact length(org.funcs) --> 1
    @fact Code.eval(org.code)(d.cfg, org) --> val(org)
    #
    # Adding another function and it's call
    #
    code(d, :fn, org)
    code(d, :fnCall, org)
    @fact length(org.funcs) --> 2
    Mutator._onDel(d.cfg, org, Helper.CodePos(1,1,Creature.VAR_AMOUNT + 2), Code.CodePart(Code.fn, true))
    code(d, :fnCall, org)
    @fact length(org.funcs) --> 2
    @fact length(Helper.getLines(org.code, [2])) --> Creature.VAR_AMOUNT + 3
    @fact Code.eval(org.code)(d.cfg, org) --> val(org)

    Manager.destroy(d.man)
  end
  facts("Testing two Code.fnCall() for one Code.fn()") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:codeFuncParamAmount=>1))
    local org = d.orgs[1]
    local index = Creature.VAR_AMOUNT + 3

    code(d, :fn, org)
    code(d, :fnCall, org)
    code(d, :fnCall, org)

    @fact Helper.getHead(org.code, [2,index]) --> :(=)
    @fact Helper.getArg(org.code, [2,index,2,1]) --> :func_2
    @fact Code.eval(org.code)(d.cfg, org) --> val(org)

    Manager.destroy(d.man)
  end
  #
  # if
  #
  facts("Testing Code.condition() with body") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:codeFuncParamAmount=>1))
    local org = d.orgs[1]

    code(d, :condition, org)
    #
    # Updates compare operator to "===" to make condition true all the time
    #
    Helper.getArg(org.code, [2,2,1]).args[1] = :(===)
    Mutator._onAdd(d.cfg, org, Helper.CodePos(1,2,1), Code.CodePart(Code.pi, false))
    updateCode(org)
    @fact length(org.funcs[1].blocks) --> 2
    @fact Code.eval(org.code)(d.cfg, org) --> Float16(Base.pi)

    Manager.destroy(d.man)
  end
  facts("Testing Code.condition() inside function") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:codeFuncParamAmount=>1))
    local org = d.orgs[1]

    code(d, :fn, org)
    Mutator._onAdd(d.cfg, org, Helper.CodePos(2,1,2), Code.CodePart(Code.condition, true))
    @fact Helper.getHead(org.code, [2,2,2,2]) --> :if
    @fact Code.eval(org.code)(d.cfg, org) --> val(org)

    Manager.destroy(d.man)
  end
  facts("Testing Code.condition() inside other Code.condition()") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
    local org = d.orgs[1]
    #
    # condition inside other function
    #
    code(d, :fn, org)
    @fact Mutator._onAdd(d.cfg, org, Helper.CodePos(2,1,2), Code.CodePart(Code.condition, true)) --> true
    @fact Mutator._onAdd(d.cfg, org, Helper.CodePos(2,2,1), Code.CodePart(Code.condition, true)) --> false
    #
    # conditions inside main function
    #
    code(d, :condition, org)
    @fact Mutator._onAdd(d.cfg, org, Helper.CodePos(1,2,1), Code.CodePart(Code.condition, true)) --> false
    @fact Code.eval(org.code)(d.cfg, org) --> val(org)

    Manager.destroy(d.man)
  end
  #
  # for
  #
  facts("Testing Code.loop() and empty code") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
    local org = d.orgs[1]

    code(d, :loop, org)

    @fact length(Helper.getLines(org.code, [2])) --> 3
    @fact Helper.getHead(org.code, [2,2]) --> :for
    @fact Code.eval(org.code)(d.cfg, org) --> val(org)

    Manager.destroy(d.man)
  end
  facts("Testing Code.loop() with body") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
    local org = d.orgs[1]

    code(d, :loop, org)
    Mutator._onAdd(d.cfg, org, Helper.CodePos(1,2,1), Code.CodePart(Code.pi, false))
    @fact Code.eval(org.code)(d.cfg, org) --> f16(pi)

    Manager.destroy(d.man)
  end
  facts("Testing Code.loop() near other Code.loop()") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
    local org = d.orgs[1]

    code(d, :loop, org)
    code(d, :loop, org)
    @fact Helper.getHead(org.code, [2,2]) --> :for
    @fact Helper.getHead(org.code, [2,3]) --> :for
    @fact Code.eval(org.code)(d.cfg, org) --> val(org)

    Manager.destroy(d.man)
  end
  facts("Testing Code.loop() inside other Code.loop()") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
    local org = d.orgs[1]

    code(d, :loop, org)
    @fact code(d, :loop, org, [1,2,2]) --> false
    @fact Code.eval(org.code)(d.cfg, org) --> val(org)

    Manager.destroy(d.man)
  end
  # #
  # # commands mix
  # #
  # facts("Testing Code.fn() inside Code.loop()") do
  #   local conf = Config.create()
  #   local org  = Creature.create(conf)
  #
  #   addVars(org, [2], Helper.CodePos(1,1,1))
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,1,6), Code.CodePart(Code.loop, true))
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,2,1), Code.CodePart(Code.fn, true))
  #
  #   @fact length(Helper.getLines(org.code, [2])) --> 3
  #   @fact length(Helper.getLines(org.code, [2,6,2])) --> 0
  #   @fact Code.eval(org.code)(conf, org) --> true
  # end
  # facts("Testing Code.loop() inside Code.fn()") do
  #   local conf = Config.create()
  #   local org  = Creature.create(conf)
  #
  #   conf.codeFuncParamAmount = 1
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,1,1), Code.CodePart(Code.fn, true))
  #   addVar(org, [2,1,2], Helper.CodePos(2,1,1), Int8)
  #   Mutator._onAdd(conf, org, Helper.CodePos(2,1,2), Code.CodePart(Code.loop, true))
  #
  #   @fact length(Helper.getLines(org.code, [2])) --> 2
  #   @fact length(Helper.getLines(org.code, [2,1,2])) --> 3
  #   @fact Code.eval(org.code)(conf, org) --> true
  # end
end
