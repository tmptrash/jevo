module TestManager
  using FactCheck
  import Manager
  import Config
  import Creature
  import Helper
  import ManagerTypes
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
    local cfg::Config.ConfigData          = Config.create()
    cfg.ORGANISM_MUTATIONS_ON_CLONE       = 0
    cfg.ORGANISM_MUTATION_PERIOD          = 0
    cfg.ORGANISM_START_AMOUNT             = 0
    cfg.ORGANISM_START_ENERGY             = 100
    cfg.ORGANISM_ENERGY_DECREASE_PERIOD   = 2
    cfg.ORGANISM_ENERGY_DECREASE_VALUE    = 1
    cfg.ORGANISM_REMOVE_AFTER_TIMES       = 0
    cfg.ORGANISM_CLONE_AFTER_TIMES        = 0
    cfg.WORLD_WIDTH                       = 10
    cfg.WORLD_HEIGHT                      = 10
    cfg.WORLD_MIN_ORGANISMS               = 0
    cfg.WORLD_START_ENERGY_BLOCKS         = 0
    cfg.WORLD_MIN_ENERGY_PERCENT          = 0.1
    cfg.WORLD_MIN_ENERGY_CHECK_PERIOD     = 10000
    cfg.WORLD_RESET_AFTER_BACKUPS         = 10
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
    local d = _create([Helper.Point(1,1)], Dict{Symbol, Any}(:ORGANISM_MUTATION_PERIOD=>2))
    local mutations = d.man.status.mps

    consume(d.task)
    @fact d.man.status.mps - mutations --> 0
    consume(d.task)
    @fact d.man.status.mps - mutations --> 1

    Manager.destroy(d.man)
  end
  facts("Checking if mutations mechanism works with specified amount") do
    local d = _create([Helper.Point(1,1)], Dict{Symbol, Any}(:ORGANISM_MUTATION_PERIOD=>2, :ORGANISM_MUTATION_AMOUNT=>3))
    local mutations = d.man.status.mps

    consume(d.task)
    @fact d.man.status.mps - mutations --> 0
    consume(d.task)
    @fact d.man.status.mps - mutations --> 3

    Manager.destroy(d.man)
  end
  facts("Checking if correct amount of organisms are created on start") do
    local d = _create(Helper.Point[], Dict{Symbol, Any}(:ORGANISM_START_AMOUNT=>5))

    @fact length(d.man.positions) === length(d.man.organisms) === 0 --> true
    consume(d.task)
    @fact length(d.man.positions) === length(d.man.organisms) === 5 --> true

    Manager.destroy(d.man)
  end
  facts("Checking if organisms, which are created on start contain correct amopunt of energy") do
    local d = _create(Helper.Point[], Dict{Symbol, Any}(:ORGANISM_START_AMOUNT=>3,:ORGANISM_START_ENERGY=>7))

    @fact length(d.man.positions) === length(d.man.organisms) === 0 --> true
    consume(d.task)
    @fact length(d.man.positions) === length(d.man.organisms) === 3 --> true
    for org in d.man.organisms @fact org[2].energy --> 7 end

    Manager.destroy(d.man)
  end
  facts("Checking organisms clonning ability") do
    local d = _create([Helper.Point(5,5)], Dict{Symbol, Any}(:ORGANISM_CLONE_AFTER_TIMES=>3))
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
    local d         = _create([Helper.Point(5,5)], Dict{Symbol, Any}(:ORGANISM_CLONE_AFTER_TIMES=>2, :ORGANISM_MUTATIONS_ON_CLONE=>3))
    local orgAmount = length(d.man.organisms)
    local mutations = d.man.status.mps

    @fact length(d.man.organisms)             --> 1
    consume(d.task)
    @fact length(d.man.organisms) - orgAmount --> 0
    @fact d.man.status.mps - mutations        --> 0
    consume(d.task)
    @fact length(d.man.organisms) - orgAmount --> 1
    @fact length(d.man.positions) - orgAmount --> 1
    @fact d.man.status.mps - mutations        --> 3
    consume(d.task)
    @fact length(d.man.organisms) - orgAmount --> 1
    @fact length(d.man.positions) - orgAmount --> 1
    @fact d.man.status.mps - mutations        --> 3

    Manager.destroy(d.man)
  end
  facts("Checking period of energy grabbing from organisms") do
    local d = _create([Helper.Point(1,1), Helper.Point(2,2)])

    @fact d.orgs[1].energy --> 100
    @fact d.orgs[2].energy --> 100
    # ORGANISM_ENERGY_DECREASE_PERIOD === 2, so we need run two iterations
    consume(d.task)
    consume(d.task)
    @fact d.orgs[1].energy --> 99
    @fact d.orgs[2].energy --> 99

    Manager.destroy(d.man)
  end
  facts("Checking amount energy grabbing from organisms per period") do
    local d = _create([Helper.Point(1,1), Helper.Point(2,2), Helper.Point(3,3)], Dict{Symbol, Any}(:ORGANISM_ENERGY_DECREASE_VALUE=>3))

    @fact d.orgs[1].energy --> 100
    @fact d.orgs[2].energy --> 100
    @fact d.orgs[3].energy --> 100
    # ORGANISM_ENERGY_DECREASE_PERIOD === 2, ORGANISM_ENERGY_DECREASE_VALUE === 3,
    # so we need run 4 iterations to decrease energy on 6 points
    consume(d.task)
    consume(d.task)
    consume(d.task)
    consume(d.task)
    @fact d.orgs[1].energy --> 94
    @fact d.orgs[2].energy --> 94
    @fact d.orgs[3].energy --> 94

    Manager.destroy(d.man)
  end
end
