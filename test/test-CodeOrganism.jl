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

    val(org, Float16(100.0))
    @fact Code.eval(org.code)(d.cfg, org) --> 0.0

    val(org, Float16(0.0))
    @fact Code.eval(org.code)(d.cfg, org) --> 0.0

    val(org, Float16(5.0))
    World.setEnergy(d.man.world, Helper.Point(5,5), UInt16(10))
    @fact Code.eval(org.code)(d.cfg, org) --> 10.0

    Manager.destroy(d.man)
  end
  #
  # Eating
  #
  facts("Checking if left organism can eat right one") do
    local d     = create([Helper.Point(1,1), Helper.Point(2,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local left  = d.orgs[1]
    local right = d.orgs[2]

    code(d, :eatRight, left)
    updateCode(left)
    @fact left.energy === right.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    @fact left.energy  --> 105
    @fact right.energy --> 95

    Manager.destroy(d.man)
  end
  facts("Checking if left organism can donate right one") do
    local d     = create([Helper.Point(1,1), Helper.Point(2,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local left  = d.orgs[1]
    local right = d.orgs[2]

    code(d, :eatRight, left)
    val(left, Float16(-5.0))
    updateCode(left)

    @fact left.energy === right.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    @fact left.energy --> 95
    @fact right.energy --> 105

    Manager.destroy(d.man)
  end
  facts("Checking if left organism can eat zero energy from right one") do
    local d = create([Helper.Point(1,1), Helper.Point(2,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local left = d.orgs[1]
    local right = d.orgs[2]

    code(d, :eatRight, left)
    val(left, Float16(0.0))
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
    updateCode(up)

    @fact up.energy === down.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    @fact up.energy --> 105
    @fact down.energy --> 95

    Manager.destroy(d.man)
  end
  facts("Checking if up organism can donate down one") do
    local d = create([Helper.Point(1,1), Helper.Point(1,2)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local up = d.orgs[1]
    local down = d.orgs[2]

    code(d, :eatDown, up)
    val(up, Float16(-5.0))
    updateCode(up)

    @fact up.energy === down.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    @fact up.energy --> 95
    @fact down.energy --> 105

    Manager.destroy(d.man)
  end
  facts("Checking if up organism can eat zero energy from down one") do
    local d = create([Helper.Point(1,1), Helper.Point(1,2)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local up = d.orgs[1]
    local down = d.orgs[2]

    code(d, :eatDown, up)
    val(up, Float16(0.0))
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
    updateCode(up)
    World.setEnergy(d.man.world, Helper.Point(2,1), UInt16(30))

    @fact up.energy === 100 --> true
    @fact World.getEnergy(d.man.world, Helper.Point(2,1)) --> 30
    consume(d.task)
    consume(d.task)
    @fact up.energy --> 105
    @fact World.getEnergy(d.man.world, Helper.Point(2,1)) --> 25
    consume(d.task)
    consume(d.task)
    @fact up.energy --> 115
    @fact World.getEnergy(d.man.world, Helper.Point(2,1)) --> 15
	  consume(d.task)
    @fact up.energy --> 120
    @fact World.getEnergy(d.man.world, Helper.Point(2,1)) --> 10

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

    consume(d.task)
    @fact World.getEnergy(d.man.world, Helper.Point(1,1)) --> UInt16(100)
    @fact World.getEnergy(d.man.world, Helper.Point(10,1)) --> UInt16(0)
    consume(d.task)
    consume(d.task)
    @fact World.getEnergy(d.man.world, Helper.Point(1,1)) --> UInt16(100)
    @fact World.getEnergy(d.man.world, Helper.Point(10,1)) --> UInt16(0)

    Manager.destroy(d.man)
  end
  #
  # Memory
  #
  facts("Checking if organism can save something to internal memory") do
    local d   = create([Helper.Point(1,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local org = d.orgs[1]

    code(d, :toMem, org)
    consume(d.task)
    @fact haskey(org.mem, val(org)) --> false
    consume(d.task)
    @fact haskey(org.mem, val(org)) --> true

    Manager.destroy(d.man)
  end
  facts("Checking if organism can load something from internal memory") do
    local d   = create([Helper.Point(1,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local org = d.orgs[1]

    code(d, :fromMem, org)
    org.mem[val(org)] = 12.0
    consume(d.task)
    consume(d.task)
    @fact Code.eval(org.code)(d.cfg, org) --> 12.0

    Manager.destroy(d.man)
  end
  # #
  # # id
  # #
  # facts("Checking if organism can check id of other organism") do
  #   local d     = create([Helper.Point(1,1), Helper.Point(2,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
  #   local left  = d.orgs[1]
  #   local right = d.orgs[2]
  #
  #   code(d, :idLeft, right)
  #   consume(d.task)
  #   consume(d.task)
  #   @fact Code.eval(right.code)(d.cfg, right) --> 1.0
  #
  #   Manager.destroy(d.man)
  # end
  # facts("Checking if organism can check id of nothing") do
  #   local d   = create([Helper.Point(1,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
  #   local org = d.orgs[1]
  #
  #   code(d, :idRight, org)
  #   consume(d.task)
  #   consume(d.task)
  #   @fact Code.eval(org.code)(d.cfg, org) --> 0.0
  #
  #   Manager.destroy(d.man)
  # end
  # facts("Checking if organism can check id out of borders") do
  #   local d   = create([Helper.Point(1,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
  #   local org = d.orgs[1]
  #
  #   code(d, :idLeft, org)
  #   consume(d.task)
  #   consume(d.task)
  #   @fact Code.eval(org.code)(d.cfg, org) --> 0.0
  #
  #   Manager.destroy(d.man)
  # end
  # facts("Checking if organism can check id of energy block") do
  #   local d   = create([Helper.Point(1,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
  #   local org = d.orgs[1]
  #
  #   World.setEnergy(d.man.world, Helper.Point(2,1), UInt16(10))
  #   code(d, :idRight, org)
  #   consume(d.task)
  #   consume(d.task)
  #   @fact Code.eval(org.code)(d.cfg, org) --> 0.0
  #
  #   Manager.destroy(d.man)
  # end
  #
  # Check energy
  #
  facts("Checking if organism can get energy of other organism") do
    local d     = create([Helper.Point(1,1), Helper.Point(2,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local left  = d.orgs[1]
    local right = d.orgs[2]

    code(d, :energyLeft, right)
    consume(d.task)
    consume(d.task)
    @fact Code.eval(right.code)(d.cfg, right) --> 100.0

    Manager.destroy(d.man)
  end
  facts("Checking if organism can get energy of nothing") do
    local d   = create([Helper.Point(1,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local org = d.orgs[1]

    code(d, :energyRight, org)
    consume(d.task)
    consume(d.task)
    @fact Code.eval(org.code)(d.cfg, org) --> 0.0

    Manager.destroy(d.man)
  end
  facts("Checking if organism can get energy out of borders") do
    local d   = create([Helper.Point(1,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local org = d.orgs[1]

    code(d, :energyLeft, org)
    consume(d.task)
    consume(d.task)
    @fact Code.eval(org.code)(d.cfg, org) --> 0.0

    Manager.destroy(d.man)
  end
  facts("Checking if organism can get energy from real energy block") do
    local d   = create([Helper.Point(1,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local org = d.orgs[1]

    World.setEnergy(d.man.world, Helper.Point(2,1), UInt16(10))
    code(d, :energyRight, org)
    consume(d.task)
    consume(d.task)
    @fact Code.eval(org.code)(d.cfg, org) --> 0.0

    Manager.destroy(d.man)
  end
end
