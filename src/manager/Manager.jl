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

    ManagerTypes.ManagerData(
      cfg,                                                                           # cfg
      World.create(Config.val(cfg, :WORLD_WIDTH), Config.val(cfg, :WORLD_HEIGHT)),   # world
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
      _createConnections(),                                                          # cons
      function(man::ManagerTypes.ManagerData, pos::Helper.Point, color::UInt32) end  # dotCallback
    )
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
    local stamp  ::Float64 = time()
    local bstamp ::Float64 = time()
    #
    # This server is listening for all other managers and remote
    # terminal. It runs obtained commands and send answers back.
    # In other words, it works like RPC runner... Fast server is
    # listening for "fast" clients and works in "fast" mode.
    #
    Server.run(_cons.server)
    # TODO: possibly, we don't need to run this server due to performance issue
    Server.run(_cons.fastServer)
    #
    # If user set up some amount of organisms they will be created
    # in this call. If we are in recover mode, then this step should
    # be skipped.
    #
    if recover === false
      setRandomEnergy()
      createOrganisms()
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
      if man.cons.streamInit::Bool yield(); continue end
      #
      # After all organisms die, we have to create next, new population
      #
      if length(man.tasks) < 1 createOrganisms() end
      #
      # This call runs all organism related tasks one by one
      #
      counter = _updateOrganisms(man, counter)
      #
      # We have to update IPS (Iterations Per Second) every second
      #
      ips, stamp = _updateIps(man, ips, stamp)
      #
      # Here we make auto-backup of application if there is a time
      #
      bstamp = _updateBackup(man, bstamp)
      #
      # This call switches between all non blocking asynchronous
      # functions (see @async macro). For example, it handles all
      # input connections for current server, switches between
      # organism Tasks and so on...
      # TODO: this line is slow. we have to use it only if needed!
      # TODO: if there are no connections we have to skip it
      yield()
    end

    true
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
  # @param stamp Current UNIX tame stamp value
  # @return {UInt, Float64} new ips and current UNIX time stamp
  #
  function _updateIps(man::ManagerTypes.ManagerData, ips::Int, stamp::Float64)
    local socks::Array{Base.TCPSocket, 1} = man.cons.fastServer.socks
    local ts::Float64 = time() - stamp
    local dataIndex::UInt8 = UInt8(FastApi.API_UINT64)
    local localIps::Int
    local i::Int

    if ts >= 40.0 #5.0
      localIps = trunc(Int, ips / ts)
      print("ips: ", localIps)
      Config.val(man.cfg, :WORLD_IPS, localIps)
      for i = 1:length(socks)
        if Helper.isopen(socks[i])
          Server.request(socks[i], dataIndex, localIps)
        end
      end
      return 0, time()
    end

    ips + 1, stamp
  end
  #
  # Checks if it's a time to make application backup
  # @param man Manager data type
  # @param stamp Current UNIX timestamp
  #
  function _updateBackup(man::ManagerTypes.ManagerData, stamp::Float64)
    if (time() - stamp) > Float64(Config.val(man.cfg, :BACKUP_PERIOD)) * 60.0
      if length(man.tasks) > 0 backup(man) end
      return time()
    end

    stamp
  end
end
