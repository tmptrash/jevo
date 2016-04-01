module TestMutator
  using FactCheck
  import Creature
  import Mutator
  import Config
  import Helper
  import Code

  facts("Adding var to empty code") do
    probs = Config.val(:ORGANISM_MUTATION_PROBABILITIES)
    Config.val(:ORGANISM_MUTATION_PROBABILITIES, [1,0,0,0,0,0,0])
    Mutator.Code.eval(parse("function getRandPos(o::Creature.Organism) Helper.Pos(1,1,1) end"))
    Mutator.Code.eval(parse("const CODE_PARTS = [CodePart(Code.var, false)]"))

    org = Creature.create()
    @fact Mutator._onAdd(org)                         --> true
    @fact org.code.args[2].args[1].head               --> :local
    @fact Helper.getLines(org.code, [2,1,1,1])[1]     --> :var_1
    hasType = false
    for i in Helper.SUPPORTED_TYPES if length(org.funcs[1].blocks[1].vars[i]) > 0 hasType = true end end
    @fact hasType                                     --> true

    Config.val(:ORGANISM_MUTATION_PROBABILITIES, probs)
    include("../src/organism/Mutator.jl")
  end
  facts("Adding function declaration") do
    probs = Config.val(:ORGANISM_MUTATION_PROBABILITIES)
    Config.val(:ORGANISM_MUTATION_PROBABILITIES, [1,0,0,0,0,0,0])
    fnMax = Config.val(:CODE_MAX_FUNC_PARAMS)
    Config.val(:CODE_MAX_FUNC_PARAMS, 1)
    Mutator.Code.eval(parse("function getRandPos(o::Creature.Organism) Helper.Pos(1,1,1) end"))
    Mutator.Code.eval(parse("const CODE_PARTS = [CodePart(Code.fn, true)]"))

    org = Creature.create()
    @fact Mutator._onAdd(org)                         --> true
    @fact Helper.getLines(org.code, [2,1,1])[1]       --> :func_2
    println(org.code)

    Config.val(:CODE_MAX_FUNC_PARAMS, fnMax)
    Config.val(:ORGANISM_MUTATION_PROBABILITIES, probs)
    include("../src/organism/Mutator.jl")
  end
end