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
  #
  # Adds code line to specified organism
  # @param data Data type, returned by _create() function
  # @param codePart Symbol, which represents specific dode part like: plus, eatUp or myX...
  # @param org Organism we are adding to
  # @param pos Poition in organism code (optional)
  #
  function _code(data::TestManagerData, codePart::Symbol, org::Creature.Organism, pos::Helper.CodePos = Helper.CodePos(0,0,0))
    local cp::Code.CodePart
    #
    # This is how we find real CodePart() type
    #
    for cp in Code.CODE_PARTS if string(cp.fn) == string("Code.", codePart) break end end
    #
    # Position is not set, we have to add to the end of code to the main function
    #
    if pos.fnIdx < 1 pos = Helper.CodePos(1,1,length(org.code.args[2].args)) end
    Mutator._onAdd(data.cfg, org, pos, cp)
    _updateCode(org)
  end
  #
  # compiles code of organism according to org.code expression
  # @param org Organism we are working with
  #
  function _updateCode(org::Creature.Organism)
    org.codeFn = Creature.eval(org.code)
  end
  facts("Checking if mutations mechanism works") do
    local d = _create([Helper.Point(1,1)], Dict{Symbol, Any}(:orgRainMutationPeriod=>2, :orgRainMutationPercent=>0.1))
    local mutations = d.man.plugins["Status"].mps

    consume(d.task)
    @fact d.man.plugins["Status"].mps - mutations --> 0
    consume(d.task)
    @fact d.man.plugins["Status"].mps - mutations --> 1

    Manager.destroy(d.man)
  end
  facts("Checking if mutations mechanism works with specified amount") do
    local d = _create([Helper.Point(1,1)], Dict(:orgRainMutationPeriod=>2, :orgRainMutationPercent=>1.0))
    local mutations = d.man.plugins["Status"].mps

    _code(d, :plus, d.orgs[1])
    _code(d, :plus, d.orgs[1])

    consume(d.task)
    @fact d.man.plugins["Status"].mps - mutations --> 0
    consume(d.task)
    @fact d.man.plugins["Status"].mps - mutations --> 2

    Manager.destroy(d.man)
  end
  facts("Checking if correct amount of organisms are created on start") do
    local d = _create(Helper.Point[], Dict{Symbol, Any}(:orgStartAmount=>5))

    @fact length(d.man.positions) === length(d.man.organisms) === 0 --> true
    consume(d.task)
    @fact length(d.man.positions) === length(d.man.organisms) === 5 --> true

    Manager.destroy(d.man)
  end
  facts("Checking if left organism can eat right one") do
    local d = _create([Helper.Point(1,1), Helper.Point(2,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local left = d.orgs[1]
    local right = d.orgs[2]

    _code(d, :eatRight, left)
    for i = 1:5 getArg(left.code, [2,10 + i,1]).args[2] = 10 end # sets all Int8 vars to 10
    _updateCode(left)

    @fact left.energy === right.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    @fact left.energy --> 110
    @fact right.energy --> 90

    Manager.destroy(d.man)
  end
  facts("Checking if left organism can donate right one") do
    local d = _create([Helper.Point(1,1), Helper.Point(2,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local left = d.orgs[1]
    local right = d.orgs[2]

    _code(d, :eatRight, left)
    for i = 1:5 getArg(left.code, [2,10 + i,1]).args[2] = -10 end # sets all Int8 vars to 10
    _updateCode(left)

    @fact left.energy === right.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    @fact left.energy --> 90
    @fact right.energy --> 110

    Manager.destroy(d.man)
  end
  facts("Checking if left organism can eat zero energy from right one") do
    local d = _create([Helper.Point(1,1), Helper.Point(2,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local left = d.orgs[1]
    local right = d.orgs[2]

    _code(d, :eatRight, left)
    for i = 1:5 getArg(left.code, [2,10 + i,1]).args[2] = 0 end # sets all Int8 vars to 10
    _updateCode(left)

    @fact left.energy === right.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    @fact left.energy --> 100
    @fact right.energy --> 100

    Manager.destroy(d.man)
  end
  facts("Checking if left organism eats right and right eats left") do
    local d = _create([Helper.Point(1,1), Helper.Point(2,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local left = d.orgs[1]
    local right = d.orgs[2]

    _code(d, :eatRight, left)
    _code(d, :eatLeft, right)
    for i = 1:5
      getArg(left.code, [2,10 + i,1]).args[2] = 10  # sets all Int8 vars to 10
      getArg(right.code, [2,10 + i,1]).args[2] = 10 # sets all Int8 vars to 10
    end
    _updateCode(left)
    _updateCode(right)

    @fact left.energy === right.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    consume(d.task)
    @fact left.energy --> 100
    @fact right.energy --> 100

    Manager.destroy(d.man)
  end

  facts("Checking if up organism can eat down one") do
    local d = _create([Helper.Point(1,1), Helper.Point(1,2)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local up = d.orgs[1]
    local down = d.orgs[2]

    _code(d, :eatDown, up)
    for i = 1:5 getArg(up.code, [2,10 + i,1]).args[2] = 10 end # sets all Int8 vars to 10
    _updateCode(up)

    @fact up.energy === down.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    @fact up.energy --> 110
    @fact down.energy --> 90

    Manager.destroy(d.man)
  end
  facts("Checking if up organism can donate down one") do
    local d = _create([Helper.Point(1,1), Helper.Point(1,2)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local up = d.orgs[1]
    local down = d.orgs[2]

    _code(d, :eatDown, up)
    for i = 1:5 getArg(up.code, [2,10 + i,1]).args[2] = -10 end # sets all Int8 vars to 10
    _updateCode(up)

    @fact up.energy === down.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    @fact up.energy --> 90
    @fact down.energy --> 110

    Manager.destroy(d.man)
  end
  facts("Checking if up organism can eat zero energy from down one") do
    local d = _create([Helper.Point(1,1), Helper.Point(1,2)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local up = d.orgs[1]
    local down = d.orgs[2]

    _code(d, :eatDown, up)
    for i = 1:5 getArg(up.code, [2,10 + i,1]).args[2] = 0 end # sets all Int8 vars to 10
    _updateCode(up)

    @fact up.energy === up.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    @fact up.energy --> 100
    @fact down.energy --> 100

    Manager.destroy(d.man)
  end
  facts("Checking if up organism eats down and down eats up") do
    local d = _create([Helper.Point(1,1), Helper.Point(1,2)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local up = d.orgs[1]
    local down = d.orgs[2]

    _code(d, :eatDown, up)
    _code(d, :eatUp, down)
    for i = 1:5
      getArg(up.code, [2,10 + i,1]).args[2] = 10   # sets all Int8 vars to 10
      getArg(down.code, [2,10 + i,1]).args[2] = 10 # sets all Int8 vars to 10
    end
    _updateCode(up)
    _updateCode(down)

    @fact up.energy === down.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    consume(d.task)
    @fact up.energy --> 100
    @fact down.energy --> 100

    Manager.destroy(d.man)
  end

  facts("Checking if organism can eat empty space") do
    local d = _create([Helper.Point(1,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local up = d.orgs[1]

    _code(d, :eatDown, up)
    for i = 1:5 getArg(up.code, [2,10 + i,1]).args[2] = 10 end # sets all Int8 vars to 10
    _updateCode(up)

    @fact up.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    @fact up.energy --> 100

    Manager.destroy(d.man)
  end
  facts("Checking if organism can eat out of borders") do
    local d = _create([Helper.Point(1,1)], Dict{Symbol, Any}(:orgEnergySpendPeriod=>100))
    local up = d.orgs[1]

    _code(d, :eatUp, up)
    for i = 1:5 getArg(up.code, [2,10 + i,1]).args[2] = 10 end # sets all Int8 vars to 10
    _updateCode(up)

    @fact up.energy === 100 --> true
    consume(d.task)
    consume(d.task)
    @fact up.energy --> 100

    Manager.destroy(d.man)
  end
  # facts("Checking if organisms, which are created on start contain correct amount of energy") do
  #   local d = _create(Helper.Point[], Dict{Symbol, Any}(:orgStartAmount=>3,:orgStartEnergy=>7))
  #
  #   @fact length(d.man.positions) === length(d.man.organisms) === 0 --> true
  #   consume(d.task)
  #   @fact length(d.man.positions) === length(d.man.organisms) === 3 --> true
  #   for org in d.man.organisms @fact org[2].energy --> 7 end
  #
  #   Manager.destroy(d.man)
  # end
  # facts("Checking period of energy grabbing from organisms") do
  #   local d = _create([Helper.Point(1,1), Helper.Point(2,2)])
  #
  #   @fact d.orgs[1].energy --> 100
  #   @fact d.orgs[2].energy --> 100
  #   # orgEnergySpendPeriod === 2, so we need run two iterations
  #   consume(d.task)
  #   consume(d.task)
  #   @fact d.orgs[1].energy --> 99
  #   @fact d.orgs[2].energy --> 99
  #
  #   Manager.destroy(d.man)
  # end
  # facts("Checking amount energy grabbing from organisms per period") do
  #   local d = _create([Helper.Point(1,1), Helper.Point(2,2), Helper.Point(3,3)], Dict{Symbol, Any}())
  #
  #   @fact d.orgs[1].energy --> 100
  #   @fact d.orgs[2].energy --> 100
  #   @fact d.orgs[3].energy --> 100
  #   # orgEnergySpendPeriod === 2
  #   # so we need run 4 iterations to decrease energy on 6 points
  #   consume(d.task)
  #   consume(d.task)
  #   consume(d.task)
  #   consume(d.task)
  #   @fact d.orgs[1].energy --> 98
  #   @fact d.orgs[2].energy --> 98
  #   @fact d.orgs[3].energy --> 98
  #
  #   Manager.destroy(d.man)
  # end
  # # facts("Checking organisms clonning ability") do
  # #   local d = _create([Helper.Point(5,5)], Dict{Symbol, Any}(:orgClonePeriod=>3))
  # #   local orgAmount = length(d.man.organisms)
  # #
  # #   consume(d.task)
  # #   @fact length(d.man.organisms) - orgAmount --> 0
  # #   consume(d.task)
  # #   @fact length(d.man.organisms) - orgAmount --> 0
  # #   consume(d.task)
  # #   @fact length(d.man.organisms) - orgAmount --> 1
  # #   @fact length(d.man.positions) - orgAmount --> 1
  # #
  # #   Manager.destroy(d.man)
  # # end
  # # facts("Checking organisms mutations on clone") do
  # #   local d         = _create([Helper.Point(5,5)], Dict{Symbol, Any}(:orgClonePeriod=>2, :orgCloneMutation=>1.0))
  # #   local orgAmount = length(d.man.organisms)
  # #   local mutations = d.man.plugins["Status"].mps
  # #
  # #   Mutator._onAdd(d.cfg, d.orgs[1], Helper.CodePos(1,1,1), Code.CodePart(Code.plus, false))
  # #   Mutator._onAdd(d.cfg, d.orgs[1], Helper.CodePos(1,1,2), Code.CodePart(Code.plus, false))
  # #
  # #   @fact length(d.man.organisms)             --> 1
  # #   consume(d.task)
  # #   @fact length(d.man.organisms) - orgAmount --> 0
  # #   @fact d.man.plugins["Status"].mps - mutations        --> 0
  # #   consume(d.task)
  # #   @fact length(d.man.organisms) - orgAmount --> 1
  # #   @fact d.man.plugins["Status"].mps - mutations        --> 2
  # #   consume(d.task)
  # #   @fact length(d.man.organisms) - orgAmount --> 1
  # #   @fact d.man.plugins["Status"].mps - mutations        --> 2
  # #   consume(d.task)
  # #   @fact length(d.man.organisms) - orgAmount --> 2
  # #   @fact d.man.plugins["Status"].mps - mutations        --> 4
  # #
  # #   Manager.destroy(d.man)
  # # end
end
