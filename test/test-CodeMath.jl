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
    org = Creature.create()
    addVars(org, [2], Helper.Pos(1,1,1))
    Mutator._onAdd(org, Helper.Pos(1,1,6), Code.CodePart(Code.plus, false))
    op = Helper.getArg(org.code, [2,6,2,1]) # operator

    @fact (op === :(+) || op === :(*) || op === :(&)) --> true
    @fact length(Helper.getLines(org.code, [2])) --> 7
    @fact eval(org.code)(org) --> true
  end
  facts("Testing CodeMath.plus() without variables") do
    org = Creature.create()
    Mutator._onAdd(org, Helper.Pos(1,1,6), Code.CodePart(Code.plus, false))

    @fact length(Helper.getLines(org.code, [2])) --> 1
    @fact eval(org.code)(org) --> true
  end
  # facts("Testing CodeMath.plus() without variables") do
  #   org = Creature.create()
  #   addVar(org, [2], Helper.Pos(1,1,1), Int8)
  #   Mutator._onAdd(org, Helper.Pos(1,1,2), Code.CodePart(Code.plus, false))
  #   println(org.code)

  #   #@fact length(Helper.getLines(org.code, [2])) --> 1
  #   #@fact eval(org.code)(org) --> true
  # end
end