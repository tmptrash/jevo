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
  # fn
  #
  facts("Testing if Code.fn() is added into empty script") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:codeFuncParamAmount=>1))
    local org = d.orgs[1]

    code(d, :fn, org)
    @fact Helper.getArg(org.code, [2,31,1,1]) --> :func_32
    @fact Code.eval(org.code)(d.cfg, org) --> true

    Manager.destroy(d.man)
  end
  facts("Testing Code.fn() arguments") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:codeFuncParamAmount=>1))
    local org = d.orgs[1]

    code(d, :fn, org)
    @fact Helper.getArg(org.code, [2,31,1,2,1,1]) --> :var_31
    @fact Code.eval(org.code)(d.cfg, org) --> true

    Manager.destroy(d.man)
  end
  facts("Testing Code.fn() outside main function") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:codeFuncParamAmount=>1))
    local org = d.orgs[1]

    code(d, :fn, org)
    code(d, :fn, org)
    @fact length(org.funcs) --> 3
    @fact length(Helper.getLines(org.code, [2,31,2])) --> 31
    @fact Code.eval(org.code)(d.cfg, org) --> true

    Manager.destroy(d.man)
  end
  facts("Testing Code.fn() + Code.fn()") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:codeFuncParamAmount=>1))
    local org = d.orgs[1]

    code(d, :fn, org)
    code(d, :fn, org)

    @fact length(org.funcs) --> 3
    @fact length(Helper.getLines(org.code, [2])) --> 33
    @fact Helper.getHead(org.code, [2,31]) --> :function
    @fact Helper.getHead(org.code, [2,32]) --> :function
    @fact Code.eval(org.code)(d.cfg, org) --> true

    Manager.destroy(d.man)
  end
  facts("Testing Code.fn() should return the value") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:codeFuncParamAmount=>1))
    local org = d.orgs[1]

    code(d, :fn, org)
    code(d, :fn, org)

    @fact Helper.getHead(org.code, [2,33]) --> :return
    @fact Helper.getHead(org.code, [2,31,2,31]) --> :return
    @fact Helper.getHead(org.code, [2,32,2,31]) --> :return
    @fact Code.eval(org.code)(d.cfg, org) --> true

    Manager.destroy(d.man)
  end
  #
  # fnCall
  #
  facts("Testing Code.fnCall(), but without a function") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
    local org = d.orgs[1]

    code(d, :fnCall, org)

    @fact length(Helper.getLines(org.code, [2])) --> 31
    @fact Helper.getHead(org.code, [2,31]) --> :return
    @fact Code.eval(org.code)(d.cfg, org) --> true

    Manager.destroy(d.man)
  end
  facts("Testing Code.fnCall() for one Code.fn(), but without variables") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
    local org = d.orgs[1]

    code(d, :fn, org)
    code(d, :fnCall, org)

    @fact length(Helper.getLines(org.code, [2])) --> 33
    @fact Helper.getHead(org.code, [2,31]) --> :function
    @fact Helper.getHead(org.code, [2,33]) --> :return
    @fact Code.eval(org.code)(d.cfg, org) --> true

    Manager.destroy(d.man)
  end
  facts("Testing Code.fnCall() of one Code.fn()") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:codeFuncParamAmount=>1))
    local org = d.orgs[1]
    local index = 32

    code(d, :fn, org)
    code(d, :fnCall, org)

    @fact Helper.getHead(org.code, [2,index]) --> :(=)
    @fact Helper.getArg(org.code, [2,index,2,1]) --> :func_32
    @fact Code.eval(org.code)(d.cfg, org) --> true

    Manager.destroy(d.man)
  end
  # facts("Testing Code.fnCall() after removing Code.fn()") do
  #   local conf = Config.create()
  #   local org  = Creature.create(conf)
  #   local cp   = Code.CodePart(Code.fn, true)
  #   local amount = length(Helper.SUPPORTED_TYPES)+1
  #
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,1,1), cp)
  #   addVars(org, [2], Helper.CodePos(1,1,1))
  #   Mutator._onDel(conf, org, Helper.CodePos(1,1,amount), cp)
  #   @fact Mutator._onAdd(conf, org, Helper.CodePos(1,1,amount), Code.CodePart(Code.fnCall, false)) --> false
  #   @fact length(Helper.getLines(org.code, [2])) --> amount
  #   @fact length(org.funcs) --> 1
  #   @fact Code.eval(org.code)(conf, org) --> true
  # end
  # #
  # # if
  # #
  # facts("Testing Code.condition() with all variables") do
  #   local conf = Config.create()
  #   local org  = Creature.create(conf)
  #   local amount = length(Helper.SUPPORTED_TYPES) + 2
  #
  #   addVars(org, [2], Helper.CodePos(1,1,1))
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,1,amount - 1), Code.CodePart(Code.condition, true))
  #   @fact length(Helper.getLines(org.code, [2])) --> amount
  #   @fact Helper.getHead(org.code, [2,amount - 1]) --> :if
  #   @fact length(org.funcs[1].blocks) --> 2
  #   @fact Code.eval(org.code)(conf, org) --> true
  # end
  # facts("Testing Code.condition() without variables") do
  #   local conf = Config.create()
  #   local org  = Creature.create(conf)
  #
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,1,1), Code.CodePart(Code.condition, true))
  #
  #   @fact length(Helper.getLines(org.code, [2])) --> 1
  #   @fact Code.eval(org.code)(conf, org) --> true
  # end
  # facts("Testing Code.condition() inside function") do
  #   local conf = Config.create()
  #   local org  = Creature.create(conf)
  #
  #   conf.codeFuncParamAmount = 1
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,1,1), Code.CodePart(Code.fn, true))
  #   @fact Helper.getArg(org.code, [2,1,1,1]) --> :func_2
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,1,1), Code.CodePart(Code.condition, true))
  #   @fact length(Helper.getLines(org.code, [2,1,2])) --> 1
  #   @fact Code.eval(org.code)(conf, org) --> true
  # end
  # facts("Testing Code.condition() inside function, with variables") do
  #   local conf = Config.create()
  #   local org  = Creature.create(conf)
  #
  #   conf.codeFuncParamAmount = 1
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,1,1), Code.CodePart(Code.fn, true))
  #   @fact Helper.getArg(org.code, [2,1,1,1]) --> :func_2
  #
  #   addVars(org, [2,1,2], Helper.CodePos(2,1,1))
  #   Mutator._onAdd(conf, org, Helper.CodePos(2,1,6), Code.CodePart(Code.condition, true))
  #   @fact Helper.getHead(org.code, [2,1,2,6]) --> :if
  #   @fact Code.eval(org.code)(conf, org) --> true
  # end
  # facts("Testing Code.condition() inside other Code.condition()") do
  #   local conf = Config.create()
  #   local org  = Creature.create(conf)
  #
  #   conf.codeFuncParamAmount = 1
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,1,1), Code.CodePart(Code.fn, true))
  #   @fact Helper.getArg(org.code, [2,1,1,1]) --> :func_2
  #   addVars(org, [2,1,2], Helper.CodePos(2,1,1))
  #   @fact Mutator._onAdd(conf, org, Helper.CodePos(2,1,7), Code.CodePart(Code.condition, true)) --> true
  #   @fact Mutator._onAdd(conf, org, Helper.CodePos(2,2,1), Code.CodePart(Code.condition, true)) --> false
  #   @fact length(Helper.getLines(org.code, [2,1,2,7,2])) --> 0
  #   @fact Code.eval(org.code)(conf, org) --> true
  # end
  # facts("Testing Code.condition() inside other Code.condition() with variables") do
  #   local conf = Config.create()
  #   local org  = Creature.create(conf)
  #   local amount = length(Helper.SUPPORTED_TYPES)
  #
  #   addVars(org, [2], Helper.CodePos(1,1,1))
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,1,amount + 1), Code.CodePart(Code.condition, true))
  #   addVars(org, [2,amount + 1,2], Helper.CodePos(1,2,1))
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,2,amount + 1), Code.CodePart(Code.condition, true))
  #   @fact length(Helper.getLines(org.code, [2,amount+1,2])) --> amount
  #   @fact Code.eval(org.code)(conf, org) --> true
  # end
  # #
  # # for
  # #
  # facts("Testing Code.loop() and empty code") do
  #   local conf = Config.create()
  #   local org  = Creature.create(conf)
  #
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,1,1), Code.CodePart(Code.loop, true))
  #
  #   @fact length(Helper.getLines(org.code, [2])) --> 1
  #   @fact Code.eval(org.code)(conf, org) --> true
  # end
  # facts("Testing Code.loop() and one variable") do
  #   local conf  = Config.create()
  #   local org   = Creature.create(conf)
  #   local var   = Symbol("var_", org.symbolId += 1)
  #   local lines = org.code.args[2].args
  #
  #   push!(org.funcs[1].blocks[1].vars[Int8], var)
  #   insert!(lines, 1, :(local $(var)::Int8=12))
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,1,2), Code.CodePart(Code.loop, true))
  #
  #   @fact Helper.getHead(org.code, [2,2]) --> :for
  #   @fact Code.eval(org.code)(conf, org) --> true
  # end
  # facts("Testing Code.loop() near other Code.loop()") do
  #   local conf = Config.create()
  #   local org  = Creature.create(conf)
  #
  #   addVar(org, [2], Helper.CodePos(1,1,1), Int8)
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,1,2), Code.CodePart(Code.loop, true))
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,1,3), Code.CodePart(Code.loop, true))
  #
  #   @fact Helper.getHead(org.code, [2,2]) --> :for
  #   @fact Helper.getHead(org.code, [2,3]) --> :for
  #   @fact length(Helper.getLines(org.code, [2])) --> 4
  #   @fact Code.eval(org.code)(conf, org) --> true
  # end
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
  #   @fact length(Helper.getLines(org.code, [2])) --> length(Helper.SUPPORTED_TYPES) + 2
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
