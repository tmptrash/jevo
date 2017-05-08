#
# Applcation wide configuration. It contains default values for
# different settings. You may change these settings using val()
# function. Also may be used like intermodule data sharing mechanism.
# One module may set a value and other module may read it later.
# Every configuration value may be obtained by unique key. Some
# settings are used like data containers in sense that, they
# just store the values, which may be changed many times during
# application life cicle.
# TODO: update usage
# Usage:
#     import Config
#     ...
#     cfg = Config.create()                       # creates new config instance
#     cfg.SECTION_ID_KEY_ID                       # returns value or nothing
#     cfg.SECTION_ID_KEY_ID = newVal              # sets new value - newVal
#     Config.save(cfg, "config.data")             # saves all to file
#     Config.load("config.data")                  # loads all from file
#
# @singleton
# @author DeadbraiN
#
module Config
  import Helper
  import CommandLine

  export ORGANISM_MAX_MUTATION_PERIOD

  export if_debug
  export if_test
  export if_not_test
  export if_profile
  export if_not_profile

  export create
  export save
  export load
  export isEmpty
  export format
  export merge

  export ConfigData

  export MODE_QUIET_ALL
  export MODE_QUIET_IMPORTANT
  export MODE_QUIET_NO
  #
  # Show all messages
  #
  const MODE_QUIET_ALL = 0
  #
  # Show only important messages
  #
  const MODE_QUIET_IMPORTANT = 1
  #
  # Supress showing messages
  #
  const MODE_QUIET_NO = 2
  #
  # Maximum period for mutations. Related to orgRainMutationPeriod config
  #
  const ORGANISM_MAX_MUTATION_PERIOD = 1000
  #
  # Data type for storing configuration data. Is used in pair with GData
  # type. For accessing use Gonfig.val(man.cfg, :SYMBOL[, value]) function
  #
  type ConfigData
    #
    # Comman line arguments returned by CommanLine.create() function
    #
    cmdLineArgs::Dict{String, String}
    #
    # Probabilities with which mutator decides what to do: add,
    # change, delete character of the code; change amount of
    # mutations or change mutations period... Depending on these
    # values, organism may have different strategies of living.
    # For example: if add value is bigger then del and change,
    # then code size will be grow up all the time. If del value is
    # bigger then other, then it will be decreased to zero lines
    # of code and will die.
    # Format: [
    #     add          - Probability of adding of new character to the code
    #     change       - Probability of changing existing character in a code
    #     small-change - Probability of "small change" - change of expression part
    #     delete       - Probability of deleting of a character in a code
    #     clone        - Probability for amount of mutations on clone
    #     period       - Probability of period of organism mutations
    #     amount       - Probability of amount of mutations per period
    # ]
    #
    orgMutationProbs::Array{Int, 1}
    #
    # Max value, which we may use in orgMutationProbs array.
    #
    orgMutationProbsMaxValue::Int
    #
    # Percent of mutations from code size, which will be applied to
    # organism after clonning. Should be <= 1.0
    #
    orgCloneMutation::Float64
    #
    # Amount of iterations before clonning process
    #
    orgClonePeriod::Int
    #
    # Amount of iterations within organism's life loop, after that we
    # do mutations according to orgRainMutationPercent config. If 0, then
    # mutations will be disabled. Should be less then ORGANISM_MAX_MUTATION_PERIOD
    #
    orgRainMutationPeriod::Int
    #
    # Value, which will be used like amount of mutations per
    # orgRainMutationPeriod iterations. 0 is a possible value if
    # we want to disable mutations. Should be less then 100
    #
    orgRainMutationPercent::Float64
    #
    # Amount of organisms we have to create on program start
    #
    orgStartAmount::Int
    #
    # Amount of energy for first organisms. They are like Adam and
    # Eve. It means that these empty (without code) organism were created
    # by operator and not by evolution.
    #
    orgStartEnergy::Int
    #
    # Begin color of "empty" organism (organism without code).
    #
    orgStartColor::Int
    #
    # Only after this amount of mutations organism should update it's color
    #
    orgColorPeriod::Int
    #
    # Amount of iterations within organism's life loop, after that we decrease
    # some amount of energy. If 0, then energy decreasing will be disabled.
    #
    orgEnergySpendPeriod::Int
    #
    # Amount of energy, which will be decreased in case of organis's
    # code error or exception
    #
    orgEnergySpendOnError::Int
    #
    # Amount of iterations when organism is alive. It will die after
    # this period. If 0, then will not be used.
    #
    orgAlivePeriod::Int
    #
    # This value means the period between organism codeSizes, which
    # affects energy grabbing by the system. For example: we have two
    # organisms: org1.energy = 10, org2.energy = 10, org1.codeSize = 6,
    # org2.codeSize = 9, Config.orgGarbagePeriod = 5. It means that
    # during energy grabbing by the system org1 and org2 will spend the
    # same amount of energy - 2 units. This is because the period goes
    # from 1..5, 6..10,... and both organisms are in the same period.
    #
    orgGarbagePeriod::Int
    #
    # Amount of errors in organisms codes in current population
    #
    orgErrors::Int
    #
    # Amount of eval calls for generatin organisms code
    #
    orgEvals::Int
    #
    # Maximum amount of arguments in custom functions. Minimum 1. Maximum
    # <= amount of default variables.
    #
    codeFuncParamAmount::Int
    #
    # Amount of iterations in a loop (for operator)
    #
    codeLoopAmount::Int
    #
    # Amount of organisms entire code runs per some period of time
    #
    codeRuns::Int
    #
    # If organism reach this limit of amount of code lines, then codeSizeCoef
    # will be used during it's energy grabbing by system. We use this approach,
    # because our CPU's are slow and organisms with big codes are very slow. But
    # it's possible for organisms to go outside the limit by inventing new
    # effective mechanisms of energy obtaining.
    #
    codeMaxSize::Int
    #
    # This coefficiend is used for calculating of amount of energy,
    # which grabbed from each organism depending on his codeSize.
    # This coefficient affects entire code size of population and
    # entire system speed. It depends on CPU speed also. So, for
    # different PC's it may be different.
    # Formula is the following: grabEnergy = cfg.codeSizeCoef * org.codeSize
    # See Config.codeMaxSize for details. This config will be turn on only if
    # organism reaches code size limit Config.codeMaxSize
    #
    codeSizeCoef::Int
    #
    # World width
    #
    worldWidth::Int
    #
    # World height
    #
    worldHeight::Int
    #
    # Turns on ciclic world mode. It means that organisms may go outside
    # it's border, but still be inside. For example, if the world has 10x10
    # size and the organism has 10x5 position in it, one step right will move
    # this organism at the position 1x5. The same scenario regarding Y
    # coordinate (height).
    worldCyclical::Bool
    #
    # Maximum amount of organisms in a world. If some organisms will
    # try to clone itself, when entire amount of organisms are equal
    # this value, then it(clonning) will not happen.
    #
    worldMaxOrgs::Int
    #
    # Minimum amount of orgaisms in a world. If this value riached,
    # then remove minimum energetic organisms mechanism will be disabled
    # until total amount will be more then this value.
    #
    worldMinOrgs::Int
    #
    # Amount of energy blocks in a world. Blocks will be placed in a
    # random way...
    #
    worldStartEnergyDots::Int
    #
    # Amount of energy in every block. See worldStartEnergyDots
    # config for details.
    #
    worldStartEnergyInDot::UInt16
    #
    # Minimum percent of energy in current world. Under percent i mean
    # percent from entire world area (100%). If the energy will be less
    # or equal then this percent, then new random energy should be added.
    # Should be less then 100.0 and more and equal to 0.0. 0.17 is a
    # normal percent for this system.
    #
    worldEnergyCheckPercent::Float64
    #
    # An amount of iteration, after which we have to check world energy
    # amount. Works in pair with worldEnergyCheckPercent. May be 0 if
    # you want to disable it
    #
    worldEnergyCheckPeriod::Int
    #
    # World scaling. On todays monitors pixel are so small, so we have
    # to zoom them with a coefficient.
    #
    worldZoom::Int
    #
    # Period of seconds, which is user for checking IPS value. It's
    # possible to increase it to reduce amount of requests and additional
    # code in main loop
    #
    worldIpsPeriod::Float64
    #
    # Period of making automatic backup of application. In seconds
    #
    backupPeriod::Float64
    #
    # Amount of backup files stored on HDD. Old files will be removed
    #
    backupAmount::Int
    #
    # The period of time between yield() calls in "stand by" mode.
    # In this mode manager waits for data in sockets and new connections.
    # In this mode yield() is called only once in a period, because
    # it eats CPU cicles. In case of data in sockets or new connections
    # yield() will be called more often.
    #
    conYieldPeriod::Float64
    #
    # Percent of energy, which will be minused from organism after
    # stepping from one instance to another.
    #
    conStepEnergySpendPercent::Int
    #
    # Starting number for TCP/IP listening
    #
    conServerPort::Int
    #
    # Works in pair with conServerPort. An IP of current
    # server/instance.
    # TODO: IPv6?
    conServerIp::IPv4
    #
    # Port number for "fast" mode. It uses, for example, for pooling
    #
    conFastServerPort::Int
    #
    # Left side server's (instance) port we want connect to. May be
    # zero (0) if no left side server available.
    #
    conLeftServerPort::Int
    #
    # Left server(instance) IP address. Works in pair with
    # conLeftServerPort
    #
    conLeftServerIp::IPv4
    #
    # Right side server's (instance) port we want connect to. May be
    # zero (0) if no right side server available.
    #
    conRightServerPort::Int
    #
    # Right server(instance) IP address. Works in pair with
    # conRightServerPort
    #
    conRightServerIp::IPv4
    #
    # Left up server's (instance) port we want connect to. May be
    # zero (0) if no up side server available.
    #
    conUpServerPort::Int
    #
    # Up server(instance) IP address. Works in pair with
    # conUpServerPort
    #
    conUpServerIp::IPv4
    #
    # Left down server's (instance) port we want connect to. May be
    # zero (0) if no down side server available.
    #
    conDownServerPort::Int
    #
    # Down server(instance) IP address. Works in pair with
    # conDownServerPort
    #
    conDownServerIp::IPv4
    #
    # Array of included plugins
    #
    plugIncluded::Array{String, 1}
    #
    # Array of excluded plugins. Affects plugIncluded list
    #
    plugExcluded::Array{String, 1}
    #
    # Debug mode. This mode means, that all debug messages
    # will be posted to the terminal
    #
    modeDebug::Bool
    #
    # Testing mode. In this mode user may run jevo step by step
    # and test it'sinternal parts. For example, during unit tests
    #
    modeTest::Bool
    #
    # Is used for profiling the application with ProfileView
    # package. See run-profiling.sh for details
    #
    modeProfile::Bool
    #
    # Amount of iterations in profile mode after which ProfileView
    # package will draw performance flame chart
    #
    modeProfilePeriod::Int
    #
    # Amount of seconds for status showing in terminal
    #
    modeStatusPeriod::Int
    #
    # In this mode status report will be short or full
    #
    modeStatusFull::Bool
    #
    # Mode for showing/supressing of messages. Possible values:
    #   0 - all messages
    #   1 - only important messages
    #   2 - no messages
    #
    modeQuiet::Int
  end
  #
  # Returns one configuration setting from command line parameters
  # or from ConfigData instance. Default values are set in create() method
  # @param args Command line arguments
  # @param name Name of the setting
  # @return {String} Value from command line or default value
  #
  function _setting(data::ConfigData, name::Symbol)
    local sName::String = string(name)
    local val::Any

    if CommandLine.has(data.cmdLineArgs, sName)
      val = CommandLine.val(data.cmdLineArgs, sName, true)
      #
      # In case of Int type we have to figure out exact type
      # Int8, UInt16 and so on...
      #
      if typeof(val) === Int return convert(typeof(getfield(data, name)), val) end
      return val
    end

    getfield(data, name)
  end
  #
  # Merges default configuration obtained by calling create() method
  # and command line arguments. Command line arguments have higher
  # priority, then default. For example, if use runs jevo like this:
  #
  #   julia src/AppManager.jl worldWidth:1024
  #
  # it means, that worldWidth config will be 1024 instead of default value
  # @param data Configuration data object
  # @return {ConfigData} Updated configuration object
  #
  function merge(data::ConfigData)
    local name::Symbol

    for name in fieldnames(data)
      #
      # We have to skip command line arguments object
      #
      if name === :cmdLineArgs continue end
      setfield!(data, name, _setting(data, name))
    end

    data
  end
  #
  # Creates configuration object. It will be used in all config
  # related functions like val(), save(), load(),... We don't need
  # to use global objects, because they are very slow!
  # @param empty Flag to create empty configuration
  # @return {ConfigData} Data type instance
  #
  function create(isMerge::Bool = true, empty::Bool = false)
    local cfg::ConfigData = ConfigData(
      CommandLine.create(),                    # cmdLineArgs
      empty ? [] : [50,100,1,0,1,1,1,1,1],     # orgMutationProbs (add,change,del,small-change,clone,period,amount,probs,cloneEnergy)
      100,                                     # orgMutationProbsMaxValue
      0.02,                                    # orgCloneMutation
      20,                                      # orgClonePeriod
      0,                                       # orgRainMutationPeriod
      0.01,                                    # orgRainMutationPercent
      500,                                     # orgStartAmount
      10000,                                   # orgStartEnergy
      100,                                     # orgStartColor
      50,                                      # orgColorPeriod
      500,                                     # orgEnergySpendPeriod
      1000,                                    # orgEnergySpendOnError
      10000,                                   # orgAlivePeriod (amountOfSeconds * averageIPSperSecond)
      7,                                       # orgGarbagePeriod
      0,                                       # orgErrors
      0,                                       # orgEvals

      2,                                       # codeFuncParamAmount
      8,                                       # codeLoopAmount
      0,                                       # codeRuns
      21,                                      # codeMaxSize
      20,                                      # codeSizeCoef

      1900,                                    # worldWidth
      940,                                     # worldHeight
      true,                                    # worldCyclical
      1000,                                    # worldMaxOrgs
      0,                                       # worldMinOrgs
      1000,                                    # worldStartEnergyDots
      UInt16(0x0001F4),                        # worldStartEnergyInDot
      0.3,                                     # worldEnergyCheckPercent
      20000,                                   # worldEnergyCheckPeriod
      1,                                       # worldZoom
      1.0,                                     # worldIpsPeriod

      300.0,                                   # backupPeriod
      10,                                      # backupAmount

      0.01,                                    # conYieldPeriod
      20,                                      # conStepEnergySpendPercent
      2010,                                    # conServerPort (current server port)
      ip"127.0.0.1",                           # conServerIp
      2011,                                    # conFastServerPort (current server "fast" mode port)
      0,                                       # conLeftServerPort
      ip"127.0.0.1",                           # conLeftServerIp
      0,                                       # conRightServerPort
      ip"127.0.0.1",                           # conRightServerIp
      0,                                       # conUpServerPort
      ip"127.0.0.1",                           # conUpServerIp
      0,                                       # conDownServerPort
      ip"127.0.0.1",                           # conDownServerIp

      [#="Phylogen", "Status"=#],              # plugIncluded
      [],                                      # plugExcluded

      false,                                   # modeDebug
      false,                                   # modeTest
      false,                                   # modeProfile
      2000,                                    # modeProfilePeriod
      10.0,                                    # modeStatusPeriod
      false,                                   # modeStatusFull
      0                                        # modeQuiet
    )

    isMerge ? merge(cfg) : cfg
  end
  #
  # This macro turns on DEBUG code if modeDebug. For example, it
  # shows debug messages in terminal. Don't change this macro position
  #
  macro if_debug(ex) @static if _setting(create(), :modeDebug) esc(ex) end end
  #
  # This macro turns on special test mode, which is called "iterational".
  # In this mode we may run Manager for special amount of iterations like a task.
  #
  macro if_test(ex) @static if _setting(create(), :modeTest) esc(ex) end end
  #
  # This macro turns on if special test mode is off.
  #
  macro if_not_test(ex) @static if !_setting(create(), :modeTest) esc(ex) end end
  #
  # This macro turns on specified code in profiling mode. You may use
  # run-profiling.sh for this
  #
  macro if_profile(ex) @static if _setting(create(), :modeProfile) esc(ex) end end
  #
  # This macro turns on specified code in not profiling mode. You may use
  # run-server.bat for this.
  #
  macro if_not_profile(ex) @static if !_setting(create(), :modeProfile) esc(ex) end end
  #
  # Saves all data into the file. If file exists, it will be overriden
  # @param data Config Data type
  # @param file File name
  # @return {Bool} saving result
  #
  function save(data::ConfigData, file::String = "config.data")
    Helper.save(data, file)
  end
  #
  # Loads all data from the file. If something went wrong new,
  # default configuration data type will be created.
  # @param file File name
  # @return {Tuple{ConfigData, Bool}} loading result
  #
  function load(file::String = "config.data")
    local ret = nothing
    try
      ret = Helper.load(file)
    catch e
      Helper.warn("Config.load(): $e")
      @if_debug showerror(STDOUT, e, catch_backtrace())
    end

    typeof(ret) !== ConfigData ? create(true, true) : ret
  end
  #
  # Checks if config data type is empty
  # @param data Config Data type
  # @return {Bool}
  #
  function isEmpty(data::ConfigData)
    length(data.orgMutationProbs) == 0
  end
  #
  # Formats configuration for usable user's view
  # @return {String}
  # TODO: do we need this?
  function format(data::ConfigData)
    local fields::Array{Symbol, 1} = fieldnames(ConfigData)
    local i::Symbol
    local arr::Array{String, 1} = []

    for i in fields
      push!(arr, string(i) * ": " * string(getfield(data, i)))
    end

    arr
  end
end
