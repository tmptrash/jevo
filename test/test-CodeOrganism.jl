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
  # #
  # # lookAt
  # #
  # facts("Testing lookAt()") do
  #   local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
  #   local org = d.orgs[1]
  #
  #   code(d, :lookAt, org)
  #   @fact length(Helper.getLines(org.code, [2])) --> Creature.VARS_AMOUNT + 2
  #   @fact Helper.getArg(org.code, [2,Creature.VARS_AMOUNT + 1,2,2,1]) --> :(Creature.getEnergy)
  #   @fact Code.eval(org.code)(d.cfg, org) --> true
  #
  #   Manager.destroy(d.man)
  # end
  # facts("Testing if lookAt() works") do
  #   local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:worldWidth=>2, :worldHeight=>2))
  #   local org = d.orgs[1]
  #   #
  #   # Sets some energy to the cell and checks it
  #   #
  #   World.setEnergy(d.man.world, Helper.Point(2,2), UInt32(123))
  #   @fact World.getEnergy(d.man.world, Helper.Point(2,2)) --> UInt32(123)
  #   @fact Creature.getEnergy(org, 2, 2) --> UInt32(123)
  #
  #   World.setEnergy(d.man.world, Helper.Point(2,2), UInt32(0))
  #   @fact World.getEnergy(d.man.world, Helper.Point(2,2)) --> UInt32(0)
  #   @fact Creature.getEnergy(org, 2, 2) --> UInt32(0)
  #
  #   @fact Code.eval(org.code)(d.cfg, org) --> true
  #
  #   Manager.destroy(d.man)
  # end
  # facts("Testing if lookAt() with wrong coordinates works") do
  #   local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:worldWidth=>2, :worldHeight=>2))
  #   local org = d.orgs[1]
  #
  #   @fact World.getEnergy(d.man.world, Helper.Point(0,0)) --> UInt32(0)
  #   @fact World.getEnergy(d.man.world, Helper.Point(0,1)) --> UInt32(0)
  #   @fact World.getEnergy(d.man.world, Helper.Point(1,0)) --> UInt32(0)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt32(0)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,2)) --> UInt32(0)
  #   @fact World.getEnergy(d.man.world, Helper.Point(2,3)) --> UInt32(0)
  #   @fact World.getEnergy(d.man.world, Helper.Point(0,3)) --> UInt32(0)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,0)) --> UInt32(0)
  #   @fact Code.eval(org.code)(d.cfg, org) --> true
  #
  #   Manager.destroy(d.man)
  # end
  # #
  # # Eating
  # #
  # facts("Checking if left organism can eat right one") do
  #   local d = create([Helper.Point(1,1), Helper.Point(2,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
  #   local left = d.orgs[1]
  #   local right = d.orgs[2]
  #
  #   code(d, :eatRight, left)
  #   for i = 1:5 Helper.getArg(left.code, [2,10 + i,1]).args[2] = 10 end # sets all Int8 vars to 10
  #   updateCode(left)
  #
  #   @fact left.energy === right.energy === 100 --> true
  #   consume(d.task)
  #   consume(d.task)
  #   @fact left.energy --> 110
  #   @fact right.energy --> 90
  #
  #   Manager.destroy(d.man)
  # end
  # facts("Checking if left organism can donate right one") do
  #   local d = create([Helper.Point(1,1), Helper.Point(2,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
  #   local left = d.orgs[1]
  #   local right = d.orgs[2]
  #
  #   code(d, :eatRight, left)
  #   for i = 1:5 Helper.getArg(left.code, [2,10 + i,1]).args[2] = -10 end # sets all Int8 vars to 10
  #   updateCode(left)
  #
  #   @fact left.energy === right.energy === 100 --> true
  #   consume(d.task)
  #   consume(d.task)
  #   @fact left.energy --> 90
  #   @fact right.energy --> 110
  #
  #   Manager.destroy(d.man)
  # end
  # facts("Checking if left organism can eat zero energy from right one") do
  #   local d = create([Helper.Point(1,1), Helper.Point(2,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
  #   local left = d.orgs[1]
  #   local right = d.orgs[2]
  #
  #   code(d, :eatRight, left)
  #   for i = 1:5 Helper.getArg(left.code, [2,10 + i,1]).args[2] = 0 end # sets all Int8 vars to 10
  #   updateCode(left)
  #
  #   @fact left.energy === right.energy === 100 --> true
  #   consume(d.task)
  #   consume(d.task)
  #   @fact left.energy --> 100
  #   @fact right.energy --> 100
  #
  #   Manager.destroy(d.man)
  # end
  # facts("Checking if left organism eats right and right eats left") do
  #   local d = create([Helper.Point(1,1), Helper.Point(2,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
  #   local left = d.orgs[1]
  #   local right = d.orgs[2]
  #
  #   code(d, :eatRight, left)
  #   code(d, :eatLeft, right)
  #   for i = 1:5
  #     Helper.getArg(left.code, [2,10 + i,1]).args[2] = 10  # sets all Int8 vars to 10
  #     Helper.getArg(right.code, [2,10 + i,1]).args[2] = 10 # sets all Int8 vars to 10
  #   end
  #   updateCode(left)
  #   updateCode(right)
  #
  #   @fact left.energy === right.energy === 100 --> true
  #   consume(d.task)
  #   consume(d.task)
  #   consume(d.task)
  #   @fact left.energy --> 100
  #   @fact right.energy --> 100
  #
  #   Manager.destroy(d.man)
  # end
  #
  # facts("Checking if up organism can eat down one") do
  #   local d = create([Helper.Point(1,1), Helper.Point(1,2)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
  #   local up = d.orgs[1]
  #   local down = d.orgs[2]
  #
  #   code(d, :eatDown, up)
  #   for i = 1:5 Helper.getArg(up.code, [2,10 + i,1]).args[2] = 10 end # sets all Int8 vars to 10
  #   updateCode(up)
  #
  #   @fact up.energy === down.energy === 100 --> true
  #   consume(d.task)
  #   consume(d.task)
  #   @fact up.energy --> 110
  #   @fact down.energy --> 90
  #
  #   Manager.destroy(d.man)
  # end
  # facts("Checking if up organism can donate down one") do
  #   local d = create([Helper.Point(1,1), Helper.Point(1,2)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
  #   local up = d.orgs[1]
  #   local down = d.orgs[2]
  #
  #   code(d, :eatDown, up)
  #   for i = 1:5 Helper.getArg(up.code, [2,10 + i,1]).args[2] = -10 end # sets all Int8 vars to 10
  #   updateCode(up)
  #
  #   @fact up.energy === down.energy === 100 --> true
  #   consume(d.task)
  #   consume(d.task)
  #   @fact up.energy --> 90
  #   @fact down.energy --> 110
  #
  #   Manager.destroy(d.man)
  # end
  # facts("Checking if up organism can eat zero energy from down one") do
  #   local d = create([Helper.Point(1,1), Helper.Point(1,2)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
  #   local up = d.orgs[1]
  #   local down = d.orgs[2]
  #
  #   code(d, :eatDown, up)
  #   for i = 1:5 Helper.getArg(up.code, [2,10 + i,1]).args[2] = 0 end # sets all Int8 vars to 10
  #   updateCode(up)
  #
  #   @fact up.energy === up.energy === 100 --> true
  #   consume(d.task)
  #   consume(d.task)
  #   @fact up.energy --> 100
  #   @fact down.energy --> 100
  #
  #   Manager.destroy(d.man)
  # end
  # facts("Checking if up organism eats down and down eats up") do
  #   local d = create([Helper.Point(1,1), Helper.Point(1,2)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
  #   local up = d.orgs[1]
  #   local down = d.orgs[2]
  #
  #   code(d, :eatDown, up)
  #   code(d, :eatUp, down)
  #   for i = 1:5
  #     Helper.getArg(up.code, [2,10 + i,1]).args[2] = 10   # sets all Int8 vars to 10
  #     Helper.getArg(down.code, [2,10 + i,1]).args[2] = 10 # sets all Int8 vars to 10
  #   end
  #   updateCode(up)
  #   updateCode(down)
  #
  #   @fact up.energy === down.energy === 100 --> true
  #   consume(d.task)
  #   consume(d.task)
  #   consume(d.task)
  #   @fact up.energy --> 100
  #   @fact down.energy --> 100
  #
  #   Manager.destroy(d.man)
  # end
  #
  # facts("Checking if organism can eat empty space") do
  #   local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
  #   local up = d.orgs[1]
  #
  #   code(d, :eatDown, up)
  #   for i = 1:5 Helper.getArg(up.code, [2,10 + i,1]).args[2] = 10 end # sets all Int8 vars to 10
  #   updateCode(up)
  #
  #   @fact up.energy === 100 --> true
  #   consume(d.task)
  #   consume(d.task)
  #   @fact up.energy --> 100
  #
  #   Manager.destroy(d.man)
  # end
  # facts("Checking if organism can eat out of borders") do
  #   local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
  #   local up = d.orgs[1]
  #
  #   code(d, :eatUp, up)
  #   for i = 1:5 Helper.getArg(up.code, [2,10 + i,1]).args[2] = 10 end # sets all Int8 vars to 10
  #   updateCode(up)
  #
  #   @fact up.energy === 100 --> true
  #   consume(d.task)
  #   consume(d.task)
  #   @fact up.energy --> 100
  #
  #   Manager.destroy(d.man)
  # end
  # facts("Checking if organism can eat energy") do
  #   local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
  #   local up = d.orgs[1]
  #
  #   code(d, :eatRight, up)
  #   for i = 1:5 Helper.getArg(up.code, [2,10 + i,1]).args[2] = 10 end # sets all Int8 vars to 10
  #   updateCode(up)
  #   World.setEnergy(d.man.world, Helper.Point(2,1), UInt32(30))
  #
  #   @fact up.energy === 100 --> true
  #   @fact World.getEnergy(d.man.world, Helper.Point(2,1)) --> 30
  #   consume(d.task)
  #   consume(d.task)
  #   @fact up.energy --> 110
  #   @fact World.getEnergy(d.man.world, Helper.Point(2,1)) --> 20
  #   consume(d.task)
  #   consume(d.task)
  #   @fact up.energy --> 130
  #   @fact World.getEnergy(d.man.world, Helper.Point(2,1)) --> 0
	#   consume(d.task)
  #   @fact up.energy --> 130
  #   @fact World.getEnergy(d.man.world, Helper.Point(2,1)) --> 0
  #
  #   Manager.destroy(d.man)
  # end
  # #
  # # Moving
  # #
  # facts("Checking if organism can move left") do
  #   local d = create([Helper.Point(3,3)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
  #   local org = d.orgs[1]
  #
  #   code(d, :stepLeft, org)
  #   updateCode(org)
  #   consume(d.task)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt32(100)
  #   @fact World.getEnergy(d.man.world, Helper.Point(2,3)) --> UInt32(0)
  #   consume(d.task)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt32(0)
  #   @fact World.getEnergy(d.man.world, Helper.Point(2,3)) --> UInt32(100)
  #
  #   code(d, :stepLeft, org)
  #   updateCode(org)
  #   @fact World.getEnergy(d.man.world, Helper.Point(2,3)) --> UInt32(100)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt32(0)
  #   consume(d.task)
  #   consume(d.task)
  #   @fact World.getEnergy(d.man.world, Helper.Point(1,3)) --> UInt32(100)
  #   @fact World.getEnergy(d.man.world, Helper.Point(2,3)) --> UInt32(0)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt32(0)
  #
  #   Manager.destroy(d.man)
  # end
  # facts("Checking if organism can move right") do
  #   local d = create([Helper.Point(3,3)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
  #   local org = d.orgs[1]
  #
  #   code(d, :stepRight, org)
  #   updateCode(org)
  #   consume(d.task)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt32(100)
  #   @fact World.getEnergy(d.man.world, Helper.Point(4,3)) --> UInt32(0)
  #   consume(d.task)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt32(0)
  #   @fact World.getEnergy(d.man.world, Helper.Point(4,3)) --> UInt32(100)
  #
  #   code(d, :stepRight, org)
  #   updateCode(org)
  #   @fact World.getEnergy(d.man.world, Helper.Point(4,3)) --> UInt32(100)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt32(0)
  #   consume(d.task)
  #   consume(d.task)
  #   @fact World.getEnergy(d.man.world, Helper.Point(5,3)) --> UInt32(100)
  #   @fact World.getEnergy(d.man.world, Helper.Point(4,3)) --> UInt32(0)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt32(0)
  #
  #   Manager.destroy(d.man)
  # end
  # facts("Checking if organism can move up") do
  #   local d = create([Helper.Point(3,3)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
  #   local org = d.orgs[1]
  #
  #   code(d, :stepUp, org)
  #   updateCode(org)
  #   consume(d.task)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt32(100)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,2)) --> UInt32(0)
  #   consume(d.task)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt32(0)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,2)) --> UInt32(100)
  #
  #   code(d, :stepUp, org)
  #   updateCode(org)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,2)) --> UInt32(100)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt32(0)
  #   consume(d.task)
  #   consume(d.task)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,1)) --> UInt32(100)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,2)) --> UInt32(0)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt32(0)
  #
  #   Manager.destroy(d.man)
  # end
  # facts("Checking if organism can move down") do
  #   local d = create([Helper.Point(3,3)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
  #   local org = d.orgs[1]
  #
  #   code(d, :stepDown, org)
  #   updateCode(org)
  #   consume(d.task)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt32(100)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,4)) --> UInt32(0)
  #   consume(d.task)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt32(0)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,4)) --> UInt32(100)
  #
  #   code(d, :stepDown, org)
  #   updateCode(org)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,4)) --> UInt32(100)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt32(0)
  #   consume(d.task)
  #   consume(d.task)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,5)) --> UInt32(100)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,4)) --> UInt32(0)
  #   @fact World.getEnergy(d.man.world, Helper.Point(3,3)) --> UInt32(0)
  #
  #   Manager.destroy(d.man)
  # end
  # facts("Checking if organism can move left out of the border in cyclic mode") do
  #   local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100, :worldCyclical=>true))
  #   local org = d.orgs[1]
  #
  #   code(d, :stepLeft, org)
  #   updateCode(org)
  #   consume(d.task)
  #   @fact World.getEnergy(d.man.world, Helper.Point(1,1)) --> UInt32(100)
  #   @fact World.getEnergy(d.man.world, Helper.Point(10,1)) --> UInt32(0)
  #   consume(d.task)
  #   @fact World.getEnergy(d.man.world, Helper.Point(1,1)) --> UInt32(0)
  #   @fact World.getEnergy(d.man.world, Helper.Point(10,1)) --> UInt32(100)
  #
  #   Manager.destroy(d.man)
  # end
  facts("Checking if organism can move left out of the border in cyclic mode and can't, because of energy block") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100, :worldCyclical=>true))
    local org = d.orgs[1]

    code(d, :stepLeft, org)
    updateCode(org)
    #
    # Sets energy on the right side of the world
    #
    World.setEnergy(d.man.world, Helper.Point(10,1), UInt32(123))
    consume(d.task)
    @fact World.getEnergy(d.man.world, Helper.Point(1,1)) --> UInt32(100)
    @fact World.getEnergy(d.man.world, Helper.Point(10,1)) --> UInt32(123)
    consume(d.task)
    @fact World.getEnergy(d.man.world, Helper.Point(1,1)) --> UInt32(100)
    @fact World.getEnergy(d.man.world, Helper.Point(10,1)) --> UInt32(123)
    #
    # Removes energy on the right side of the world
    #
    World.setEnergy(d.man.world, Helper.Point(10,1), UInt32(0))
    consume(d.task)
    consume(d.task)
    @fact World.getEnergy(d.man.world, Helper.Point(1,1)) --> UInt32(0)
    @fact World.getEnergy(d.man.world, Helper.Point(10,1)) --> UInt32(100)

    Manager.destroy(d.man)
  end
end
