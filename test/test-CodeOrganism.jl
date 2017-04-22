#
# Tests for Organism related functions like lookAt(), toMem(),...
#
module TestCodeOrganism
  using FactCheck
  import Code
  import Creature
  import Helper
  import Mutator
  import Config
  import World
  include("Helper.jl")
  #
  # lookAt
  #
  facts("Testing lookAt()") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
    local org = d.orgs[1]

    code(d, :lookAt, org)
    @fact Code.eval(org.code)(d.cfg, org) --> 0.0

    Helper.getArg(org.code, [2,1,1]).args[2] = 100.0
    @fact Code.eval(org.code)(d.cfg, org) --> 0.0

    Helper.getArg(org.code, [2,1,1]).args[2] = 0.0
    @fact Code.eval(org.code)(d.cfg, org) --> 0.0

    Helper.getArg(org.code, [2,1,1]).args[2] = 5.0
    World.setEnergy(d.man.world, Helper.Point(5,5), UInt16(10))
    @fact Code.eval(org.code)(d.cfg, org) --> 10.0

    Manager.destroy(d.man)
    for i=1:100 yield() end
  end
  #
  # Eating
  #
  facts("Checking if left organism can eat right one") do
    local d     = create([Helper.Point(1,1), Helper.Point(2,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local left  = d.orgs[1]
    local right = d.orgs[2]

    code(d, :eatRight, left)
    Helper.getArg(left.code, [2,1,1]).args[2] = realmax(Float64) # means 100 of energy
    updateCode(left)
    @fact left.energy === right.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    @fact left.energy  --> 200
    @fact right.energy --> 0

    Manager.destroy(d.man)
  end
  facts("Checking if left organism can donate right one") do
    local d     = create([Helper.Point(1,1), Helper.Point(2,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local left  = d.orgs[1]
    local right = d.orgs[2]

    code(d, :eatRight, left)
    Helper.getArg(left.code, [2,1,1]).args[2] = realmax(Float64) * -1.0 # means -100 of energy
    updateCode(left)

    @fact left.energy === right.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    @fact left.energy --> 0
    @fact right.energy --> 200

    Manager.destroy(d.man)
  end
  facts("Checking if left organism can eat zero energy from right one") do
    local d = create([Helper.Point(1,1), Helper.Point(2,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local left = d.orgs[1]
    local right = d.orgs[2]

    code(d, :eatRight, left)
    val(left, 0.0) # means 0 of energy
    updateCode(left)

    @fact left.energy === right.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    @fact left.energy --> 100
    @fact right.energy --> 100

    Manager.destroy(d.man)
  end
  facts("Checking if left organism eats right and right eats left") do
    local d = create([Helper.Point(1,1), Helper.Point(2,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local left = d.orgs[1]
    local right = d.orgs[2]

    code(d, :eatRight, left)
    code(d, :eatLeft, right)
    val(left, realmax(Float64) / 2.0)  # means 50 of energy
    val(right, realmax(Float64) / 2.0) # means 50 of energy
    updateCode(left)
    updateCode(right)

    @fact left.energy === right.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    consume(d.task)
    @fact left.energy --> 100
    @fact right.energy --> 100

    Manager.destroy(d.man)
  end

  facts("Checking if up organism can eat down one") do
    local d = create([Helper.Point(1,1), Helper.Point(1,2)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local up = d.orgs[1]
    local down = d.orgs[2]

    code(d, :eatDown, up)
    val(up, realmax(Float64) / 2.0) # means 50 of energy
    updateCode(up)

    @fact up.energy === down.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    @fact up.energy --> 150
    @fact down.energy --> 50

    Manager.destroy(d.man)
  end
  facts("Checking if up organism can donate down one") do
    local d = create([Helper.Point(1,1), Helper.Point(1,2)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local up = d.orgs[1]
    local down = d.orgs[2]

    code(d, :eatDown, up)
    val(up, realmax(Float64) / -2.0) # means -50 of energy
    updateCode(up)

    @fact up.energy === down.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    @fact up.energy --> 50
    @fact down.energy --> 150

    Manager.destroy(d.man)
  end
  facts("Checking if up organism can eat zero energy from down one") do
    local d = create([Helper.Point(1,1), Helper.Point(1,2)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local up = d.orgs[1]
    local down = d.orgs[2]

    code(d, :eatDown, up)
    val(up, 0.0) # means 0 of energy
    updateCode(up)

    @fact up.energy === up.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    @fact up.energy --> 100
    @fact down.energy --> 100

    Manager.destroy(d.man)
  end
  facts("Checking if up organism eats down and down eats up") do
    local d = create([Helper.Point(1,1), Helper.Point(1,2)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local up = d.orgs[1]
    local down = d.orgs[2]

    code(d, :eatDown, up)
    code(d, :eatUp, down)
    val(up, realmax(Float64) / 2.0) # means 50 of energy
    val(down, realmax(Float64) / 2.0) # means 50 of energy
    updateCode(up)
    updateCode(down)

    @fact up.energy === down.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    consume(d.task)
    @fact up.energy --> 100
    @fact down.energy --> 100

    Manager.destroy(d.man)
  end

  facts("Checking if organism can eat empty space") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local up = d.orgs[1]

    code(d, :eatDown, up)
    val(up, realmax(Float64)) # means 100 of energy
    updateCode(up)

    @fact up.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    @fact up.energy --> 100

    Manager.destroy(d.man)
  end
  facts("Checking if organism can eat out of borders") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local up = d.orgs[1]

    code(d, :eatUp, up)
    val(up, realmax(Float64)) # means 100 of energy
    updateCode(up)

    @fact up.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    @fact up.energy --> 100

    Manager.destroy(d.man)
  end
  facts("Checking if organism can eat energy") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local up = d.orgs[1]

    code(d, :eatRight, up)
    val(up, realmax(Float64) / 10.0) # means 10 of energy
    updateCode(up)
    World.setEnergy(d.man.world, Helper.Point(2,1), UInt16(30))

    @fact up.energy === 100 --> true
    @fact World.getEnergy(d.man.world, Helper.Point(2,1)) --> 30
    consume(d.task)
    consume(d.task)
    @fact up.energy --> 110
    @fact World.getEnergy(d.man.world, Helper.Point(2,1)) --> 20
    consume(d.task)
    consume(d.task)
    @fact up.energy --> 130
    @fact World.getEnergy(d.man.world, Helper.Point(2,1)) --> 0
	  consume(d.task)
    @fact up.energy --> 130
    @fact World.getEnergy(d.man.world, Helper.Point(2,1)) --> 0

    Manager.destroy(d.man)
  end
  #
  # Moving
  #
  facts("Checking if organism can move left") do
    local d = create([Helper.Point(3,3)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local org = d.orgs[1]

    code(d, :stepLeft, org)
    consume(d.task)
    @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt16(100)
    @fact World.getEnergy(d.man.world, Helper.Point(2,3)) --> UInt16(0)
    consume(d.task)
    @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt16(0)
    @fact World.getEnergy(d.man.world, Helper.Point(2,3)) --> UInt16(100)

    code(d, :stepLeft, org)
    updateCode(org)
    @fact World.getEnergy(d.man.world, Helper.Point(2,3)) --> UInt16(100)
    @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt16(0)
    consume(d.task)
    consume(d.task)
    @fact World.getEnergy(d.man.world, Helper.Point(1,3)) --> UInt16(100)
    @fact World.getEnergy(d.man.world, Helper.Point(2,3)) --> UInt16(0)
    @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt16(0)

    Manager.destroy(d.man)
  end
  facts("Checking if organism can move right") do
    local d = create([Helper.Point(3,3)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local org = d.orgs[1]

    code(d, :stepRight, org)
    consume(d.task)
    @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt16(100)
    @fact World.getEnergy(d.man.world, Helper.Point(4,3)) --> UInt16(0)
    consume(d.task)
    @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt16(0)
    @fact World.getEnergy(d.man.world, Helper.Point(4,3)) --> UInt16(100)

    code(d, :stepRight, org)
    updateCode(org)
    @fact World.getEnergy(d.man.world, Helper.Point(4,3)) --> UInt16(100)
    @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt16(0)
    consume(d.task)
    consume(d.task)
    @fact World.getEnergy(d.man.world, Helper.Point(5,3)) --> UInt16(100)
    @fact World.getEnergy(d.man.world, Helper.Point(4,3)) --> UInt16(0)
    @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt16(0)

    Manager.destroy(d.man)
  end
  facts("Checking if organism can move up") do
    local d = create([Helper.Point(3,3)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local org = d.orgs[1]

    code(d, :stepUp, org)
    updateCode(org)
    consume(d.task)
    @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt16(100)
    @fact World.getEnergy(d.man.world, Helper.Point(3,2)) --> UInt16(0)
    consume(d.task)
    @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt16(0)
    @fact World.getEnergy(d.man.world, Helper.Point(3,2)) --> UInt16(100)

    code(d, :stepUp, org)
    updateCode(org)
    @fact World.getEnergy(d.man.world, Helper.Point(3,2)) --> UInt16(100)
    @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt16(0)
    consume(d.task)
    consume(d.task)
    @fact World.getEnergy(d.man.world, Helper.Point(3,1)) --> UInt16(100)
    @fact World.getEnergy(d.man.world, Helper.Point(3,2)) --> UInt16(0)
    @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt16(0)

    Manager.destroy(d.man)
  end
  facts("Checking if organism can move down") do
    local d = create([Helper.Point(3,3)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local org = d.orgs[1]

    code(d, :stepDown, org)
    updateCode(org)
    consume(d.task)
    @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt16(100)
    @fact World.getEnergy(d.man.world, Helper.Point(3,4)) --> UInt16(0)
    consume(d.task)
    @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt16(0)
    @fact World.getEnergy(d.man.world, Helper.Point(3,4)) --> UInt16(100)

    code(d, :stepDown, org)
    updateCode(org)
    @fact World.getEnergy(d.man.world, Helper.Point(3,4)) --> UInt16(100)
    @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt16(0)
    consume(d.task)
    consume(d.task)
    @fact World.getEnergy(d.man.world, Helper.Point(3,5)) --> UInt16(100)
    @fact World.getEnergy(d.man.world, Helper.Point(3,4)) --> UInt16(0)
    @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt16(0)

    Manager.destroy(d.man)
  end
  # TODO: same tests for right, up, down
  facts("Checking if organism can move left out of the border in cyclic mode") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100, :worldCyclical=>true))
    local org = d.orgs[1]

    code(d, :stepLeft, org)
    updateCode(org)
    consume(d.task)
    @fact World.getEnergy(d.man.world, Helper.Point(1,1)) --> UInt16(100)
    @fact World.getEnergy(d.man.world, Helper.Point(10,1)) --> UInt16(0)
    consume(d.task)
    @fact World.getEnergy(d.man.world, Helper.Point(1,1)) --> UInt16(0)
    @fact World.getEnergy(d.man.world, Helper.Point(10,1)) --> UInt16(100)

    Manager.destroy(d.man)
  end
  facts("Checking if organism can't move left, because of energy block") do
    local d = create([Helper.Point(2,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local org = d.orgs[1]

    code(d, :stepLeft, org)
    updateCode(org)
    World.setEnergy(d.man.world, Helper.Point(1,1), UInt16(123))
    consume(d.task)
    @fact World.getEnergy(d.man.world, Helper.Point(2,1)) --> UInt16(100)
    @fact World.getEnergy(d.man.world, Helper.Point(1,1)) --> UInt16(123)
    consume(d.task)
    @fact World.getEnergy(d.man.world, Helper.Point(2,1)) --> UInt16(100)
    @fact World.getEnergy(d.man.world, Helper.Point(1,1)) --> UInt16(123)

    Manager.destroy(d.man)
  end
  facts("Checking if organism can move left out of the border in cyclic mode and can't, because of energy block") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100, :worldCyclical=>true))
    local org = d.orgs[1]

    code(d, :stepLeft, org)
    updateCode(org)
    #
    # Sets energy on the right side of the world
    #
    World.setEnergy(d.man.world, Helper.Point(10,1), UInt16(123))
    consume(d.task)
    @fact World.getEnergy(d.man.world, Helper.Point(1,1)) --> UInt16(100)
    @fact World.getEnergy(d.man.world, Helper.Point(10,1)) --> UInt16(123)
    consume(d.task)
    @fact World.getEnergy(d.man.world, Helper.Point(1,1)) --> UInt16(100)
    @fact World.getEnergy(d.man.world, Helper.Point(10,1)) --> UInt16(123)
    #
    # Removes energy on the right side of the world
    #
    World.setEnergy(d.man.world, Helper.Point(10,1), UInt16(0))
    consume(d.task)
    consume(d.task)
    @fact World.getEnergy(d.man.world, Helper.Point(1,1)) --> UInt16(0)
    @fact World.getEnergy(d.man.world, Helper.Point(10,1)) --> UInt16(100)

    Manager.destroy(d.man)
  end
  facts("Checking if organism can move left out of the border in non cyclic mode") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100, :worldCyclical=>false))
    local org = d.orgs[1]

    code(d, :stepLeft, org)
    updateCode(org)

    consume(d.task)
    @fact World.getEnergy(d.man.world, Helper.Point(1,1)) --> UInt16(100)
    @fact World.getEnergy(d.man.world, Helper.Point(10,1)) --> UInt16(0)
    consume(d.task)
    consume(d.task)
    @fact World.getEnergy(d.man.world, Helper.Point(1,1)) --> UInt16(100)
    @fact World.getEnergy(d.man.world, Helper.Point(10,1)) --> UInt16(0)

    Manager.destroy(d.man)
  end
end
