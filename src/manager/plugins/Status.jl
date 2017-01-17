#
# Shows real time status of current Manager
#
# @author DeadbraiN
#
module Status
  import CodeConfig
  import ManagerTypes.ManagerData
  import ManagerTypes.Plugin
  import Creature
  import Event

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
    rps::Int          # all requests per second
    eups::Int         # energy updates per second
    kops::Int         # killed organisms per second
    ytps::Int         # one side yieldto() calls per second
    yps::Int          # all yields per second
    cps::Int          # clones per second
    srps::Int         # moveXXX() related requests per second
    syps::Int         # moveXXX() related yields per second
    mps::Int          # mutations per second
  end
  #
  # Module initializer
  #
  function init(man::ManagerData)
    #
    # We havr to add ourself to plugins map
    #
    man.plugins[MODULE_NAME] = StatusData(0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
    #
    # All event handlers should be binded here
    #
    Event.on(man.obs, "iteration", _onStatus)
    Event.on(man.obs, "yield", _onYield)
    Event.on(man.obs, "yieldto", _onYieldTo)
    Event.on(man.obs, "request", _onRequest)
    Event.on(man.obs, "updateenergy", _onUpdateEnergy)
    Event.on(man.obs, "killorgaism", _onKillOrganism)
    Event.on(man.obs, "mutations", _onMutations)
    Event.on(man.obs, "clone", _onClone)
    Event.on(man.obs, "dotrequest", _onDotRequest)
    Event.on(man.obs, "stepyield", _onStepYield)
  end
  #
  # Shows real time status obtained from StatusData type
  # @param man Manager data type object
  # @param stamp Current time stamp
  #
  function _onStatus(man::ManagerData, stamp::Float64)
    local st::StatusData  = man.plugins[MODULE_NAME]
    local period::Float64 = CodeConfig.modeStatusPeriod

    if stamp - st.stamp >= CodeConfig.modeStatusPeriod
      println(
        "ips ",      man.cfg.worldIps,
        ", ytps ",   Int(div(st.ytps, period)),
        ", yps ",    Int(div(st.yps, period)),
        ", cps ",    Int(div(st.cps, period)),
        ", eups ",   Int(div(st.eups, period)),
        ", kops ",   Int(div(st.kops, period)),
        ", syps ",   Int(div(st.syps, period)),
        ", rps ",    Int(div(st.rps, period)),
        ", srps ",   Int(div(st.srps, period)),
        ", mps ",    Int(div(st.mps, period)),
        ", evals ",  man.cfg.orgEvals,
        ", err ",    man.cfg.orgErrors,
        ", orgs ",   length(man.tasks)
      )
      st.stamp = stamp
      st.ytps  = 0
      st.yps   = 0
      st.cps   = 0
      st.eups  = 0
      st.kops  = 0
      st.rps   = 0
      st.syps  = 0
      st.srps  = 0
      st.mps   = 0
    end
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
end
