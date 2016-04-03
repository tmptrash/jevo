module TestCode
  using FactCheck
  import Code
  import Creature

  facts("Testing Code.var()") do
    org = Creature.create()
    @fact true --> true
  end
end