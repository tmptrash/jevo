#
# Shows real time status of current Manager
#
# @author DeadbraiN
#
module Status
  import ManagerTypes.ManagerData
  import ManagerTypes.Plugin
  import Creature
  import Config
  import Event
  import Formatting.format

  export init
  #
  # Name of the current module
  #
  const MODULE_NAME = string(Status)
  #
  # Contains real time status data like IPS, RPS,...
  #
  type StatusData <: Plugin
    stamp::Float64    # current UNIX time stamp
    ips::Float64      # average IPS
    ipsAmount::Int    # amount of IPS checks. Is used for average IPS calculation
    rps::Int          # all requests per second
    eups::Int         # energy updates per second
    kops::Int         # killed organisms per second
    ytps::Int         # one side yieldto() calls per second
    yps::Int          # all yields per second
    cps::Int          # clones per second
    srps::Int         # moveXXX() related requests per second
    syps::Int         # moveXXX() related yields per second
    mps::Int          # mutations per second
    energy::Int       # total energy in population
    eMin::Int         # minimum organism energy
    eMax::Int         # maximum organism energy
    evals::Int        # amount of eval() calls till previous status
    csMin::Int        # minimum organism code size
    csMax::Int        # maximum organism code size
    eatl::Int         # organism eats left
    eatr::Int         # organism eats right
    eatu::Int         # organism eats up
    eatd::Int         # organism eats down
    eated::Int        # total amount of eating in population
    stepl::Int        # organism moves left
    stepr::Int        # organism moves right
    stepu::Int        # organism moves up
    stepd::Int        # organism moves down
    steps::Int        # total amount of moving in population
  end
  #
  # Module initializer
  #
  function init(man::ManagerData)
    #
    # We havr to add ourself to plugins map
    #
    man.plugins[MODULE_NAME] = StatusData(0.0,0.0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
    #
    # All event handlers should be binded here
    #
    Event.on(man.obs, "iteration", _onStatus)
    #Event.on(man.obs, "yield", _onYield)
    #Event.on(man.obs, "yieldto", _onYieldTo)
    #Event.on(man.obs, "stepyield", _onStepYield)
    Event.on(man.obs, "request", _onRequest)
    Event.on(man.obs, "updateenergy", _onUpdateEnergy)
    Event.on(man.obs, "killorganism", _onKillOrganism)
    Event.on(man.obs, "mutations", _onMutations)
    Event.on(man.obs, "clone", _onClone)
    Event.on(man.obs, "dotrequest", _onDotRequest)
    Event.on(man.obs, "organism", _onOrganism)

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
  # Shows real time status obtained from StatusData type
  # @param man Manager data type object
  # @param stamp Current time stamp
  #
  function _onStatus(man::ManagerData, stamp::Float64)
    local st::StatusData  = man.plugins[MODULE_NAME]
    local cfg::Config.ConfigData = man.cfg
    local period::Float64 = cfg.modeStatusPeriod
    local ips::Float64

    #
    # Condition for the first run
    #
    if cfg.orgEvals < 1 st.evals = cfg.orgEvals end
    #
    # Calculates average IPS for period "period"
    #
    st.ipsAmount += 1
    st.ips += man.ips

    if stamp - st.stamp >= period
      ips = st.ips / st.ipsAmount
      print(string(Dates.format(now(), "HH:MM:SS"), " "))
      print_with_color(:green,  rpad(string("orgs:",   length(man.tasks)),                9))
      print_with_color(:normal, rpad(string("ips:",    @sprintf "%.3f" ips),             13))
      print_with_color(:green,  rpad(string("nrg:",    format(div(st.energy, ips), commas=true)), 16))
      if cfg.modeStatusFull
        print_with_color(:red,   rpad(string("eat:",    st.eatl),                        11))
        print_with_color(:red,   rpad(string(st.eatr),                                    8))
        print_with_color(:red,   rpad(string(st.eatu),                                    8))
        print_with_color(:red,   rpad(string(st.eatd),                                    8))
        print_with_color(:red,   rpad(string(format(st.eated, commas=true)),             10))
      else
        print_with_color(:red,   rpad(string("eat:", format(div(st.eated, ips), commas=true)),     14))
      end
      if cfg.modeStatusFull
        print_with_color(:red, rpad(string("step:", st.stepl),                           11))
        print_with_color(:red, rpad(string(st.stepr),                                     6))
        print_with_color(:red, rpad(string(st.stepu),                                     6))
        print_with_color(:red, rpad(string(st.stepd),                                     6))
        print_with_color(:red, rpad(string(format(st.steps, commas=true)),               10))
      else
        print_with_color(:red, rpad(string("step:", format(div(st.steps, ips), commas=true)),      14))
      end
      print_with_color(:red,       rpad(string("mut:",    st.mps),                        9))
      print_with_color(:red,       rpad(string("kil:",    st.kops),                       8))
      print_with_color(:yellow,    rpad(string("clon:",   st.cps),                        9))
      print_with_color(:yellow,    rpad(string("eval:",   cfg.orgEvals - st.evals),      10))
      print_with_color(:yellow,    rpad(string("req:",    st.rps),                        9))
      if cfg.modeStatusFull
        print_with_color(:yellow,  rpad(string("sreq:",   st.srps),                       9))
        print_with_color(:yellow,  rpad(string("enup:",   st.eups),                       8))
      end
      print_with_color(:orange,    rpad(string("err:",    man.cfg.orgErrors),            11))
      if cfg.modeStatusFull
        print_with_color(:orange,    rpad(string("code:",   st.csMin),                   12))
        print_with_color(:orange,    rpad(string(st.csMax),                               7))
      else
        print_with_color(:orange,    rpad(string("code:", div(st.csMax - st.csMin, 2)),    9), "\n")
      end
      if cfg.modeStatusFull
        print_with_color(:orange,    rpad(string("nrg:",    st.eMin),                    11))
        print_with_color(:orange,    rpad(string(format(st.eMax, commas=true)),            7), "\n")
      end

      #print_with_color(:red,    rpad(string("ytps:",   st.ytps)), 11))
      #print_with_color(:red,    rpad(string("yps:",    st.yps)),  9))
      #print_with_color(:red,    rpad(string("syps:",   st.syps)),  9))

      st.stamp     = stamp
      st.ipsAmount = 0
      st.ips       = 0.0
      st.ytps      = 0
      st.yps       = 0
      st.cps       = 0
      st.eups      = 0
      st.kops      = 0
      st.rps       = 0
      st.syps      = 0
      st.srps      = 0
      st.mps       = 0
      st.eMin      = typemax(Int)
      st.eMax      = 0
      st.csMin     = typemax(Int)
      st.csMax     = 0
      st.evals     = cfg.orgEvals
      st.eatl      = 0
      st.eatr      = 0
      st.eatu      = 0
      st.eatd      = 0
      st.eated     = 0
      st.stepl     = 0
      st.stepr     = 0
      st.stepu     = 0
      st.stepd     = 0
    end
    #
    # Energy/steps of entire population should be calculated again
    # for every "iteration" event call
    #
    st.energy = 0
    st.steps  = 0
  end
  #
  # Calls if yield() in Manager is called
  # @param man Manager data type object
  #
  function _onYield(man::ManagerData)
    man.plugins[MODULE_NAME].yps += 1
  end
  #
  # Calls if yieldto() in Manager is called
  # @param man Manager data type object
  #
  function _onYieldTo(man::ManagerData)
    man.plugins[MODULE_NAME].ytps += 1
  end
  #
  # Calls if request in Manager has sent
  # @param man Manager data type object
  #
  function _onRequest(man::ManagerData)
    man.plugins[MODULE_NAME].rps += 1
  end
  #
  # Calls if organisms energy was updated
  # @param man Manager data type object
  #
  function _onUpdateEnergy(man::ManagerData)
    man.plugins[MODULE_NAME].eups += 1
  end
  #
  # Calls if one organism was killed
  # @param man Manager data type object
  # @param org Killed organism
  #
  function _onKillOrganism(man::ManagerData, org::Creature.Organism)
    man.plugins[MODULE_NAME].kops += 1
  end
  #
  # Calculates amount of mutations for specified organism
  # @param man Manager related data object
  # @param org Organism we have to add to the pool
  # param amount Amount of real mutations
  #
  function _onMutations(man::ManagerData, org::Creature.Organism, amount::Int)
    man.plugins[MODULE_NAME].mps += amount
  end
  #
  # Handles organism clonning
  # @param man Manager related data object
  # @param parentId Unique id of parent organism
  # @param childId Unique id of child organism
  #
  function _onClone(man::ManagerData, parentId::UInt, childId::UInt)
    man.plugins[MODULE_NAME].cps += 1
  end
  #
  # Handles one dot request
  # @param man Manager related data object
  #
  function _onDotRequest(man::ManagerData)
    man.plugins[MODULE_NAME].rps  += 1
    man.plugins[MODULE_NAME].srps += 1
  end
  #
  # Handles one "stepyield" event. It means, that yield() was called
  # for one organism step.
  # @param man Manager related data object
  #
  function _onStepYield(man::ManagerData)
    man.plugins[MODULE_NAME].yps  += 1
    man.plugins[MODULE_NAME].syps += 1
  end
  #
  # Handles "organism" event. Means, that one organism has processed (runned)
  # @param man Manager related data object
  # @param org Organism
  #
  function _onOrganism(man::ManagerData, org::Creature.Organism)
    local sd::StatusData = man.plugins[MODULE_NAME]

    sd.energy += org.energy
    #
    # Finds min/max energetic organisms in population
    #
    if org.energy < sd.eMin sd.eMin = org.energy end
    if org.energy >= sd.eMax sd.eMax = org.energy end
    #
    # Updates min/max code sizes
    #
    if org.codeSize >  sd.csMax sd.csMax = org.codeSize end
    if org.codeSize <= sd.csMin sd.csMin = org.codeSize end
  end
  #
  # Is called every time if some organism calls eatLeft() function
  # @param man Manager data type
  # @param org Organism, who is eating
  # @param amount Amount of wanted eating (bite)
  # @param eated Amount of eated energy
  #
  function _onEatLeft(man::ManagerData, org::Creature.Organism, amount::Int, eated::Int)
    local sd::StatusData = man.plugins[MODULE_NAME]

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
    local sd::StatusData = man.plugins[MODULE_NAME]

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
    local sd::StatusData = man.plugins[MODULE_NAME]

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
    local sd::StatusData = man.plugins[MODULE_NAME]

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
    local sd::StatusData = man.plugins[MODULE_NAME]

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
    local sd::StatusData = man.plugins[MODULE_NAME]

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
    local sd::StatusData = man.plugins[MODULE_NAME]

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
    local sd::StatusData = man.plugins[MODULE_NAME]

    if stepDone
      sd.stepd += 1
      sd.steps += 1
    end
  end
end
