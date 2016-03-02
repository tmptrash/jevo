module TestWorld
  using World
  using Helper
  using FactCheck

  facts("Tests world creation") do
    @fact size(World.create(10, 15).data) == (15, 10) --> true
  end
  facts("Tests world creation with zero energy on the plain") do
    plane = World.create(1, 1)
    @fact World.getEnergy(plane, Helper.Point(1,1)) --> UInt32(0)
    World.destroy(plane)
  end
  facts("Tests energy reset") do
    plane = World.create(10, 10)
    @fact World.setEnergy(plane, Helper.Point(5, 3), UInt32(12))  --> UInt32(12)
    @fact World.setEnergy(plane, Helper.Point(5, 3), UInt32(123)) --> UInt32(123)
    @fact World.getEnergy(plane, Helper.Point(5, 3)) --> UInt32(123)
    World.destroy(plane)
  end
  facts("Tests energy set to zero") do
    plane = World.create(10, 10)
    @fact World.setEnergy(plane, Helper.Point(5, 3), UInt32(12)) --> UInt32(12)
    @fact World.setEnergy(plane, Helper.Point(5, 3), UInt32(0)) --> UInt32(0)
    @fact World.getEnergy(plane, Helper.Point(5, 3)) --> UInt32(0)
    World.destroy(plane)
  end
  facts("Tests world correct dimentions") do
    plane = World.create(15, 10)
    World.setEnergy(plane, Helper.Point(15, 10), UInt32(123))
    @fact World.getEnergy(plane, Helper.Point(15, 10)) --> UInt32(123)
    World.destroy(plane)
  end
  facts("Tests world correct energy set and get within and outside plane") do
    plane = World.create(15, 10)
    World.setEnergy(plane, Helper.Point(0,   0 ), UInt32(123))
    World.setEnergy(plane, Helper.Point(1,   1 ), UInt32(123))
    World.setEnergy(plane, Helper.Point(15,  1 ), UInt32(123))
    World.setEnergy(plane, Helper.Point(0,   10), UInt32(123))
    World.setEnergy(plane, Helper.Point(10,  15), UInt32(123))
    World.setEnergy(plane, Helper.Point(-10,-15), UInt32(123))
    World.setEnergy(plane, Helper.Point(10,  10), UInt32(123))

    @fact World.getEnergy(plane, Helper.Point(0,   0 )) --> UInt32(0)
    @fact World.getEnergy(plane, Helper.Point(1,   1 )) --> UInt32(123)
    @fact World.getEnergy(plane, Helper.Point(15,  1 )) --> UInt32(123)
    @fact World.getEnergy(plane, Helper.Point(0,   10)) --> UInt32(0)
    @fact World.getEnergy(plane, Helper.Point(10,  15)) --> UInt32(0)
    @fact World.getEnergy(plane, Helper.Point(-10,-15)) --> UInt32(0)
    @fact World.getEnergy(plane, Helper.Point(10,  10)) --> UInt32(123)

    World.destroy(plane)
  end
  facts("Tests getting free position") do
    plane = World.create(2, 1)
    World.setEnergy(plane, Helper.Point(1, 1), UInt32(1))
    pos = World.getFreePos(plane)
    @fact (pos.x === 2 && pos.y === 1) --> true
    World.destroy(plane)
  end
end