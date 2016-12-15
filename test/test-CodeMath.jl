module TestCodeMath
  using FactCheck
  import Code
  import Creature
  import Helper
  import Mutator
  import Config

  include("Helper.jl")
  #
  # plus
  #
  facts("Testing CodeMath.plus() with different variable types") do
    local conf = Config.create()
    local org  = Creature.create(conf)
    addVars(org, [2], Helper.CodePos(1,1,1))
    Mutator._onAdd(conf, org, Helper.CodePos(1,1,length(Helper.SUPPORTED_TYPES) + 1), Code.CodePart(Code.plus, false))
    op = Helper.getArg(org.code, [2,length(Helper.SUPPORTED_TYPES) + 1,2,1]) # operator

    @fact (op === :(+) || op === :(*) || op === :(&)) --> true
    @fact length(Helper.getLines(org.code, [2])) --> length(Helper.SUPPORTED_TYPES) + 2
    @fact eval(org.code)(conf, org) --> true
  end
  facts("Testing CodeMath.plus() without variables") do
    local conf = Config.create()
    local org  = Creature.create(conf)
    Mutator._onAdd(conf, org, Helper.CodePos(1,1,6), Code.CodePart(Code.plus, false))

    @fact length(Helper.getLines(org.code, [2])) --> 1
    @fact eval(org.code)(conf, org) --> true
  end
  facts("Testing CodeMath.plus() with UInt8 variable") do
    local conf = Config.create()
    local org  = Creature.create(conf)

    types = changeTypes([Int8])
    addVar(org, [2], Helper.CodePos(1,1,1), Int8)
    Mutator._onAdd(conf, org, Helper.CodePos(1,1,2), Code.CodePart(Code.plus, false))
    var = Helper.getArg(org.code, [2,1,1,1,1])

    @fact Helper.getArg(org.code, [2,2,1]) --> var
    @fact Helper.getArg(org.code, [2,2,2,1]) --> :(+)
    @fact Helper.getArg(org.code, [2,2,2,2]) --> var
    @fact Helper.getArg(org.code, [2,2,2,3]) --> var
    @fact eval(org.code)(conf, org) --> true
    #
    # revert supported types
    #
    resetTypes(types)
  end
  facts("Testing CodeMath.plus() with Int16 variable") do
    local conf  = Config.create()
    local org   = Creature.create(conf)
    local types = changeTypes([Int16])

    addVar(org, [2], Helper.CodePos(1,1,1), Int16)
    Mutator._onAdd(conf, org, Helper.CodePos(1,1,2), Code.CodePart(Code.plus, false))
    var = Helper.getArg(org.code, [2,1,1,1,1])

    @fact Helper.getArg(org.code, [2,2,1]) --> var
    @fact Helper.getArg(org.code, [2,2,2,1]) --> :(+)
    @fact Helper.getArg(org.code, [2,2,2,2]) --> var
    @fact Helper.getArg(org.code, [2,2,2,3]) --> var
    @fact eval(org.code)(conf, org) --> true
    #
    # revert supported types
    #
    resetTypes(types)
  end
  facts("Testing CodeMath.plus() with Int variable") do
    local conf  = Config.create()
    local org   = Creature.create(conf)
    local types = changeTypes([Int])

    addVar(org, [2], Helper.CodePos(1,1,1), Int)
    Mutator._onAdd(conf, org, Helper.CodePos(1,1,2), Code.CodePart(Code.plus, false))
    var = Helper.getArg(org.code, [2,1,1,1,1])

    @fact Helper.getArg(org.code, [2,2,1]) --> var
    @fact Helper.getArg(org.code, [2,2,2,1]) --> :(+)
    @fact Helper.getArg(org.code, [2,2,2,2]) --> var
    @fact Helper.getArg(org.code, [2,2,2,3]) --> var
    @fact eval(org.code)(conf, org) --> true
    #
    # revert supported types
    #
    resetTypes(types)
  end
  facts("Testing CodeMath.plus() with String variable") do
    local conf  = Config.create()
    local org   = Creature.create(conf)
    local types = changeTypes([String])

    addVar(org, [2], Helper.CodePos(1,1,1), String)
    Mutator._onAdd(conf, org, Helper.CodePos(1,1,2), Code.CodePart(Code.plus, false))
    var = Helper.getArg(org.code, [2,1,1,1,1])

    @fact Helper.getArg(org.code, [2,2,1]) --> var
    @fact Helper.getArg(org.code, [2,2,2,1]) --> :(*)
    @fact Helper.getArg(org.code, [2,2,2,2]) --> var
    @fact Helper.getArg(org.code, [2,2,2,3]) --> var
    @fact eval(org.code)(conf, org) --> true
    #
    # revert supported types
    #
    resetTypes(types)
  end
  facts("Testing CodeMath.plus() with Bool variable") do
    local conf  = Config.create()
    local org   = Creature.create(conf)
    local types = changeTypes([Bool])

    addVar(org, [2], Helper.CodePos(1,1,1), Bool)
    Mutator._onAdd(conf, org, Helper.CodePos(1,1,2), Code.CodePart(Code.plus, false))
    var = Helper.getArg(org.code, [2,1,1,1,1])

    @fact Helper.getArg(org.code, [2,2,1]) --> var
    @fact Helper.getArg(org.code, [2,2,2,1]) --> :(&)
    @fact Helper.getArg(org.code, [2,2,2,2]) --> var
    @fact Helper.getArg(org.code, [2,2,2,3]) --> var
    @fact eval(org.code)(conf, org) --> true
    #
    # revert supported types
    #
    resetTypes(types)
  end
  facts("Testing CodeMath.plus() with Float64 variable") do
    local conf  = Config.create()
    local org   = Creature.create(conf)
    local types = changeTypes([Float64])

    addVar(org, [2], Helper.CodePos(1,1,1), Float64)
    Mutator._onAdd(conf, org, Helper.CodePos(1,1,2), Code.CodePart(Code.plus, false))
    var = Helper.getArg(org.code, [2,1,1,1,1])

    @fact Helper.getArg(org.code, [2,2,1]) --> var
    @fact Helper.getArg(org.code, [2,2,2,1]) --> :(+)
    @fact Helper.getArg(org.code, [2,2,2,2]) --> var
    @fact Helper.getArg(org.code, [2,2,2,3]) --> var
    @fact eval(org.code)(conf, org) --> true
    #
    # revert supported types
    #
    resetTypes(types)
  end
  #
  # minus
  #
  facts("Testing CodeMath.minus() with different variable types") do
    local conf = Config.create()
    local org  = Creature.create(conf)
    local typesAmount = length(Helper.SUPPORTED_TYPES)

    addVars(org, [2], Helper.CodePos(1,1,1))
    Mutator._onAdd(conf, org, Helper.CodePos(1,1,typesAmount + 1), Code.CodePart(Code.minus, false))

    @fact length(Helper.getLines(org.code, [2])) --> typesAmount + 2
    @fact eval(org.code)(conf, org) --> true
  end
  facts("Testing CodeMath.minus() without variables") do
    local conf = Config.create()
    local org  = Creature.create(conf)

    Mutator._onAdd(conf, org, Helper.CodePos(1,1,1), Code.CodePart(Code.minus, false))

    @fact length(Helper.getLines(org.code, [2])) --> 1
    @fact eval(org.code)(conf, org) --> true
  end
  facts("Testing CodeMath.minus() with Int8 variable") do
    local conf  = Config.create()
    local org   = Creature.create(conf)
    local types = changeTypes([Int8])

    addVar(org, [2], Helper.CodePos(1,1,1), Int8)
    Mutator._onAdd(conf, org, Helper.CodePos(1,1,2), Code.CodePart(Code.minus, false))
    var = Helper.getArg(org.code, [2,1,1,1,1])

    @fact Helper.getArg(org.code, [2,2,1]) --> var
    @fact Helper.getArg(org.code, [2,2,2,1]) --> :(-)
    @fact Helper.getArg(org.code, [2,2,2,2]) --> var
    @fact Helper.getArg(org.code, [2,2,2,3]) --> var
    @fact eval(org.code)(conf, org) --> true
    #
    # revert supported types
    #
    resetTypes(types)
  end
  facts("Testing CodeMath.minus() with Int16 variable") do
    local conf  = Config.create()
    local org   = Creature.create(conf)
    local types = changeTypes([Int16])

    addVar(org, [2], Helper.CodePos(1,1,1), Int16)
    Mutator._onAdd(conf, org, Helper.CodePos(1,1,2), Code.CodePart(Code.minus, false))
    var = Helper.getArg(org.code, [2,1,1,1,1])

    @fact Helper.getArg(org.code, [2,2,1]) --> var
    @fact Helper.getArg(org.code, [2,2,2,1]) --> :(-)
    @fact Helper.getArg(org.code, [2,2,2,2]) --> var
    @fact Helper.getArg(org.code, [2,2,2,3]) --> var
    @fact eval(org.code)(conf, org) --> true
    #
    # revert supported types
    #
    resetTypes(types)
  end
  facts("Testing CodeMath.minus() with Int variable") do
    local conf  = Config.create()
    local org   = Creature.create(conf)
    local types = changeTypes([Int])

    addVar(org, [2], Helper.CodePos(1,1,1), Int)
    Mutator._onAdd(conf, org, Helper.CodePos(1,1,2), Code.CodePart(Code.minus, false))
    var = Helper.getArg(org.code, [2,1,1,1,1])

    @fact Helper.getArg(org.code, [2,2,1]) --> var
    @fact Helper.getArg(org.code, [2,2,2,1]) --> :(-)
    @fact Helper.getArg(org.code, [2,2,2,2]) --> var
    @fact Helper.getArg(org.code, [2,2,2,3]) --> var
    @fact eval(org.code)(conf, org) --> true
    #
    # revert supported types
    #
    resetTypes(types)
  end
  facts("Testing CodeMath.minus() with Float64 variable") do
    local conf  = Config.create()
    local org   = Creature.create(conf)
    local types = changeTypes([Float64])

    addVar(org, [2], Helper.CodePos(1,1,1), Float64)
    Mutator._onAdd(conf, org, Helper.CodePos(1,1,2), Code.CodePart(Code.minus, false))
    var = Helper.getArg(org.code, [2,1,1,1,1])

    @fact Helper.getArg(org.code, [2,2,1]) --> var
    @fact Helper.getArg(org.code, [2,2,2,1]) --> :(-)
    @fact Helper.getArg(org.code, [2,2,2,2]) --> var
    @fact Helper.getArg(org.code, [2,2,2,3]) --> var
    @fact eval(org.code)(conf, org) --> true
    #
    # revert supported types
    #
    resetTypes(types)
  end
  facts("Testing CodeMath.minus() with one Bool variable") do
    local conf  = Config.create()
    local org   = Creature.create(conf)
    local types = changeTypes([Bool])

    addVar(org, [2], Helper.CodePos(1,1,1), Bool)
    Mutator._onAdd(conf, org, Helper.CodePos(1,1,2), Code.CodePart(Code.minus, false))
    @fact length(Helper.getLines(org.code, [2])) --> 3

    var = Helper.getArg(org.code, [2,1,1,1,1])
    @fact Helper.getArg(org.code, [2,2,1]) --> var
    @fact Helper.getArg(org.code, [2,2,2,1]) --> :Bool
    @fact Helper.getArg(org.code, [2,2,2,2,1]) --> :abs
    @fact Helper.getArg(org.code, [2,2,2,2,2,1]) --> :(-)
    @fact Helper.getArg(org.code, [2,2,2,2,2,2]) --> :var_1
    @fact Helper.getArg(org.code, [2,2,2,2,2,3]) --> :var_1
    @fact eval(org.code)(conf, org) --> true
    #
    # revert supported types
    #
    resetTypes(types)
  end
  #
  # multiply
  #
  facts("Testing CodeMath.multiply() without variables") do
    local conf = Config.create()
    local org  = Creature.create(conf)

    Mutator._onAdd(conf, org, Helper.CodePos(1,1,1), Code.CodePart(Code.multiply, false))

    @fact length(Helper.getLines(org.code, [2])) --> 1
    @fact eval(org.code)(conf, org) --> true
  end
  facts("Testing CodeMath.multiply() with Int8 variables") do
    local conf  = Config.create()
    local org   = Creature.create(conf)
    local types = changeTypes([Int8])

    addVar(org, [2], Helper.CodePos(1,1,1), Int8)
    Mutator._onAdd(conf, org, Helper.CodePos(1,1,2), Code.CodePart(Code.multiply, false))
    var = Helper.getArg(org.code, [2,1,1,1,1])

    @fact Helper.getArg(org.code, [2,2,1]) --> var
    @fact Helper.getArg(org.code, [2,2,2,1]) --> :(*)
    @fact Helper.getArg(org.code, [2,2,2,2]) --> var
    @fact Helper.getArg(org.code, [2,2,2,3]) --> var
    @fact eval(org.code)(conf, org) --> true
    #
    # revert supported types
    #
    resetTypes(types)
  end
  facts("Testing CodeMath.multiply() with two Int8 variables") do
    local conf  = Config.create()
    local org   = Creature.create(conf)
    local types = changeTypes([Int8])

    addVar(org, [2], Helper.CodePos(1,1,1), Int8)
    addVar(org, [2], Helper.CodePos(1,1,1), Int8)
    Mutator._onAdd(conf, org, Helper.CodePos(1,1,3), Code.CodePart(Code.multiply, false))
    var2 = Helper.getArg(org.code, [2,1,1,1,1])
    var1 = Helper.getArg(org.code, [2,2,1,1,1])

    @fact Helper.getArg(org.code, [2,3,1]) === var1 || Helper.getArg(org.code, [2,3,1]) === var2 --> true
    @fact Helper.getArg(org.code, [2,3,2,1]) --> :(*)
    @fact Helper.getArg(org.code, [2,3,2,2]) === var1 || Helper.getArg(org.code, [2,3,2,2]) === var2 --> true
    @fact Helper.getArg(org.code, [2,3,2,3]) === var1 || Helper.getArg(org.code, [2,3,2,3]) === var2 --> true
    @fact eval(org.code)(conf, org) --> true
    #
    # revert supported types
    #
    resetTypes(types)
  end
  facts("Testing CodeMath.multiply() with two Int8 and String variables") do
    local conf  = Config.create()
    local org   = Creature.create(conf)
    local types = changeTypes([Int8])

    addVar(org, [2], Helper.CodePos(1,1,1), Int8)
    addVar(org, [2], Helper.CodePos(1,1,1), String)
    Mutator._onAdd(conf, org, Helper.CodePos(1,1,3), Code.CodePart(Code.multiply, false))
    var2 = Helper.getArg(org.code, [2,1,1,1,1])
    var1 = Helper.getArg(org.code, [2,2,1,1,1])

    @fact Helper.getArg(org.code, [2,3,1]) --> var1
    @fact Helper.getArg(org.code, [2,3,2,1]) --> :(*)
    @fact Helper.getArg(org.code, [2,3,2,2]) --> var1
    @fact Helper.getArg(org.code, [2,3,2,3]) --> var1
    @fact eval(org.code)(conf, org) --> true
    #
    # revert supported types
    #
    resetTypes(types)
  end
  facts("Testing CodeMath.multiply() with two Int8 and Int variables") do
    local conf  = Config.create()
    local org   = Creature.create(conf)
    local types = changeTypes([Int8])

    addVar(org, [2], Helper.CodePos(1,1,1), Int8)
    addVar(org, [2], Helper.CodePos(1,1,1), Int)
    Mutator._onAdd(conf, org, Helper.CodePos(1,1,3), Code.CodePart(Code.multiply, false))
    var2 = Helper.getArg(org.code, [2,1,1,1,1])
    var1 = Helper.getArg(org.code, [2,2,1,1,1])

    @fact Helper.getArg(org.code, [2,3,1]) --> var1
    @fact Helper.getArg(org.code, [2,3,2,1]) --> :(*)
    @fact Helper.getArg(org.code, [2,3,2,2]) --> var1
    @fact Helper.getArg(org.code, [2,3,2,3]) --> var1
    @fact eval(org.code)(conf, org) --> true
    #
    # revert supported types
    #
    resetTypes(types)
  end
  facts("Testing CodeMath.multiply() with two String variables") do
    local conf  = Config.create()
    local org   = Creature.create(conf)
    local types = changeTypes([String])

    addVar(org, [2], Helper.CodePos(1,1,1), String)
    addVar(org, [2], Helper.CodePos(1,1,1), String)
    Mutator._onAdd(conf, org, Helper.CodePos(1,1,3), Code.CodePart(Code.multiply, false))
    var2 = Helper.getArg(org.code, [2,1,1,1,1])
    var1 = Helper.getArg(org.code, [2,2,1,1,1])

    @fact Helper.getArg(org.code, [2,3,1]) === var1 || Helper.getArg(org.code, [2,3,1]) === var2 --> true
    @fact Helper.getArg(org.code, [2,3,2,1]) --> :(*)
    @fact Helper.getArg(org.code, [2,3,2,2]) === var1 || Helper.getArg(org.code, [2,3,2,2]) === var2 --> true
    @fact Helper.getArg(org.code, [2,3,2,3]) === var1 || Helper.getArg(org.code, [2,3,2,3]) === var2 --> true
    @fact eval(org.code)(conf, org) --> true
    #
    # revert supported types
    #
    resetTypes(types)
  end
end
