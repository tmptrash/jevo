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
