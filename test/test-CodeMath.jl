module TestCodeMath
  using FactCheck
  import Code
  import Creature
  import Helper
  import Mutator
  import Config

  include("Helper.jl")
  #
  # Tests operator plus() with specified type
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
  # plus
  #
  facts("Testing CodeMath.plus()") do
    testOperator(:(+), :plus, Float16(10.0))
  end
  facts("Testing CodeMath.plus() two times") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
    local org = d.orgs[1]

    code(d, :plus, org)
    code(d, :plus, org)
    @fact Helper.getArg(org.code, [2,Creature.VAR_AMOUNT + 1,2,1]) --> :(+)
    @fact Helper.getArg(org.code, [2,Creature.VAR_AMOUNT + 2,2,1]) --> :(+)
    @fact eval(org.code)(d.cfg, org) --> Float16(20.0)

    Manager.destroy(d.man)
  end
  facts("Testing CodeMath.plus() inside if operator") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
    local org = d.orgs[1]

    code(d, :condition, org)
    code(d, :plus, org, [1, 2, 1])
    #
    # Updates compare operator to "===" to make condition true all the time
    #
    Helper.getArg(org.code, [2,2,1]).args[1] = :(===)
    @fact eval(org.code)(d.cfg, org) --> Float16(10.0)

    Manager.destroy(d.man)
  end
  # facts("Testing CodeMath.plus() with String and Bool variables") do
  #   local conf  = Config.create()
  #   local org   = Creature.create(conf)
  #   local types = changeTypes([String, Bool])
  #
  #   addVar(org, [2], Helper.CodePos(1,1,1), String)
  #   addVar(org, [2], Helper.CodePos(1,1,2), Bool)
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,1,3), Code.CodePart(Code.plus, false))
  #   var = Helper.getArg(org.code, [2,3,1])
  #
  #   if var == :var_1 @fact Helper.getArg(org.code, [2,3,2,1]) --> :(*)
  #   elseif var == :var_2 @fact Helper.getArg(org.code, [2,3,2,1]) --> :(&)
  #   else error("Ivalid code in \"CodeMath.plus() with String and Bool variables\" test")
  #   end
  #   @fact Helper.getArg(org.code, [2,3,2,2]) --> var
  #   @fact Helper.getArg(org.code, [2,3,2,3]) --> var
  #   @fact eval(org.code)(conf, org) --> true
  #   #
  #   # revert supported types
  #   #
  #   resetTypes(types)
  # end
  # facts("Testing CodeMath.plus() with Int16 and Int variables") do
  #   local conf  = Config.create()
  #   local org   = Creature.create(conf)
  #   local types = changeTypes([Int16, Int])
  #
  #   addVar(org, [2], Helper.CodePos(1,1,1), Int16)
  #   addVar(org, [2], Helper.CodePos(1,1,2), Int)
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,1,3), Code.CodePart(Code.plus, false))
  #   var = Helper.getArg(org.code, [2,3,1])
  #
  #   @fact Helper.getArg(org.code, [2,3,2,1]) --> :(+)
  #   @fact Helper.getArg(org.code, [2,3,2,2]) --> var
  #   @fact Helper.getArg(org.code, [2,3,2,3]) --> var
  #   @fact eval(org.code)(conf, org) --> true
  #   #
  #   # revert supported types
  #   #
  #   resetTypes(types)
  # end
  # facts("Testing CodeMath.plus() with Int and Float64 variables") do
  #   local conf  = Config.create()
  #   local org   = Creature.create(conf)
  #   local types = changeTypes([Int, Float64])
  #
  #   addVar(org, [2], Helper.CodePos(1,1,1), Int)
  #   addVar(org, [2], Helper.CodePos(1,1,2), Float64)
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,1,3), Code.CodePart(Code.plus, false))
  #   var = Helper.getArg(org.code, [2,3,1])
  #
  #   @fact Helper.getArg(org.code, [2,3,2,1]) --> :(+)
  #   @fact Helper.getArg(org.code, [2,3,2,2]) --> var
  #   @fact Helper.getArg(org.code, [2,3,2,3]) --> var
  #   @fact eval(org.code)(conf, org) --> true
  #   #
  #   # revert supported types
  #   #
  #   resetTypes(types)
  # end
  # #
  # # minus
  # #
  # facts("Testing CodeMath.minus() with different types") do
  #   testOperatorWithType(Int8, :(-), :minus)
  #   testOperatorWithType(Int16, :(-), :minus)
  #   testOperatorWithType(Int, :(-), :minus)
  #   testOperatorWithType(Float64, :(-), :minus)
  # end
  # facts("Testing CodeMath.minus() with String variable") do
  #   local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
  #   local org = d.orgs[1]
  #   local types = changeTypes([String])
  #
  #   code(d, :minus, org)
  #   @fact length(Helper.getLines(org.code, [2])) --> 32
  #   @fact eval(org.code)(d.cfg, org) --> true
  #   #
  #   # revert supported types
  #   #
  #   resetTypes(types)
  #   Manager.destroy(d.man)
  # end
  # facts("Testing CodeMath.minus() with Bool variable") do
  #   local conf  = Config.create()
  #   local org   = Creature.create(conf)
  #   local types = changeTypes([Bool])
  #
  #   addVar(org, [2], Helper.CodePos(1,1,1), Bool)
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,1,2), Code.CodePart(Code.minus, false))
  #   var = Helper.getArg(org.code, [2,1,1,1,1])
  #
  #   @fact Helper.getArg(org.code, [2,2,2,1]) --> :Bool
  #   @fact Helper.getArg(org.code, [2,2,1]) --> var
  #   @fact eval(org.code)(conf, org) --> true
  #   #
  #   # revert supported types
  #   #
  #   resetTypes(types)
  # end
  # facts("Testing CodeMath.minus() with Float64 variable") do
  #   local conf  = Config.create()
  #   local org   = Creature.create(conf)
  #   local types = changeTypes([Float64])
  #
  #   addVar(org, [2], Helper.CodePos(1,1,1), Float64)
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,1,2), Code.CodePart(Code.minus, false))
  #   var = Helper.getArg(org.code, [2,1,1,1,1])
  #
  #   @fact Helper.getArg(org.code, [2,2,1]) --> var
  #   @fact Helper.getArg(org.code, [2,2,2,1]) --> :(-)
  #   @fact Helper.getArg(org.code, [2,2,2,2]) --> var
  #   @fact Helper.getArg(org.code, [2,2,2,3]) --> var
  #   @fact eval(org.code)(conf, org) --> true
  #   #
  #   # revert supported types
  #   #
  #   resetTypes(types)
  # end
  # facts("Testing CodeMath.minus() with one Bool variable") do
  #   local conf  = Config.create()
  #   local org   = Creature.create(conf)
  #   local types = changeTypes([Bool])
  #
  #   addVar(org, [2], Helper.CodePos(1,1,1), Bool)
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,1,2), Code.CodePart(Code.minus, false))
  #   @fact length(Helper.getLines(org.code, [2])) --> 3
  #
  #   var = Helper.getArg(org.code, [2,1,1,1,1])
  #   @fact Helper.getArg(org.code, [2,2,1]) --> var
  #   @fact Helper.getArg(org.code, [2,2,2,1]) --> :Bool
  #   @fact Helper.getArg(org.code, [2,2,2,2,1]) --> :abs
  #   @fact Helper.getArg(org.code, [2,2,2,2,2,1]) --> :(-)
  #   @fact Helper.getArg(org.code, [2,2,2,2,2,2]) --> :var_1
  #   @fact Helper.getArg(org.code, [2,2,2,2,2,3]) --> :var_1
  #   @fact eval(org.code)(conf, org) --> true
  #   #
  #   # revert supported types
  #   #
  #   resetTypes(types)
  # end
  # #
  # # multiply
  # #
  # facts("Testing CodeMath.multiply() without variables") do
  #   local conf = Config.create()
  #   local org  = Creature.create(conf)
  #
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,1,1), Code.CodePart(Code.multiply, false))
  #
  #   @fact length(Helper.getLines(org.code, [2])) --> 1
  #   @fact eval(org.code)(conf, org) --> true
  # end
  # facts("Testing CodeMath.multiply() with Int8 variables") do
  #   local conf  = Config.create()
  #   local org   = Creature.create(conf)
  #   local types = changeTypes([Int8])
  #
  #   addVar(org, [2], Helper.CodePos(1,1,1), Int8)
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,1,2), Code.CodePart(Code.multiply, false))
  #   var = Helper.getArg(org.code, [2,1,1,1,1])
  #
  #   @fact Helper.getArg(org.code, [2,2,1]) --> var
  #   @fact Helper.getArg(org.code, [2,2,2,1]) --> :(*)
  #   @fact Helper.getArg(org.code, [2,2,2,2]) --> var
  #   @fact Helper.getArg(org.code, [2,2,2,3]) --> var
  #   @fact eval(org.code)(conf, org) --> true
  #   #
  #   # revert supported types
  #   #
  #   resetTypes(types)
  # end
  # facts("Testing CodeMath.multiply() with two Int8 variables") do
  #   local conf  = Config.create()
  #   local org   = Creature.create(conf)
  #   local types = changeTypes([Int8])
  #
  #   addVar(org, [2], Helper.CodePos(1,1,1), Int8)
  #   addVar(org, [2], Helper.CodePos(1,1,1), Int8)
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,1,3), Code.CodePart(Code.multiply, false))
  #   var2 = Helper.getArg(org.code, [2,1,1,1,1])
  #   var1 = Helper.getArg(org.code, [2,2,1,1,1])
  #
  #   @fact Helper.getArg(org.code, [2,3,1]) === var1 || Helper.getArg(org.code, [2,3,1]) === var2 --> true
  #   @fact Helper.getArg(org.code, [2,3,2,1]) --> :(*)
  #   @fact Helper.getArg(org.code, [2,3,2,2]) === var1 || Helper.getArg(org.code, [2,3,2,2]) === var2 --> true
  #   @fact Helper.getArg(org.code, [2,3,2,3]) === var1 || Helper.getArg(org.code, [2,3,2,3]) === var2 --> true
  #   @fact eval(org.code)(conf, org) --> true
  #   #
  #   # revert supported types
  #   #
  #   resetTypes(types)
  # end
  # facts("Testing CodeMath.multiply() with two Int8 and String variables") do
  #   local conf  = Config.create()
  #   local org   = Creature.create(conf)
  #   local types = changeTypes([Int8])
  #
  #   addVar(org, [2], Helper.CodePos(1,1,1), Int8)
  #   addVar(org, [2], Helper.CodePos(1,1,1), String)
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,1,3), Code.CodePart(Code.multiply, false))
  #   var2 = Helper.getArg(org.code, [2,1,1,1,1])
  #   var1 = Helper.getArg(org.code, [2,2,1,1,1])
  #
  #   @fact Helper.getArg(org.code, [2,3,1]) --> var1
  #   @fact Helper.getArg(org.code, [2,3,2,1]) --> :(*)
  #   @fact Helper.getArg(org.code, [2,3,2,2]) --> var1
  #   @fact Helper.getArg(org.code, [2,3,2,3]) --> var1
  #   @fact eval(org.code)(conf, org) --> true
  #   #
  #   # revert supported types
  #   #
  #   resetTypes(types)
  # end
  # facts("Testing CodeMath.multiply() with two Int8 and Int variables") do
  #   local conf  = Config.create()
  #   local org   = Creature.create(conf)
  #   local types = changeTypes([Int8])
  #
  #   addVar(org, [2], Helper.CodePos(1,1,1), Int8)
  #   addVar(org, [2], Helper.CodePos(1,1,1), Int)
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,1,3), Code.CodePart(Code.multiply, false))
  #   var2 = Helper.getArg(org.code, [2,1,1,1,1])
  #   var1 = Helper.getArg(org.code, [2,2,1,1,1])
  #
  #   @fact Helper.getArg(org.code, [2,3,1]) --> var1
  #   @fact Helper.getArg(org.code, [2,3,2,1]) --> :(*)
  #   @fact Helper.getArg(org.code, [2,3,2,2]) --> var1
  #   @fact Helper.getArg(org.code, [2,3,2,3]) --> var1
  #   @fact eval(org.code)(conf, org) --> true
  #   #
  #   # revert supported types
  #   #
  #   resetTypes(types)
  # end
  # facts("Testing CodeMath.multiply() with two String variables") do
  #   local conf  = Config.create()
  #   local org   = Creature.create(conf)
  #   local types = changeTypes([String])
  #
  #   addVar(org, [2], Helper.CodePos(1,1,1), String)
  #   addVar(org, [2], Helper.CodePos(1,1,1), String)
  #   Mutator._onAdd(conf, org, Helper.CodePos(1,1,3), Code.CodePart(Code.multiply, false))
  #   var2 = Helper.getArg(org.code, [2,1,1,1,1])
  #   var1 = Helper.getArg(org.code, [2,2,1,1,1])
  #
  #   @fact Helper.getArg(org.code, [2,3,1]) === var1 || Helper.getArg(org.code, [2,3,1]) === var2 --> true
  #   @fact Helper.getArg(org.code, [2,3,2,1]) --> :(*)
  #   @fact Helper.getArg(org.code, [2,3,2,2]) === var1 || Helper.getArg(org.code, [2,3,2,2]) === var2 --> true
  #   @fact Helper.getArg(org.code, [2,3,2,3]) === var1 || Helper.getArg(org.code, [2,3,2,3]) === var2 --> true
  #   @fact eval(org.code)(conf, org) --> true
  #   #
  #   # revert supported types
  #   #
  #   resetTypes(types)
  # end
end
