module TestWorld
  using World
  using FactCheck

  facts("Tests world creation") do
    @fact size(World.create(10, 15).data) == (15, 10) --> true
  end
end