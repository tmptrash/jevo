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
    addVars(org, [2], Helper.Pos(1,1,1))
    Mutator._onAdd(conf, org, Helper.Pos(1,1,6), Code.CodePart(Code.plus, false))
    op = Helper.getArg(org.code, [2,6,2,1]) # operator

    @fact (op === :(+) || op === :(*) || op === :(&)) --> true
    @fact length(Helper.getLines(org.code, [2])) --> 7
    @fact eval(org.code)(conf, org) --> true
  end
  facts("Testing CodeMath.plus() without variables") do
    local conf = Config.create()
    local org  = Creature.create(conf)
    Mutator._onAdd(conf, org, Helper.Pos(1,1,6), Code.CodePart(Code.plus, false))

    @fact length(Helper.getLines(org.code, [2])) --> 1
    @fact eval(org.code)(conf, org) --> true
  end
  facts("Testing CodeMath.plus() with UInt8 variable") do
    local conf = Config.create()
    local org  = Creature.create(conf)

    types = deepcopy(Helper.SUPPORTED_TYPES)
    addVar(org, [2], Helper.Pos(1,1,1), Int8)
    empty!(Helper.SUPPORTED_TYPES)
    push!(Helper.SUPPORTED_TYPES, Int8)
    Mutator._onAdd(conf, org, Helper.Pos(1,1,2), Code.CodePart(Code.plus, false))
    var = Helper.getArg(org.code, [2,1,1,1,1])

    @fact Helper.getArg(org.code, [2,2,1]) --> var
    @fact Helper.getArg(org.code, [2,2,2,1]) --> :(+)
    @fact Helper.getArg(org.code, [2,2,2,2]) --> var
    @fact Helper.getArg(org.code, [2,2,2,3]) --> var
    @fact eval(org.code)(conf, org) --> true
    #
    # revert supported types
    #
    empty!(Helper.SUPPORTED_TYPES)
    for i=1:length(types) push!(Helper.SUPPORTED_TYPES, types[i]) end
  end
  facts("Testing CodeMath.plus() with Int16 variable") do
    local conf  = Config.create()
    local org   = Creature.create(conf)
    local types = deepcopy(Helper.SUPPORTED_TYPES)

    addVar(org, [2], Helper.Pos(1,1,1), Int16)
    empty!(Helper.SUPPORTED_TYPES)
    push!(Helper.SUPPORTED_TYPES, Int16)
    Mutator._onAdd(conf, org, Helper.Pos(1,1,2), Code.CodePart(Code.plus, false))
    var = Helper.getArg(org.code, [2,1,1,1,1])

    @fact Helper.getArg(org.code, [2,2,1]) --> var
    @fact Helper.getArg(org.code, [2,2,2,1]) --> :(+)
    @fact Helper.getArg(org.code, [2,2,2,2]) --> var
    @fact Helper.getArg(org.code, [2,2,2,3]) --> var
    @fact eval(org.code)(conf, org) --> true
    #
    # revert supported types
    #
    empty!(Helper.SUPPORTED_TYPES)
    for i=1:length(types) push!(Helper.SUPPORTED_TYPES, types[i]) end
  end
  facts("Testing CodeMath.plus() with Int variable") do
    local conf  = Config.create()
    local org   = Creature.create(conf)
    local types = deepcopy(Helper.SUPPORTED_TYPES)

    addVar(org, [2], Helper.Pos(1,1,1), Int)
    empty!(Helper.SUPPORTED_TYPES)
    push!(Helper.SUPPORTED_TYPES, Int)
    Mutator._onAdd(conf, org, Helper.Pos(1,1,2), Code.CodePart(Code.plus, false))
    var = Helper.getArg(org.code, [2,1,1,1,1])

    @fact Helper.getArg(org.code, [2,2,1]) --> var
    @fact Helper.getArg(org.code, [2,2,2,1]) --> :(+)
    @fact Helper.getArg(org.code, [2,2,2,2]) --> var
    @fact Helper.getArg(org.code, [2,2,2,3]) --> var
    @fact eval(org.code)(conf, org) --> true
    #
    # revert supported types
    #
    empty!(Helper.SUPPORTED_TYPES)
    for i=1:length(types) push!(Helper.SUPPORTED_TYPES, types[i]) end
  end
  facts("Testing CodeMath.plus() with String variable") do
    local conf  = Config.create()
    local org   = Creature.create(conf)
    local types = deepcopy(Helper.SUPPORTED_TYPES)

    addVar(org, [2], Helper.Pos(1,1,1), String)
    empty!(Helper.SUPPORTED_TYPES)
    push!(Helper.SUPPORTED_TYPES, String)
    Mutator._onAdd(conf, org, Helper.Pos(1,1,2), Code.CodePart(Code.plus, false))
    var = Helper.getArg(org.code, [2,1,1,1,1])

    @fact Helper.getArg(org.code, [2,2,1]) --> var
    @fact Helper.getArg(org.code, [2,2,2,1]) --> :(*)
    @fact Helper.getArg(org.code, [2,2,2,2]) --> var
    @fact Helper.getArg(org.code, [2,2,2,3]) --> var
    @fact eval(org.code)(conf, org) --> true
    #
    # revert supported types
    #
    empty!(Helper.SUPPORTED_TYPES)
    for i=1:length(types) push!(Helper.SUPPORTED_TYPES, types[i]) end
  end
  facts("Testing CodeMath.plus() with Bool variable") do
    local conf  = Config.create()
    local org   = Creature.create(conf)
    local types = deepcopy(Helper.SUPPORTED_TYPES)

    addVar(org, [2], Helper.Pos(1,1,1), Bool)
    empty!(Helper.SUPPORTED_TYPES)
    push!(Helper.SUPPORTED_TYPES, Bool)
    Mutator._onAdd(conf, org, Helper.Pos(1,1,2), Code.CodePart(Code.plus, false))
    var = Helper.getArg(org.code, [2,1,1,1,1])

    @fact Helper.getArg(org.code, [2,2,1]) --> var
    @fact Helper.getArg(org.code, [2,2,2,1]) --> :(&)
    @fact Helper.getArg(org.code, [2,2,2,2]) --> var
    @fact Helper.getArg(org.code, [2,2,2,3]) --> var
    @fact eval(org.code)(conf, org) --> true
    #
    # revert supported types
    #
    empty!(Helper.SUPPORTED_TYPES)
    for i=1:length(types) push!(Helper.SUPPORTED_TYPES, types[i]) end
  end
  #
  # minus
  #
  facts("Testing CodeMath.minus() with different variable types") do
    local conf = Config.create()
    local org  = Creature.create(conf)

    addVars(org, [2], Helper.Pos(1,1,1))
    Mutator._onAdd(conf, org, Helper.Pos(1,1,6), Code.CodePart(Code.minus, false))

    @fact length(Helper.getLines(org.code, [2])) --> 7
    @fact eval(org.code)(conf, org) --> true
  end
  facts("Testing CodeMath.minus() without variables") do
    local conf = Config.create()
    local org  = Creature.create(conf)

    Mutator._onAdd(conf, org, Helper.Pos(1,1,6), Code.CodePart(Code.minus, false))

    @fact length(Helper.getLines(org.code, [2])) --> 1
    @fact eval(org.code)(conf, org) --> true
  end
end
