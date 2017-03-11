module TestWorld
  using World
  using Helper
  using FactCheck
  import Dots

  facts("Tests world creation") do
    @fact size(World.create(10, 15).data) == (15, 10) --> true
  end
  facts("Tests world creation with zero energy on the plain") do
    plane = World.create(1, 1)
    @fact World.getEnergy(plane, Helper.Point(1,1)) --> Dots.INDEX_EMPTY
    World.destroy(plane)
  end
  # TODO: add test of setting energy into existing dot
  facts("Tests energy reset") do
    plane = World.create(10, 10)
    @fact World.setEnergy(plane, Helper.Point(5, 3), UInt16(12))  --> true
    @fact World.setEnergy(plane, Helper.Point(5, 3), UInt16(123)) --> true
    @fact World.getEnergy(plane, Helper.Point(5, 3)) --> UInt16(123)
    World.destroy(plane)
  end
  facts("Tests energy set to zero") do
    plane = World.create(10, 10)
    @fact World.setEnergy(plane, Helper.Point(5, 3), UInt16(12)) --> true
    @fact World.setEnergy(plane, Helper.Point(5, 3), UInt16(0)) --> true
    @fact World.getEnergy(plane, Helper.Point(5, 3)) --> UInt16(0)
    World.destroy(plane)
  end
  facts("Tests world correct dimentions") do
    plane = World.create(15, 10)
    World.setEnergy(plane, Helper.Point(15, 10), UInt16(123))
    @fact World.getEnergy(plane, Helper.Point(15, 10)) --> UInt16(123)
    World.destroy(plane)
  end
  facts("Tests world correct energy set and get within and outside plane") do
    plane = World.create(15, 10)
    World.setEnergy(plane, Helper.Point(0,   0 ), UInt16(123))
    World.setEnergy(plane, Helper.Point(1,   1 ), UInt16(123))
    World.setEnergy(plane, Helper.Point(15,  1 ), UInt16(123))
    World.setEnergy(plane, Helper.Point(0,   10), UInt16(123))
    World.setEnergy(plane, Helper.Point(10,  15), UInt16(123))
    World.setEnergy(plane, Helper.Point(-10,-15), UInt16(123))
    World.setEnergy(plane, Helper.Point(10,  10), UInt16(123))

    @fact World.getEnergy(plane, Helper.Point(0,   0 )) --> UInt16(0)
    @fact World.getEnergy(plane, Helper.Point(1,   1 )) --> UInt16(123)
    @fact World.getEnergy(plane, Helper.Point(15,  1 )) --> UInt16(123)
    @fact World.getEnergy(plane, Helper.Point(0,   10)) --> UInt16(0)
    @fact World.getEnergy(plane, Helper.Point(10,  15)) --> UInt16(0)
    @fact World.getEnergy(plane, Helper.Point(-10,-15)) --> UInt16(0)
    @fact World.getEnergy(plane, Helper.Point(10,  10)) --> UInt16(123)

    World.destroy(plane)
  end
  facts("Tests getting free position") do
    plane = World.create(2, 1)
    World.setEnergy(plane, Helper.Point(1, 1), UInt16(1))
    pos = World.getFreePos(plane)
    @fact (pos.x === 2 && pos.y === 1) --> true
    #every point are full
    World.setEnergy(plane, Helper.Point(2, 1), UInt16(1))
    @fact World.getFreePos(plane) --> false

    World.destroy(plane)
  end
  facts("Tests grabbing energy") do
    plane = World.create(3, 3)
    World.setEnergy(plane, Helper.Point(2, 2), UInt16(10))
    @fact World.grabEnergy(plane, Helper.Point(2, 2), UInt16(5)) --> UInt16(5)
    @fact World.getEnergy(plane, Helper.Point(2, 2)) --> UInt16(5)
    @fact World.grabEnergy(plane, Helper.Point(2, 2), UInt16(10)) --> UInt16(5)
    @fact World.getEnergy(plane, Helper.Point(2, 2)) --> UInt16(0)
    @fact World.grabEnergy(plane, Helper.Point(2, 2), UInt16(5)) --> UInt16(0)
    World.destroy(plane)
  end
  facts("Tests near free points") do
    plane = World.create(3, 3)
    #
    # 0 1 1
    # 1   1
    # 1 1 1
    #
    World.setEnergy(plane, Helper.Point(1, 1), UInt16(0))
    World.setEnergy(plane, Helper.Point(2, 1), UInt16(1))
    World.setEnergy(plane, Helper.Point(3, 1), UInt16(1))
    World.setEnergy(plane, Helper.Point(1, 2), UInt16(1))
    World.setEnergy(plane, Helper.Point(3, 2), UInt16(1))
    World.setEnergy(plane, Helper.Point(1, 3), UInt16(1))
    World.setEnergy(plane, Helper.Point(2, 3), UInt16(1))
    World.setEnergy(plane, Helper.Point(3, 3), UInt16(1))
    pos = World.getNearFreePos(plane, Helper.Point(2, 2))
    @fact (pos.x === 1 && pos.y === 1) --> true
    #
    # 1 0 1
    # 1   1
    # 1 1 1
    #
    World.setEnergy(plane, Helper.Point(1, 1), UInt16(1))
    World.setEnergy(plane, Helper.Point(2, 1), UInt16(0))
    World.setEnergy(plane, Helper.Point(3, 1), UInt16(1))
    World.setEnergy(plane, Helper.Point(1, 2), UInt16(1))
    World.setEnergy(plane, Helper.Point(3, 2), UInt16(1))
    World.setEnergy(plane, Helper.Point(1, 3), UInt16(1))
    World.setEnergy(plane, Helper.Point(2, 3), UInt16(1))
    World.setEnergy(plane, Helper.Point(3, 3), UInt16(1))
    pos = World.getNearFreePos(plane, Helper.Point(2, 2))
    @fact (pos.x === 2 && pos.y === 1) --> true
    #
    # 1 1 0
    # 1   1
    # 1 1 1
    #
    World.setEnergy(plane, Helper.Point(1, 1), UInt16(1))
    World.setEnergy(plane, Helper.Point(2, 1), UInt16(1))
    World.setEnergy(plane, Helper.Point(3, 1), UInt16(0))
    World.setEnergy(plane, Helper.Point(1, 2), UInt16(1))
    World.setEnergy(plane, Helper.Point(3, 2), UInt16(1))
    World.setEnergy(plane, Helper.Point(1, 3), UInt16(1))
    World.setEnergy(plane, Helper.Point(2, 3), UInt16(1))
    World.setEnergy(plane, Helper.Point(3, 3), UInt16(1))
    pos = World.getNearFreePos(plane, Helper.Point(2, 2))
    @fact (pos.x === 3 && pos.y === 1) --> true
    #
    # 1 1 1
    # 0   1
    # 1 1 1
    #
    World.setEnergy(plane, Helper.Point(1, 1), UInt16(1))
    World.setEnergy(plane, Helper.Point(2, 1), UInt16(1))
    World.setEnergy(plane, Helper.Point(3, 1), UInt16(1))
    World.setEnergy(plane, Helper.Point(1, 2), UInt16(0))
    World.setEnergy(plane, Helper.Point(3, 2), UInt16(1))
    World.setEnergy(plane, Helper.Point(1, 3), UInt16(1))
    World.setEnergy(plane, Helper.Point(2, 3), UInt16(1))
    World.setEnergy(plane, Helper.Point(3, 3), UInt16(1))
    pos = World.getNearFreePos(plane, Helper.Point(2, 2))
    @fact (pos.x === 1 && pos.y === 2) --> true
    #
    # 1 1 1
    # 1   0
    # 1 1 1
    #
    World.setEnergy(plane, Helper.Point(1, 1), UInt16(1))
    World.setEnergy(plane, Helper.Point(2, 1), UInt16(1))
    World.setEnergy(plane, Helper.Point(3, 1), UInt16(1))
    World.setEnergy(plane, Helper.Point(1, 2), UInt16(1))
    World.setEnergy(plane, Helper.Point(3, 2), UInt16(0))
    World.setEnergy(plane, Helper.Point(1, 3), UInt16(1))
    World.setEnergy(plane, Helper.Point(2, 3), UInt16(1))
    World.setEnergy(plane, Helper.Point(3, 3), UInt16(1))
    pos = World.getNearFreePos(plane, Helper.Point(2, 2))
    @fact (pos.x === 3 && pos.y === 2) --> true
    #
    # 1 1 1
    # 1   1
    # 0 1 1
    #
    World.setEnergy(plane, Helper.Point(1, 1), UInt16(1))
    World.setEnergy(plane, Helper.Point(2, 1), UInt16(1))
    World.setEnergy(plane, Helper.Point(3, 1), UInt16(1))
    World.setEnergy(plane, Helper.Point(1, 2), UInt16(0))
    World.setEnergy(plane, Helper.Point(3, 2), UInt16(1))
    World.setEnergy(plane, Helper.Point(1, 3), UInt16(0))
    World.setEnergy(plane, Helper.Point(2, 3), UInt16(1))
    World.setEnergy(plane, Helper.Point(3, 3), UInt16(1))
    pos = World.getNearFreePos(plane, Helper.Point(2, 2))
    @fact (pos.x === 1 && pos.y === 3) --> true
    #
    # 1 1 1
    # 1   1
    # 1 0 1
    #
    World.setEnergy(plane, Helper.Point(1, 1), UInt16(1))
    World.setEnergy(plane, Helper.Point(2, 1), UInt16(1))
    World.setEnergy(plane, Helper.Point(3, 1), UInt16(1))
    World.setEnergy(plane, Helper.Point(1, 2), UInt16(1))
    World.setEnergy(plane, Helper.Point(3, 2), UInt16(1))
    World.setEnergy(plane, Helper.Point(1, 3), UInt16(1))
    World.setEnergy(plane, Helper.Point(2, 3), UInt16(0))
    World.setEnergy(plane, Helper.Point(3, 3), UInt16(1))
    pos = World.getNearFreePos(plane, Helper.Point(2, 2))
    @fact (pos.x === 2 && pos.y === 3) --> true
    #
    # 1 1 1
    # 1   1
    # 1 1 0
    #
    World.setEnergy(plane, Helper.Point(1, 1), UInt16(1))
    World.setEnergy(plane, Helper.Point(2, 1), UInt16(1))
    World.setEnergy(plane, Helper.Point(3, 1), UInt16(1))
    World.setEnergy(plane, Helper.Point(1, 2), UInt16(0))
    World.setEnergy(plane, Helper.Point(3, 2), UInt16(1))
    World.setEnergy(plane, Helper.Point(1, 3), UInt16(1))
    World.setEnergy(plane, Helper.Point(2, 3), UInt16(1))
    World.setEnergy(plane, Helper.Point(3, 3), UInt16(0))
    pos = World.getNearFreePos(plane, Helper.Point(2, 2))
    @fact (pos.x === 3 && pos.y === 3) --> true

    World.destroy(plane)
  end
end
