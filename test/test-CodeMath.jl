module TestCodeMath
  using FactCheck
  import Code
  import Creature
  import Creature.f16
  import Helper
  import Mutator
  import Config

  include("Helper.jl")
  #
  # Tests specified operator in a simple form var = var operator var
  #
  function testOperator(opSym::Symbol, opFn::Symbol, result::Float16)
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
    local org = d.orgs[1]

    code(d, opFn, org)
    @fact Helper.getArg(org.code, [2,Creature.VAR_AMOUNT + 1,2,1]) --> opSym
    @fact eval(org.code)(d.cfg, org) --> result

    Manager.destroy(d.man)
  end
  #
  # Tests specified operator two times
  #
  function testOperatorTwo(opSym::Symbol, opFn::Symbol, result::Float16)
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
    local org = d.orgs[1]

    code(d, opFn, org)
    code(d, opFn, org)
    @fact Helper.getArg(org.code, [2,Creature.VAR_AMOUNT + 1,2,1]) --> opSym
    @fact Helper.getArg(org.code, [2,Creature.VAR_AMOUNT + 2,2,1]) --> opSym
    @fact eval(org.code)(d.cfg, org) --> result

    Manager.destroy(d.man)
  end
  #
  # Tests specified operator inside if operator
  #
  function testOperatorInIf(opFn::Symbol, result::Float16)
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
    local org = d.orgs[1]

    code(d, :condition, org)
    code(d, opFn, org, [1, 2, 1])
    #
    # Updates compare operator to "===" to make condition true all the time
    #
    Helper.getArg(org.code, [2,2,1]).args[1] = :(===)
    @fact eval(org.code)(d.cfg, org) --> result

    Manager.destroy(d.man)
  end
  #
  # Tests specified operator inside for operator
  #
  function testOperatorInFor(opFn::Symbol, result::Float16)
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
    local org = d.orgs[1]

    code(d, :loop, org)
    code(d, opFn, org, [1, 2, 1])
    @fact eval(org.code)(d.cfg, org) --> result

    Manager.destroy(d.man)
  end
  #
  # plus
  #
  facts("Testing CodeMath.plus()") do; testOperator(:(+), :plus, Float16(10.0)) end
  facts("Testing CodeMath.plus() two times") do; testOperatorTwo(:(+), :plus, Float16(20.0)) end
  facts("Testing CodeMath.plus() inside if operator") do; testOperatorInIf(:plus, Float16(10.0)) end
  facts("Testing CodeMath.plus() inside for operator") do; testOperatorInFor(:plus, Float16(1280.0)) end
  #
  # minus
  #
  facts("Testing CodeMath.minus()") do; testOperator(:(-), :minus, Float16(0.0)) end
  facts("Testing CodeMath.minus() two times") do; testOperatorTwo(:(-), :minus, Float16(0.0)) end
  facts("Testing CodeMath.minus() inside if operator") do; testOperatorInIf(:minus, Float16(0.0)) end
  facts("Testing CodeMath.minus() inside for operator") do; testOperatorInFor(:minus, Float16(0.0)) end
  #
  # multiply
  #
  facts("Testing CodeMath.multiply()") do; testOperator(:(*), :multiply, Float16(25.0)) end
  facts("Testing CodeMath.multiply() two times") do; testOperatorTwo(:(*), :multiply, Float16(625.0)) end
  facts("Testing CodeMath.multiply() inside if operator") do; testOperatorInIf(:multiply, Float16(25.0)) end
  facts("Testing CodeMath.multiply() inside for operator") do; testOperatorInFor(:multiply, Float16(65504.0)) end
  #
  # divide
  #
  facts("Testing CodeMath.divide()") do; testOperator(:(/), :divide, Float16(1.0)) end
  facts("Testing CodeMath.divide() two times") do; testOperatorTwo(:(/), :divide, Float16(1.0)) end
  facts("Testing CodeMath.divide() inside if operator") do; testOperatorInIf(:divide, Float16(1.0)) end
  facts("Testing CodeMath.divide() inside for operator") do; testOperatorInFor(:divide, Float16(1.0)) end
  # #
  # # not
  # #
  # facts("Testing CodeMath.not()") do; testOperator(:(*), :not, Float16(-5.0)) end
  # facts("Testing CodeMath.not() two times") do; testOperatorTwo(:(*), :not, Float16(5.0)) end
  # facts("Testing CodeMath.not() inside if operator") do; testOperatorInIf(:not, Float16(-5.0)) end
  # facts("Testing CodeMath.not() inside for operator") do; testOperatorInFor(:not, Float16(5.0)) end
  #
  # and
  #
  facts("Testing CodeMath.and()") do; testOperator(:(&), :and, Float16(5.0)) end
  facts("Testing CodeMath.and() two times") do; testOperatorTwo(:(&), :and, Float16(5.0)) end
  facts("Testing CodeMath.and() inside if operator") do; testOperatorInIf(:and, Float16(5.0)) end
  facts("Testing CodeMath.and() inside for operator") do; testOperatorInFor(:and, Float16(5.0)) end
  #
  # or
  #
  facts("Testing CodeMath.or()") do; testOperator(:(|), :or, Float16(5.0)) end
  facts("Testing CodeMath.or() two times") do; testOperatorTwo(:(|), :or, Float16(5.0)) end
  facts("Testing CodeMath.or() inside if operator") do; testOperatorInIf(:or, Float16(5.0)) end
  facts("Testing CodeMath.or() inside for operator") do; testOperatorInFor(:or, Float16(5.0)) end
  #
  # xor
  #
  facts("Testing CodeMath.xor()") do; testOperator(:($), :xor, Float16(0.0)) end
  facts("Testing CodeMath.xor() two times") do; testOperatorTwo(:($), :xor, Float16(0.0)) end
  facts("Testing CodeMath.xor() inside if operator") do; testOperatorInIf(:xor, Float16(0.0)) end
  facts("Testing CodeMath.xor() inside for operator") do; testOperatorInFor(:xor, Float16(0.0)) end
  # #
  # # rshift
  # #
  # facts("Testing CodeMath.rshift()") do; testOperator(:(>>), :rshift, Float16(0.0)) end
  # facts("Testing CodeMath.rshift() two times") do; testOperatorTwo(:(>>), :rshift, Float16(0.0)) end
  # facts("Testing CodeMath.rshift() inside if operator") do; testOperatorInIf(:rshift, Float16(0.0)) end
  # facts("Testing CodeMath.rshift() inside for operator") do; testOperatorInFor(:rshift, Float16(0.0)) end
  # #
  # # lshift
  # #
  # facts("Testing CodeMath.lshift()") do; testOperator(:(<<), :lshift, Float16(160.0)) end
  # facts("Testing CodeMath.lshift() two times") do; testOperatorTwo(:(<<), :lshift, Float16(0.0)) end
  # facts("Testing CodeMath.lshift() inside if operator") do; testOperatorInIf(:lshift, Float16(160.0)) end
  # facts("Testing CodeMath.lshift() inside for operator") do; testOperatorInFor(:lshift, Float16(0.0)) end
  #
  # reminder
  #
  facts("Testing CodeMath.reminder()") do; testOperator(:(%), :reminder, Float16(0.0)) end
  facts("Testing CodeMath.reminder() two times") do; testOperatorTwo(:(%), :reminder, Float16(0.0)) end
  facts("Testing CodeMath.reminder() inside if operator") do; testOperatorInIf(:reminder, Float16(0.0)) end
  facts("Testing CodeMath.reminder() inside for operator") do; testOperatorInFor(:reminder, Float16(0.0)) end
  # #
  # # sqrt
  # #
  # facts("Testing CodeMath.sqrt()") do
  #   local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
  #   local org = d.orgs[1]
  #
  #   code(d, :sqrt, org)
  #   @fact eval(org.code)(d.cfg, org) --> Float16(2.236)
  #
  #   Manager.destroy(d.man)
  # end
  # facts("Testing CodeMath.sqrt() with negative value") do
  #   local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
  #   local org = d.orgs[1]
  #
  #   code(d, :sqrt, org)
  #   val(org, Float16(-5.0))
  #   @fact eval(org.code)(d.cfg, org) --> Float16(2.236)
  #
  #   Manager.destroy(d.man)
  # end
  # #
  # # log
  # #
  # facts("Testing CodeMath.log()") do
  #   local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
  #   local org = d.orgs[1]
  #
  #   code(d, :log, org)
  #   @fact eval(org.code)(d.cfg, org) --> Float16(1.609)
  #
  #   Manager.destroy(d.man)
  # end
  # facts("Testing CodeMath.log() with negative value") do
  #   local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
  #   local org = d.orgs[1]
  #
  #   code(d, :log, org)
  #   val(org, f16(-5))
  #   @fact eval(org.code)(d.cfg, org) --> Float16(1.609)
  #
  #   Manager.destroy(d.man)
  # end
  #
  # sin
  #
  facts("Testing CodeMath.sin()") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
    local org = d.orgs[1]

    code(d, :sin, org)
    @fact eval(org.code)(d.cfg, org) --> Float16(-0.959)

    Manager.destroy(d.man)
  end
  facts("Testing two CodeMath.sin()") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
    local org = d.orgs[1]

    code(d, :sin, org)
    code(d, :sin, org)
    @fact eval(org.code)(d.cfg, org) --> Float16(-.819)

    Manager.destroy(d.man)
  end
  #
  # cos
  #
  facts("Testing CodeMath.cos()") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
    local org = d.orgs[1]

    code(d, :cos, org)
    @fact eval(org.code)(d.cfg, org) --> Float16(0.2837)

    Manager.destroy(d.man)
  end
  facts("Testing two CodeMath.cos()") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
    local org = d.orgs[1]

    code(d, :cos, org)
    code(d, :cos, org)
    @fact eval(org.code)(d.cfg, org) --> Float16(.96)

    Manager.destroy(d.man)
  end
end
