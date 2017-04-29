module TestCodeMath
  using FactCheck
  import Code
  import Creature
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
  # plus
  #
  facts("Testing CodeMath.plus()") do; testOperator(:(+), :plus, Float16(10.0)) end
  facts("Testing CodeMath.plus() two times") do; testOperatorTwo(:(+), :plus, Float16(20.0)) end
  facts("Testing CodeMath.plus() inside if operator") do; testOperatorInIf(:plus, Float16(10.0)) end
  #
  # minus
  #
  facts("Testing CodeMath.minus()") do; testOperator(:(-), :minus, Float16(0.0)) end
  facts("Testing CodeMath.minus() two times") do; testOperatorTwo(:(-), :minus, Float16(0.0)) end
  facts("Testing CodeMath.minus() inside if operator") do; testOperatorInIf(:minus, Float16(0.0)) end
  #
  # multiply
  #
  facts("Testing CodeMath.multiply()") do; testOperator(:(*), :multiply, Float16(25.0)) end
  facts("Testing CodeMath.multiply() two times") do; testOperatorTwo(:(*), :multiply, Float16(625.0)) end
  facts("Testing CodeMath.multiply() inside if operator") do; testOperatorInIf(:multiply, Float16(25.0)) end
end
