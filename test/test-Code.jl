module TestCode
  using FactCheck
  import Code
  import Creature
  import Helper
  import Mutator
  import Config

  facts("Testing Code.var() and empty script") do
    org = Creature.create()
    var = Code.var(org, Helper.Pos(1,1,1))

    @fact var.head                                 --> :local
    @fact var.args[1].args[1].args[1]              --> :var_1
  end
  facts("Testing Code.var() and other Code.var()") do
    org = Creature.create()
    Mutator._onAdd(org, Helper.Pos(1,1,1), Code.CodePart(Code.var, false))
    Mutator._onAdd(org, Helper.Pos(1,1,1), Code.CodePart(Code.var, false))
    
    @fact Helper.getHead(org.code, [2,1])          --> :local
    @fact Helper.getHead(org.code, [2,2])          --> :local
    @fact Helper.getArg(org.code, [2,1,1,1,1])     --> :var_2
    @fact Helper.getArg(org.code, [2,2,1,1,1])     --> :var_1
  end
  facts("Testing Code.var() inside Code.fn()") do
    Config.val(:CODE_MAX_FUNC_PARAMS, 1)
    org = Creature.create()
    Mutator._onAdd(org, Helper.Pos(1,1,1), Code.CodePart(Code.fn, true))
    Mutator._onAdd(org, Helper.Pos(2,1,1), Code.CodePart(Code.var, false))

    @fact Helper.getArg(org.code, [2,1,1,1])       --> :func_2
    @fact Helper.getArg(org.code, [2,1,2,1,1,1,1]) --> :var_3
  end
end