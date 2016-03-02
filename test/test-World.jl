module TestWorld
  using World
  using Helper
  using FactCheck

  facts("Tests world creation") do
    @fact size(World.create(10, 15).data) == (15, 10) --> true
  end
  facts("Tests world correct dimentions") do
    plane = World.create(15, 10)
    World.setEnergy(plane, Helper.Point(15, 10), UInt32(123))
    @fact World.getEnergy(plane, Helper.Point(15, 10)) --> UInt32(123)
  end
  facts("Tests world correct energy set and get") do
    plane = World.create(15, 10)
    World.setEnergy(plane, Helper.Point(0,  0 ), UInt32(123))
    World.setEnergy(plane, Helper.Point(1,  1 ), UInt32(123))
    World.setEnergy(plane, Helper.Point(15, 1 ), UInt32(123))
    World.setEnergy(plane, Helper.Point(0,  10), UInt32(123))
    World.setEnergy(plane, Helper.Point(10, 15), UInt32(123))

    @fact World.getEnergy(plane, Helper.Point(0,  0 )) --> UInt32(0)
    @fact World.getEnergy(plane, Helper.Point(1,  1 )) --> UInt32(123)
    @fact World.getEnergy(plane, Helper.Point(15, 1 )) --> UInt32(123)
    @fact World.getEnergy(plane, Helper.Point(0,  10)) --> UInt32(0)
    @fact World.getEnergy(plane, Helper.Point(10, 15)) --> UInt32(0)
  end
end