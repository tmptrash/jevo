module TestManager
  using FactCheck
  import Helper.getArg
  import Helper
  import Manager
  import Config
  import Creature
  import ManagerTypes
  import Mutator
  import Code
  import World
  include("Helper.jl")

  facts("Checking if mutations mechanism works") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:orgRainMutationPeriod=>2, :orgRainMutationPercent=>0.1))
    local mutations = d.man.plugins["Status"].mps

    consume(d.task)
    @fact d.man.plugins["Status"].mps - mutations --> 0
    consume(d.task)
    @fact d.man.plugins["Status"].mps - mutations --> 1

    Manager.destroy(d.man)
  end
  facts("Checking if mutations mechanism works with specified amount") do
    local d = create([Helper.Point(1,1)], Dict(:orgRainMutationPeriod=>2, :orgRainMutationPercent=>1.0))
    local mutations = d.man.plugins["Status"].mps

    code(d, :plus, d.orgs[1])
    code(d, :plus, d.orgs[1])

    consume(d.task)
    @fact d.man.plugins["Status"].mps - mutations --> 0
    consume(d.task)
    @fact d.man.plugins["Status"].mps - mutations --> 2

    Manager.destroy(d.man)
  end
  facts("Checking if correct amount of organisms are created on start") do
    local d = create(Helper.Point[], Dict{Symbol, Any}(:orgStartAmount=>5))

    @fact length(d.man.positions) === length(d.man.organisms) === 0 --> true
    consume(d.task)
    @fact length(d.man.positions) === length(d.man.organisms) === 5 --> true

    Manager.destroy(d.man)
  end
  facts("Checking if left organism can eat right one") do
    local d = create([Helper.Point(1,1), Helper.Point(2,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local left = d.orgs[1]
    local right = d.orgs[2]

    code(d, :eatRight, left)
    for i = 1:5 getArg(left.code, [2,10 + i,1]).args[2] = 10 end # sets all Int8 vars to 10
    updateCode(left)

    @fact left.energy === right.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    @fact left.energy --> 110
    @fact right.energy --> 90

    Manager.destroy(d.man)
  end
  facts("Checking if left organism can donate right one") do
    local d = create([Helper.Point(1,1), Helper.Point(2,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local left = d.orgs[1]
    local right = d.orgs[2]

    code(d, :eatRight, left)
    for i = 1:5 getArg(left.code, [2,10 + i,1]).args[2] = -10 end # sets all Int8 vars to 10
    updateCode(left)

    @fact left.energy === right.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    @fact left.energy --> 90
    @fact right.energy --> 110

    Manager.destroy(d.man)
  end
  facts("Checking if left organism can eat zero energy from right one") do
    local d = create([Helper.Point(1,1), Helper.Point(2,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local left = d.orgs[1]
    local right = d.orgs[2]

    code(d, :eatRight, left)
    for i = 1:5 getArg(left.code, [2,10 + i,1]).args[2] = 0 end # sets all Int8 vars to 10
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
    for i = 1:5
      getArg(left.code, [2,10 + i,1]).args[2] = 10  # sets all Int8 vars to 10
      getArg(right.code, [2,10 + i,1]).args[2] = 10 # sets all Int8 vars to 10
    end
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
    for i = 1:5 getArg(up.code, [2,10 + i,1]).args[2] = 10 end # sets all Int8 vars to 10
    updateCode(up)

    @fact up.energy === down.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    @fact up.energy --> 110
    @fact down.energy --> 90

    Manager.destroy(d.man)
  end
  facts("Checking if up organism can donate down one") do
    local d = create([Helper.Point(1,1), Helper.Point(1,2)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local up = d.orgs[1]
    local down = d.orgs[2]

    code(d, :eatDown, up)
    for i = 1:5 getArg(up.code, [2,10 + i,1]).args[2] = -10 end # sets all Int8 vars to 10
    updateCode(up)

    @fact up.energy === down.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    @fact up.energy --> 90
    @fact down.energy --> 110

    Manager.destroy(d.man)
  end
  facts("Checking if up organism can eat zero energy from down one") do
    local d = create([Helper.Point(1,1), Helper.Point(1,2)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local up = d.orgs[1]
    local down = d.orgs[2]

    code(d, :eatDown, up)
    for i = 1:5 getArg(up.code, [2,10 + i,1]).args[2] = 0 end # sets all Int8 vars to 10
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
    for i = 1:5
      getArg(up.code, [2,10 + i,1]).args[2] = 10   # sets all Int8 vars to 10
      getArg(down.code, [2,10 + i,1]).args[2] = 10 # sets all Int8 vars to 10
    end
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
    for i = 1:5 getArg(up.code, [2,10 + i,1]).args[2] = 10 end # sets all Int8 vars to 10
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
    for i = 1:5 getArg(up.code, [2,10 + i,1]).args[2] = 10 end # sets all Int8 vars to 10
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
    for i = 1:5 getArg(up.code, [2,10 + i,1]).args[2] = 10 end # sets all Int8 vars to 10
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
  # TODO: check all configs
  # orgStartAmount, orgStartEnergy
  facts("Checking if organisms, which are created on start contain correct amount of energy") do
    local d = create(Helper.Point[], Dict{Symbol, Any}(:orgStartAmount=>3,:orgStartEnergy=>7))

    @fact length(d.man.positions) === length(d.man.organisms) === 0 --> true
    consume(d.task)
    @fact length(d.man.positions) === length(d.man.organisms) === 3 --> true
    for org in d.man.organisms @fact org[2].energy --> 7 end

    Manager.destroy(d.man)
  end
  # orgEnergySpendPeriod
  facts("Checking amount of energy grabbing from organisms per period") do
    local d = create([Helper.Point(1,1), Helper.Point(2,2), Helper.Point(3,3)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>2))

    code(d, :plus, d.orgs[1])
    code(d, :minus, d.orgs[2])
    code(d, :minus, d.orgs[2])
    code(d, :not, d.orgs[3])
    code(d, :not, d.orgs[3])
    code(d, :not, d.orgs[3])
    @fact d.orgs[1].energy --> 100
    @fact d.orgs[2].energy --> 100
    @fact d.orgs[3].energy --> 100
    # orgEnergySpendPeriod === 2
    # so we need run 4 iterations to decrease energy on 6 points
    consume(d.task)
    consume(d.task)
    consume(d.task)
    consume(d.task)
    @fact d.orgs[1].energy --> 98
    @fact d.orgs[2].energy --> 96
    @fact d.orgs[3].energy --> 94

    Manager.destroy(d.man)
  end
  # orgClonePeriod
  facts("Checking organisms clonning ability") do
    local d = create([Helper.Point(5,5)], Dict{Symbol, Any}(:orgClonePeriod=>3))
    local orgAmount = length(d.man.organisms)

    consume(d.task)
    @fact length(d.man.organisms) - orgAmount --> 0
    consume(d.task)
    @fact length(d.man.organisms) - orgAmount --> 0
    consume(d.task)
    @fact length(d.man.organisms) - orgAmount --> 1
    @fact length(d.man.positions) - orgAmount --> 1

    Manager.destroy(d.man)
  end
  # orgStartEnergy, orgEnergySpendPeriod
  facts("Checking if organisms dying if no energy works") do
    local d = create([Helper.Point(5,5)], Dict{Symbol, Any}(:orgStartEnergy=>2, :orgEnergySpendPeriod=>2))
    local org = d.orgs[1]

    code(d, :plus, org)
    consume(d.task)
    @fact org.energy --> 2
    consume(d.task)
    @fact org.energy --> 1
    consume(d.task)
    @fact org.energy --> 1
    consume(d.task)
    @fact org.energy --> 0
    @fact length(d.man.organisms) --> 0

    Manager.destroy(d.man)
  end
  # orgStartEnergy, orgAlivePeriod, worldMinOrgs
  facts("Checking if organisms dying, because of age works") do
    local d = create([Helper.Point(5,5)], Dict{Symbol, Any}(:orgStartEnergy=>2, :orgAlivePeriod=>3, :worldMinOrgs=>0))
    local org = d.orgs[1]

    code(d, :plus, org)
    consume(d.task)
    @fact length(d.man.organisms) --> 1
    consume(d.task)
    @fact length(d.man.organisms) --> 1
    consume(d.task)
    @fact length(d.man.organisms) --> 0

    Manager.destroy(d.man)
  end
  # orgClonePeriod, orgCloneMutation
  facts("Checking organisms mutations on clone") do
    local d         = create([Helper.Point(5,5)], Dict{Symbol, Any}(:orgClonePeriod=>2, :orgCloneMutation=>1.0))
    local org       = d.orgs[1]
    local mutations = d.man.plugins["Status"].mps

    code(d, :plus, org)
    code(d, :plus, org)

    @fact org.mutationsFromStart        --> 1
    @fact length(d.man.organisms)       --> 1

    consume(d.task)
    @fact length(d.man.organisms)       --> 1
    @fact org.mutationsFromStart        --> 1

    consume(d.task)
    @fact length(d.man.organisms)       --> 2
    @fact org.mutationsFromStart        --> 1
    @fact d.man.organisms[org.id+1].mutationsFromStart  --> 3

    Manager.destroy(d.man)
  end
end
