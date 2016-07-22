#
# Manages organisms and they world
#
# @singleton
# @author DeadbraiN
#
# TODO: describe included files and how to split Manager on files.
# TODO:   - Manager may call every function from any file
# TODO:   - File may call every function except other files
# TODO:   - If file calls Manager function it hould add Manager. before calling
# TODO: describe that manager is a mediator between all other objects
# TODO: like world, terminal and so on.
# TODO: add remote functions for changing period and probs
# TODO: add command line parameter for creating default config file
# TODO: add create method. It should return ManagerData() type
# TODO: describe frozen organisms conception
#
module Manager
  import Creature
  import Mutator
  import World
  import Helper
  import Event
  import Server
  import Client
  import Connection
  import CommandLine
  import RpcApi
  import FastApi
  import Config
  import ManagerTypes
  # TODO: remove this!
  using Debug

  export create
  export run
  #
  # This is how we collect Manager module from it's parts(files)
  #
  include("ManagerOrganism.jl")
  include("ManagerRpc.jl")
  include("ManagerBackup.jl")
  include("ManagerParams.jl")
  #
  # Creates manager related data instance. It will be passed to all
  # manager methods
  #
  function create()
    local cfg::Config.ConfigData = Config.create()
    local man::ManagerTypes.ManagerData = ManagerTypes.ManagerData(
      cfg,                                                                           # cfg
      World.create(cfg.WORLD_WIDTH, cfg.WORLD_HEIGHT),                               # world
      Dict{Int, Creature.Organism}(),                                                # positions
      Dict{UInt, Creature.Organism}(),                                               # organisms
      ManagerTypes.OrganismTask[],                                                   # tasks
      CommandLine.create(),                                                          # params
      UInt(2),                                                                       # organismId
      UInt(0),                                                                       # totalOrganisms
      Creature.create(cfg, UInt(0), Helper.Point(1,1)),                              # minOrg
      Creature.create(cfg, UInt(1), Helper.Point(2,1)),                              # maxOrg
      UInt(0),                                                                       # minId
      UInt(0),                                                                       # maxId
      CommandLine.has(CommandLine.create(), ARG_QUIET),                              # quiet
      function(man::ManagerTypes.ManagerData, pos::Helper.Point, color::UInt32) end, # dotCallback
      current_task()                                                                 # task
    )
    local cons::ManagerTypes.Connections = _createConnections(man)

    man.cons = cons
    man
  end
  #
  # Runs Manager instance, one world, server an so on... Blocking
  # function.
  # @param man Manager data type
  # @param recover true if we have to recover from last backup
  # @return {Bool} run status
  #
  function run(man::ManagerTypes.ManagerData, recover::Bool = false)
    local counter::Int = 0
    local ips    ::Int = 0
    local istamp ::Int = round(Int, time())
    local bstamp ::Int = istamp
    local cons   ::ManagerTypes.Connections = man.cons
    local tasks  ::Array{ManagerTypes.OrganismTask, 1} = man.tasks
    local cfg    ::Config.ConfigData = man.cfg
    #
    # This server is listening for all other managers and remote
    # terminal. It runs obtained commands and send answers back.
    # In other words, it works like RPC runner... Fast server is
    # listening for "fast" clients and works in "fast" mode.
    #
    Server.run(man.cons.server)
    # TODO: possibly, we don't need to run this server due to performance issue
    Server.run(man.cons.fastServer)
    #
    # If user set up some amount of organisms they will be created
    # in this call. If we are in recover mode, then this step should
    # be skipped.
    #
    if recover === false
      setRandomEnergy(man, cfg.WORLD_START_ENERGY_BLOCKS, cfg.WORLD_START_ENERGY_AMOUNT)
      createOrganisms(man)
    end
    #
    # This is main infinite loop. It manages input connections
    # and organism's tasks switching.
    #
    while true
    #for i=1:2000001
      #
      # We have to wait while all clients are ready for streaming. This
      # is because the error in serializer. See issue for details:
      # https://github.com/JuliaLang/julia/issues/16746
      #
      if cons.streamInit::Bool yield(); continue end
      #
      # This is global time stamp in seconds
      #
      stamp = round(Int, time())
      #
      # After all organisms die, we have to create next, new population
      #
      if length(tasks) < 1 createOrganisms(man) end
      #
      # This call runs all organism related tasks one by one
      #
      counter = _updateOrganisms(man, counter)
      #
      # We have to update IPS (Iterations Per Second) every second
      #
      ips, istamp = _updateIps(man, ips, stamp, istamp)
      #
      # Here we make auto-backup of application if there is a time
      #
      bstamp = _updateBackup(man, cfg, stamp, bstamp)
      #
      # This call switches between all non blocking asynchronous
      # functions (see @async macro). For example, it handles all
      # input connections for current server, switches between
      # organism Tasks and so on...
      #
      if _needYield(man) yield() end
    end

    true
  end

  #
  # Checks if active servers have bytes to read. It means, that we have to call
  # yield() for this reading.
  # @param man Manager data type
  # @return {Bool}
  #
  function _needYield(man::ManagerTypes.ManagerData)
    local i::Int
    local cons::ManagerTypes.Connections = man.cons
    local socks1::Array{Base.TCPSocket, 1} = cons.server.socks
    local socks2::Array{Base.TCPSocket, 1} = cons.fastServer.socks

    for i = 1:length(socks1)
      if nb_available(socks1[i]) > 0 return true end
    end
    if cons.streamInit
      for i = 1:length(socks2)
        if nb_available(socks2[i]) > 0 return true end
      end
    end

    false
  end
  #
  # Generates unique id by world position. This macro is
  # private insode Manager module
  # @param man Manager data type
  # @param {Helper.Point} pos Unique World position
  # @return {Int} Unique pos id
  #
  function _getPosId(man::ManagerTypes.ManagerData, pos::Helper.Point) pos.y * man.world.width + pos.x end
  #
  # Checks if specified position in a world is free. Other organism
  # or an energy block may be there at the moment.
  # @param pos Position we need to check
  # @return {Bool} true - free point, false - filled point
  #
  function _isFree(man::ManagerTypes.ManagerData, pos::Helper.Point)
    !haskey(man.positions, _getPosId(man, pos)) && World.getEnergy(man.world, pos) === UInt32(0)
  end
  #
  # Updates IPS (Iterations Per second) counter and stores it in config
  # @param man Manager data type
  # @param ips IPS
  # @param stamp Current UNIX time stamp value
  # @param istamp IPS last UNIX time stamp value
  # @return {Int, Int} new ips and current UNIX time stamp
  #
  function _updateIps(man::ManagerTypes.ManagerData, ips::Int, stamp::Int, istamp::Int)
    local ts::Int = stamp - istamp
    local socks::Array{Base.TCPSocket, 1}
    local dataIndex::UInt8
    local localIps::Int
    local i::Int
    # TODO: 5 seconds should be get from config
    if ts >= 30 #5
      localIps  = trunc(Int, ips / ts)
      dataIndex = UInt8(FastApi.API_UINT64)
      socks     = man.cons.fastServer.socks
      print("ips: ", localIps); quit()
      man.cfg.WORLD_IPS = localIps
      for i = 1:length(socks)
        if Helper.isopen(socks[i])
          Server.request(socks[i], dataIndex, localIps)
        end
      end
      return 0, stamp
    end

    ips + 1, istamp
  end
  #
  # Checks if it's a time to make application backup
  # @param man Manager data type
  # @param cfg Global configuration type
  # @param stamp Current UNIX timestamp
  # @param bstamp Backup last UNIX time stamp value
  #
  function _updateBackup(man::ManagerTypes.ManagerData, cfg::Config.ConfigData, stamp::Int, bstamp::Int)
    if stamp - bstamp > cfg.BACKUP_PERIOD
      if length(man.tasks) > 0 backup(man) end
      return stamp
    end

    bstamp
  end
end
