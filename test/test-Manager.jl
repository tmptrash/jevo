module TestManager
  using FactCheck
  import Manager
  import Config
  import Creature
  import Helper
  import ManagerTypes
  import Mutator
  import Code
  #
  # Just a helper type for Manager tests
  #
  type TestManagerData
    cfg::Config.ConfigData
    man::ManagerTypes.ManagerData
    task::Task
    orgs::Vector{Creature.Organism}
  end
  #
  # Creates data instance of TestManagerData: creates Manager
  # instance, creates organisms with specified positions, creates
  # Manager in separate task and creates default configuration.
  #
  function _create(positions::Vector{Helper.Point}, configs::Dict{Symbol, Any} = Dict{Symbol, Any}())
    local cfg::Config.ConfigData      = Config.create()
    cfg.orgRainMutationPeriod         = 0
    cfg.orgStartAmount                = 0
    cfg.orgStartEnergy                = 100
    cfg.orgEnergySpendPeriod          = 2
    cfg.orgEnergySpendPercent         = 1.0
    cfg.orgRemoveWeakPeriod           = 0
    cfg.orgClonePeriod                = 0
    cfg.worldWidth                    = 10
    cfg.worldHeight                   = 10
    cfg.worldMinOrgs                  = 0
    cfg.worldStartEnergyDots          = 0
    cfg.worldEnergyCheckPercent       = 0.1
    cfg.worldEnergyCheckPeriod        = 10000
    cfg.orgEvals                      = 100000
    #
    # Config update
    #
    for i in configs setfield!(cfg, i[1], i[2]) end

    local man::ManagerTypes.ManagerData   = Manager.create(cfg)
    local task::Task                      = Task(() -> Manager.run(man))
    local orgs::Vector{Creature.Organism} = []

    for i = 1:length(positions)
      Manager.createOrganism(man, positions[i])
      push!(orgs, man.positions[Manager._getPosId(man, positions[i])])
    end
    man.task = task

    TestManagerData(cfg, man, task, orgs)
  end

  facts("Checking if mutations mechanism works") do
    local d = _create([Helper.Point(1,1)], Dict{Symbol, Any}(:orgRainMutationPeriod=>2))
    local mutations = d.man.status.mps

    consume(d.task)
    @fact d.man.status.mps - mutations --> 0
    consume(d.task)
    @fact d.man.status.mps - mutations --> 1

    Manager.destroy(d.man)
  end
  facts("Checking if mutations mechanism works with specified amount") do
    local d = _create([Helper.Point(1,1)], Dict{Symbol, Any}(:orgRainMutationPeriod=>2, :orgRainMutationPercent=>100.0))
    local mutations = d.man.status.mps

    Mutator._onAdd(d.cfg, d.orgs[1], Helper.CodePos(1,1,1), Code.CodePart(Code.var, false))
    Mutator._onAdd(d.cfg, d.orgs[1], Helper.CodePos(1,1,2), Code.CodePart(Code.var, false))
    consume(d.task)
    @fact d.man.status.mps - mutations --> 0
    consume(d.task)
    @fact d.man.status.mps - mutations --> 2

    Manager.destroy(d.man)
  end
  facts("Checking if correct amount of organisms are created on start") do
    local d = _create(Helper.Point[], Dict{Symbol, Any}(:orgStartAmount=>5))

    @fact length(d.man.positions) === length(d.man.organisms) === 0 --> true
    consume(d.task)
    @fact length(d.man.positions) === length(d.man.organisms) === 5 --> true

    Manager.destroy(d.man)
  end
  facts("Checking if organisms, which are created on start contain correct amount of energy") do
    local d = _create(Helper.Point[], Dict{Symbol, Any}(:orgStartAmount=>3,:orgStartEnergy=>7))

    @fact length(d.man.positions) === length(d.man.organisms) === 0 --> true
    consume(d.task)
    @fact length(d.man.positions) === length(d.man.organisms) === 3 --> true
    for org in d.man.organisms @fact org[2].energy --> 7 end

    Manager.destroy(d.man)
  end
  facts("Checking period of energy grabbing from organisms") do
    local d = _create([Helper.Point(1,1), Helper.Point(2,2)])

    @fact d.orgs[1].energy --> 100
    @fact d.orgs[2].energy --> 100
    # orgEnergySpendPeriod === 2, so we need run two iterations
    consume(d.task)
    consume(d.task)
    @fact d.orgs[1].energy --> 99
    @fact d.orgs[2].energy --> 99

    Manager.destroy(d.man)
  end
  facts("Checking amount energy grabbing from organisms per period") do
    local d = _create([Helper.Point(1,1), Helper.Point(2,2), Helper.Point(3,3)], Dict{Symbol, Any}(:orgEnergySpendPercent=>1.0))

    @fact d.orgs[1].energy --> 100
    @fact d.orgs[2].energy --> 100
    @fact d.orgs[3].energy --> 100
    # orgEnergySpendPeriod === 2, orgEnergySpendPercent === 1,
    # so we need run 4 iterations to decrease energy on 6 points
    consume(d.task)
    consume(d.task)
    consume(d.task)
    consume(d.task)
    @fact d.orgs[1].energy --> 98
    @fact d.orgs[2].energy --> 98
    @fact d.orgs[3].energy --> 98

    Manager.destroy(d.man)
  end
  facts("Checking minimum energy organisms removing") do
    local d = _create([Helper.Point(1,1), Helper.Point(2,2), Helper.Point(3,3)], Dict{Symbol, Any}(:orgRemoveWeakPeriod=>3, :orgRemoveWeakAmount=>2))

    @fact length(d.man.organisms) === length(d.man.positions) === 3 --> true
    consume(d.task)
    @fact length(d.man.organisms) === length(d.man.positions) === 3 --> true
    consume(d.task)
    @fact length(d.man.organisms) === length(d.man.positions) === 3 --> true
    consume(d.task)
    @fact length(d.man.organisms) === length(d.man.positions) === 1 --> true

    Manager.destroy(d.man)
  end
  facts("Checking organisms clonning ability") do
    local d = _create([Helper.Point(5,5)], Dict{Symbol, Any}(:orgClonePeriod=>3))
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
  facts("Checking organisms mutations on clone") do
    local d         = _create([Helper.Point(5,5)], Dict{Symbol, Any}(:orgClonePeriod=>2, :orgCloneMutation=>1.0))
    local orgAmount = length(d.man.organisms)
    local mutations = d.man.status.mps

    Mutator._onAdd(d.cfg, d.orgs[1], Helper.CodePos(1,1,1), Code.CodePart(Code.var, false))
    Mutator._onAdd(d.cfg, d.orgs[1], Helper.CodePos(1,1,2), Code.CodePart(Code.var, false))

    @fact length(d.man.organisms)             --> 1
    consume(d.task)
    @fact length(d.man.organisms) - orgAmount --> 0
    @fact d.man.status.mps - mutations        --> 0
    consume(d.task)
    @fact length(d.man.organisms) - orgAmount --> 1
    @fact d.man.status.mps - mutations        --> 2
    consume(d.task)
    @fact length(d.man.organisms) - orgAmount --> 1
    @fact d.man.status.mps - mutations        --> 2
    consume(d.task)
    @fact length(d.man.organisms) - orgAmount --> 2
    @fact d.man.status.mps - mutations        --> 4

    Manager.destroy(d.man)
  end
end
