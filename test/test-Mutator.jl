module TestMutator
  using FactCheck
  import Creature
  import Mutator
  import Config
  import Helper
  import Code

  # #
  # # Just a container for testing data
  # #
  # type Data
  #   d::Array{Any, 1}
  # end
  # #
  # # Global data container instance
  # #
  # global _d = Data(Array{Any, 1}(10))
  # #
  # # Changes mutation parameters to supress any mutation type
  # # except adding
  # #
  # function setAddMutation()
  #   _d.d[1] = Config.val(:orgMutationProbs)
  #   Config.val(:orgMutationProbs, [1,0,0,0,0,0,0])
  # end
  # function restoreAddMutation()	Config.val(:orgMutationProbs, _d.d[1]) end
  # #
  # # Sets maximum function parameters to 1. Related to add mutation.
  # #
  # function setMaxFuncParams()
  #   _d.d[2] = Config.val(:codeFuncParamAmount)
  #   Config.val(:codeFuncParamAmount, 1)
  # end
  # function restoreMaxFuncParams() Config.val(:codeFuncParamAmount, _d.d[2]) end
  # #
  # # pos - "1,2,3" fn - 1, block - 2, line - 3
  # #
  # function setMutationPos(pos::String) Mutator.Code.eval(parse("function getRandPos(org::Creature.Organism) Helper.CodePos(" * pos * ") end")) end
  # function setCodePart(part::String) Mutator.Code.eval(parse("const CODE_PARTS = [CodePart(" * part * ")]")) end
  # function restoreMutator() include("../src/organism/Mutator.jl") end
  # #
  # # Checks if one of supported code part types was added into AST
  # #
  # function isVarAdded(org)
  #   local hasType = false
  #   for i in [Float16] if length(org.funcs[1].blocks[1].vars[i]) > 0 hasType = true end end
  #   hasType
  # end

  # facts("Adding var to empty code") do
  #   setAddMutation()
  #   setMutationPos("1,1,1")
  #   setCodePart("Code.plus, false")

  #   org = Creature.create()
  #   @fact Mutator._onAdd(org)                         --> true
  #   @fact org.code.args[2].args[1].head               --> :local
  #   @fact Helper.getLines(org.code, [2,1,1,1])[1]     --> :var_1

  #   restoreAddMutation()
  #   restoreMutator()
  # end
  # facts("Adding two vars to empty code") do
  #   setAddMutation()
  #   setMutationPos("1,1,1")
  #   setCodePart("Code.plus, false")

  #   org = Creature.create()
  #   @fact Mutator._onAdd(org)                         --> true
  #   @fact Mutator._onAdd(org)                         --> true
  #   @fact org.code.args[2].args[1].head               --> :local
  #   @fact org.code.args[2].args[2].head               --> :local
  #   @fact Helper.getLines(org.code, [2,1,1,1])[1]     --> :var_2
  #   @fact Helper.getLines(org.code, [2,2,1,1])[1]     --> :var_1

  #   restoreAddMutation()
  #   restoreMutator()
  # end
  # facts("Adding var into the function") do
  #   setAddMutation()
  #   setMutationPos("1,1,1")
  #   setCodePart("Code.fn, true")
  #   setMaxFuncParams()

  #   org = Creature.create()
  #   @fact Mutator._onAdd(org)                         --> true
  #   @fact Helper.getLines(org.code, [2,1,1])[1]       --> :func_2
  #   setMutationPos("2,1,1")
  #   println(Code.getRandPos(org))
  #   setCodePart("Code.plus, false")
  #   @fact Mutator._onAdd(org)                         --> true
  #   #println(Helper.getLines(org.code, [2,2,1,1])[1]     --> :var_1)

  #   restoreMaxFuncParams()
  #   restoreAddMutation()
  #   restoreMutator()
  # end
  # facts("Adding function declaration") do
  #   setAddMutation()
  #   setMutationPos("1,1,1")
  #   setCodePart("Code.fn, true")
  #   setMaxFuncParams()

  #   org = Creature.create()
  #   @fact Mutator._onAdd(org)                         --> true
  #   @fact Helper.getLines(org.code, [2,1,1])[1]       --> :func_2

  #   restoreMaxFuncParams()
  #   restoreAddMutation()
  #   restoreMutator()
  # end
end
