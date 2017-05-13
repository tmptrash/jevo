#
# Shows real time status of current Manager
# TODO: explain all parameters
#
# @author DeadbraiN
#
module Status
  import ManagerTypes.ManagerData
  import ManagerTypes.Plugin
  import ManagerTypes.OrganismTask
  import ManagerTypes
  import Creature
  import Config
  import Event
  import Formatting.format

  export init
  #
  # Unique id of the current module
  #
  const MODULE_ID = hash(string(Status))::UInt64
  #
  # Contains real time status data like IPS, RPS,...
  #
  type StatusData <: Plugin
    stamp::Float64    # current UNIX time stamp
    ips::Float64      # average IPS
    ipsAmount::Int    # amount of IPS calculations per status period
    rps::Int          # all requests per second
    eups::Int         # energy updates per second
    kops::Int         # killed organisms per second
    ytps::Int         # one side yieldto() calls per second
    yps::Int          # all yields per second
    cps::Int          # clones per second
    srps::Int         # moveXXX() related requests per second
    syps::Int         # moveXXX() related yields per second
    mps::Int          # mutations per second
    cmps::Int         # amount of mutations on clone
    energy::Int       # energy of organisms
    eMin::Int         # minimum organism energy
    eMax::Int         # maximum organism energy
    evals::Int        # amount of eval() calls till previous status
    csMin::Int        # minimum organism code size
    csMax::Int        # maximum organism code size
    code::Int         # average code size
    eatl::Int         # organism eats left
    eatr::Int         # organism eats right
    eatu::Int         # organism eats up
    eatd::Int         # organism eats down
    eatorg::Int       # amount of energy obtained by eating other organisms
    eate::Int         # amount of energy eated by organisms
    eated::Int        # total amount of eating for organisms
    stepl::Int        # organism moves left
    stepr::Int        # organism moves right
    stepu::Int        # organism moves up
    stepd::Int        # organism moves down
    steps::Int        # total amount of moving in population
    grabbed::Int      # amount of energy grabbed by the system from population
    orgs::Int         # average amount of organisms
    fit::UInt         # Fitness level (energy * mutationsFromStart)
  end
  #
  # Module initializer
  #
  function init(man::ManagerData)
    #
    # We havr to add ourself to plugins map
    #
    man.plugins[MODULE_ID] = StatusData(0.0,0.0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,UInt(0), 0)
    #
    # All event handlers should be binded here
    #
    Event.on(man.obs, "ips", _onIps)

    Event.on(man.obs, "request", _onRequest)
    Event.on(man.obs, "updateenergy", _onUpdateEnergy)
    Event.on(man.obs, "killorganism", _onKillOrganism)
    Event.on(man.obs, "mutations", _onMutations)
    Event.on(man.obs, "clone", _onClone)
    Event.on(man.obs, "dotrequest", _onDotRequest)
    #Event.on(man.obs, "organism", _onOrganism)
    Event.on(man.obs, "grabenergy", _onGrabEnergy)

    Event.on(man.obs, "eatorganism", _onEatOrganism)
    Event.on(man.obs, "eatenergy", _onEatEnergy)
    Event.on(man.obs, "eatleft", _onEatLeft)
    Event.on(man.obs, "eatright", _onEatRight)
    Event.on(man.obs, "eatup", _onEatUp)
    Event.on(man.obs, "eatdown", _onEatDown)

    Event.on(man.obs, "stepleft", _onStepLeft)
    Event.on(man.obs, "stepright", _onStepRight)
    Event.on(man.obs, "stepup", _onStepUp)
    Event.on(man.obs, "stepdown", _onStepDown)
  end
  #
  # Is called at the beginning of _onIps
  #
  function _onBeforeIps(man::ManagerData, sd::StatusData)
    sd.ips       += man.ips
    sd.orgs      += ManagerTypes.orgAmount(man)
    sd.ipsAmount += 1
    #
    # Condition for the first run
    #
    if man.cfg.orgEvals < 1 sd.evals = man.cfg.orgEvals end
    #
    # Energy should be calculated here in IPS method, because it's slow
    #
    _iterateOrganisms(man, sd)
  end
  #
  # Shows real time status obtained from StatusData type
  # @param man Manager data type object
  # @param stamp Current time stamp
  #
  function _onIps(man::ManagerData, stamp::Float64, codeRuns::Int)
    local sd::StatusData  = man.plugins[MODULE_ID]
    local cfg::Config.ConfigData = man.cfg
    local orgs::Int
    local orgsIps::Int
    local ips::Float64

    _onBeforeIps(man, sd)
    if stamp - sd.stamp < cfg.modeStatusPeriod return nothing end

    ips      = sd.ips / sd.ipsAmount
    orgs     = div(sd.orgs, sd.ipsAmount)
    orgsIps  = div(orgs, ips)

    if orgs < 1 orgs = 1 end
    if orgsIps < 1 orgsIps = 1 end
    print(string(Dates.format(now(), "HH:MM:SS"), " "))
    _showParam(:green,  "org:",  orgs, 8)
    _showParam(:normal, "ips:",  (@sprintf "%.2f" ips), 11)
    _showParam(:green,  "nrg:",  div(sd.energy, sd.ipsAmount * orgsIps), 14, true)
    _showParam(:red,    "eat:",  div(sd.eate, orgs), 12, true)
    _showParam(:red,    "eato:", div(sd.eatorg, orgs), 14, true)
    _showParam(:red,    "grab:", div(sd.grabbed, orgs), 10, true)
    _showParam(:cyan,   "step:", div(sd.steps, orgs), 12, true)
    _showParam(:orange, "cmut:", (@sprintf "%.2f" sd.cmps / orgs), 11)
    _showParam(:orange, "mut:",  (@sprintf "%.2f" sd.mps  / orgs), 10)
    _showParam(:yellow, "kil:",  (@sprintf "%.2f" sd.kops / orgs), 10)
    _showParam(:yellow, "clon:", (@sprintf "%.2f" sd.cps  / orgs), 11)
    _showParam(:orange, "err:",  div(cfg.orgErrors, orgs), 10, true)
    _showParam(:orange, "cod:",  div(sd.code, sd.ipsAmount * orgs), 7)
    _showParam(:red,    "fit:",  round(Int, sd.fit / (sd.ipsAmount * orgs)), 16, true)
    print("\n")

    _onAfterIps(man, stamp, sd)
  end
  #
  # Is called at the end of _onIps() function
  #
  function _onAfterIps(man::ManagerData, stamp::Float64, sd::StatusData)
    sd.stamp      = stamp
    sd.ips        = 0.0
    sd.ipsAmount  = 0
    sd.ytps       = 0
    sd.yps        = 0
    sd.cps        = 0
    sd.eups       = 0
    sd.kops       = 0
    sd.rps        = 0
    sd.syps       = 0
    sd.srps       = 0
    sd.mps        = 0
    sd.cmps       = 0
    sd.eMin       = typemax(Int)
    sd.eMax       = 0
    sd.csMin      = typemax(Int)
    sd.csMax      = 0
    sd.code       = 0
    sd.evals      = man.cfg.orgEvals
    sd.eatl       = 0
    sd.eatr       = 0
    sd.eatu       = 0
    sd.eatd       = 0
    sd.eatorg     = 0
    sd.eate       = 0
    sd.eated      = 0
    sd.grabbed    = 0
    sd.stepl      = 0
    sd.stepr      = 0
    sd.stepu      = 0
    sd.stepd      = 0
    sd.steps      = 0
    sd.energy     = 0
    sd.orgs       = 0
    sd.fit        = UInt(0)
  end
  #
  # Calculates total energy of population
  # @param man Manager data type
  # @param sd Structure of status line
  #
  function _iterateOrganisms(man::ManagerData, sd::StatusData)
    local task::OrganismTask
    local org::Creature.Organism
    local i::Int

    @inbounds for i = 1:length(man.tasks)
      org = man.tasks[i].organism
      if !org.alive continue end
      sd.energy += org.energy
      sd.code   += org.codeSize
      #
      # Fitness level
      #
      sd.fit += UInt(org.energy) * UInt(org.mutationsFromStart)
    end
  end
  #
  # Shows one parameter in status line accordint to settings
  #
  function _showParam(color::Symbol, name::String, val::Any, width::Int, formatComas::Bool = false)
    if formatComas print_with_color(color, rpad(string(name, format(val, commas = true)), width))
    else print_with_color(color, rpad(string(name, val), width))
    end
  end
  #
  # Calls if yield() in Manager is called
  # @param man Manager data type object
  #
  function _onYield(man::ManagerData)
    man.plugins[MODULE_ID].yps += 1
  end
  #
  # Calls if yieldto() in Manager is called
  # @param man Manager data type object
  #
  function _onYieldTo(man::ManagerData)
    man.plugins[MODULE_ID].ytps += 1
  end
  #
  # Calls if request in Manager has sent
  # @param man Manager data type object
  #
  function _onRequest(man::ManagerData)
    man.plugins[MODULE_ID].rps += 1
  end
  #
  # Calls if organisms energy was updated
  # @param man Manager data type object
  #
  function _onUpdateEnergy(man::ManagerData)
    man.plugins[MODULE_ID].eups += 1
  end
  #
  # Calls if one organism was killed
  # @param man Manager data type object
  # @param org Killed organism
  #
  function _onKillOrganism(man::ManagerData, org::Creature.Organism)
    man.plugins[MODULE_ID].kops += 1
  end
  #
  # Calculates amount of mutations for specified organism
  # @param man Manager related data object
  # @param org Organism we have to add to the pool
  # @param amount Amount of real mutations
  # @param onClone true if current mutations were applied on clonning
  # of organism and not as a rain mutations
  #
  function _onMutations(man::ManagerData, org::Creature.Organism, amount::Int, onClone::Bool)
    man.plugins[MODULE_ID].mps += amount
    if onClone man.plugins[MODULE_ID].cmps += amount end
  end
  #
  # Handles organism clonning
  # @param man Manager related data object
  # @param parentId Unique id of parent organism
  # @param childId Unique id of child organism
  #
  function _onClone(man::ManagerData, parentId::UInt, childId::UInt)
    man.plugins[MODULE_ID].cps += 1
  end
  #
  # Handles one dot request
  # @param man Manager related data object
  #
  function _onDotRequest(man::ManagerData)
    man.plugins[MODULE_ID].rps  += 1
    man.plugins[MODULE_ID].srps += 1
  end
  #
  # Handles one "stepyield" event. It means, that yield() was called
  # for one organism step.
  # @param man Manager related data object
  #
  function _onStepYield(man::ManagerData)
    man.plugins[MODULE_ID].yps  += 1
    man.plugins[MODULE_ID].syps += 1
  end
  #
  # Handles "organism" event. Means, that one organism has processed (runned)
  # @param man Manager related data object
  # @param org Organism
  #
  function _onOrganism(man::ManagerData, org::Creature.Organism)
    local sd::StatusData = man.plugins[MODULE_ID]
    #
    # Finds min/max energetic organisms in population
    #
    if org.energy < sd.eMin sd.eMin = org.energy end
    if org.energy >= sd.eMax sd.eMax = org.energy end
    #
    # Updates min/max code sizes
    #
    #if org.codeSize >  sd.csMax sd.csMax = org.codeSize end
    #if org.codeSize <= sd.csMin sd.csMin = org.codeSize end
  end
  #
  # Is called on enery grab of energy from organism
  # @param man Manager related data object
  # @param amount Amount of grabbed energy
  #
  function _onGrabEnergy(man::ManagerData, amount::Int)
    man.plugins[MODULE_ID].grabbed += amount
  end
  #
  # Handler of "eatorganism" event
  # @param man Manager data type
  # @param eated Amount of energy obteined by eating of other organism
  #
  function _onEatOrganism(man::ManagerData, eated::Int)
    man.plugins[MODULE_ID].eatorg += eated
  end
  #
  # Handler of "eatenergy" event
  # @param man Manager data type
  # @param eated Amount of energy obteined by eating of energy
  #
  function _onEatEnergy(man::ManagerData, eated::Int)
    man.plugins[MODULE_ID].eate += eated
  end
  #
  # Is called every time if some organism calls eatLeft() function
  # @param man Manager data type
  # @param org Organism, who is eating
  # @param amount Amount of wanted eating (bite)
  # @param eated Amount of eated energy
  #
  function _onEatLeft(man::ManagerData, org::Creature.Organism, amount::Int, eated::Int)
    local sd::StatusData = man.plugins[MODULE_ID]

    sd.eatl  += eated
    sd.eated += eated
  end
  #
  # Is called every time if some organism calls eatRight() function
  # @param man Manager data type
  # @param org Organism, who is eating
  # @param amount Amount of wanted eating (bite)
  # @param eated Amount of eated energy
  #
  function _onEatRight(man::ManagerData, org::Creature.Organism, amount::Int, eated::Int)
    local sd::StatusData = man.plugins[MODULE_ID]

    sd.eatr  += eated
    sd.eated += eated
  end
  #
  # Is called every time if some organism calls eatUp() function
  # @param man Manager data type
  # @param org Organism, who is eating
  # @param amount Amount of wanted eating (bite)
  # @param eated Amount of eated energy
  #
  function _onEatUp(man::ManagerData, org::Creature.Organism, amount::Int, eated::Int)
    local sd::StatusData = man.plugins[MODULE_ID]

    sd.eatu  += eated
    sd.eated += eated
  end
  #
  # Is called every time if some organism calls eatDown() function
  # @param man Manager data type
  # @param org Organism, who is eating
  # @param amount Amount of wanted eating (bite)
  # @param eated Amount of eated energy
  #
  function _onEatDown(man::ManagerData, org::Creature.Organism, amount::Int, eated::Int)
    local sd::StatusData = man.plugins[MODULE_ID]

    sd.eatd  += eated
    sd.eated += eated
  end
  #
  # Is called every time if some organism calls stepLeft() function
  # @param man Manager data type
  # @param org Organism, who is moving
  # @param stepDone Is step was successful or not
  #
  function _onStepLeft(man::ManagerData, org::Creature.Organism, stepDone::Bool)
    local sd::StatusData = man.plugins[MODULE_ID]

    if stepDone
      sd.stepl += 1
      sd.steps += 1
    end
  end
  #
  # Is called every time if some organism calls stepRight() function
  # @param man Manager data type
  # @param org Organism, who is moving
  # @param stepDone Is step was successful or not
  #
  function _onStepRight(man::ManagerData, org::Creature.Organism, stepDone::Bool)
    local sd::StatusData = man.plugins[MODULE_ID]

    if stepDone
      sd.stepr += 1
      sd.steps += 1
    end
  end
  #
  # Is called every time if some organism calls stepUp() function
  # @param man Manager data type
  # @param org Organism, who is moving
  # @param stepDone Is step was successful or not
  #
  function _onStepUp(man::ManagerData, org::Creature.Organism, stepDone::Bool)
    local sd::StatusData = man.plugins[MODULE_ID]

    if stepDone
      sd.stepu += 1
      sd.steps += 1
    end
  end
  #
  # Is called every time if some organism calls stepDown() function
  # @param man Manager data type
  # @param org Organism, who is moving
  # @param stepDone Is step was successful or not
  #
  function _onStepDown(man::ManagerData, org::Creature.Organism, stepDone::Bool)
    local sd::StatusData = man.plugins[MODULE_ID]

    if stepDone
      sd.stepd += 1
      sd.steps += 1
    end
  end
end



# if cfg.modeStatusFull
#   print_with_color(:red,   rpad(string("eat:",    sd.eatl),                        11))
#   print_with_color(:red,   rpad(string(sd.eatr),                                    8))
#   print_with_color(:red,   rpad(string(sd.eatu),                                    8))
#   print_with_color(:red,   rpad(string(sd.eatd),                                    8))
#   print_with_color(:red,   rpad(string(format(sd.eated, commas=true)),             10))
# end
# if cfg.modeStatusFull
#   print_with_color(:red, rpad(string("step:", sd.stepl),                           11))
#   print_with_color(:red, rpad(string(sd.stepr),                                     6))
#   print_with_color(:red, rpad(string(sd.stepu),                                     6))
#   print_with_color(:red, rpad(string(sd.stepd),                                     6))
#   print_with_color(:red, rpad(string(format(sd.steps, commas=true)),               10))
# end
# if cfg.modeStatusFull
#   print_with_color(:yellow,  rpad(string("sreq:",   div(sd.srps, ips)),                       9))
#   print_with_color(:yellow,  rpad(string("enup:",   div(sd.eups, ips)),                       8))
# end
# if cfg.modeStatusFull
#   print_with_color(:orange,    rpad(string("code:",   sd.csMin),                   12))
#   print_with_color(:orange,    rpad(string(sd.csMax),                               7))
# end
# if cfg.modeStatusFull
#   print_with_color(:orange,    rpad(string("nrg:",    sd.eMin),                    11))
#   print_with_color(:orange,    rpad(string(format(sd.eMax, commas=true)),            7), "\n")
# end
#print_with_color(:red,    rpad(string("ytps:",   sd.ytps)), 11))
#print_with_color(:red,    rpad(string("yps:",    sd.yps)),  9))
#print_with_color(:red,    rpad(string("syps:",   sd.syps)),  9))
