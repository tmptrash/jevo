module TestMutator
  using FactCheck
  using Mutator
  using Config

  facts("Observer creation should work") do
    @fact length(Event.create().events) --> 0
  end
end