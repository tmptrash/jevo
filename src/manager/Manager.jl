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
# TODO: add create method. It should returm ManagerData() type
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

  export run
  #
  # This is how we collect Manager module from it's parts(files)
  #
  include("ManagerOrganism.jl")
  include("ManagerRpc.jl")
  include("ManagerBackup.jl")
  include("ManagerParams.jl")
  include("ManagerStat.jl")
  #
  # Current Manager connection objects. They are: server and
  # all four clients. "frozen" field is used for storing "frozen"
  # organisms (which are transferring from current Manager to
  # another one by network). "streaming" flag means, that streaming
  # mode is on or off. Here streaming is a world dots streaming.
  #
  type Connections
    server    ::Server.ServerConnection
    fastServer::Server.ServerConnection
    left      ::Client.ClientConnection
    right     ::Client.ClientConnection
    up        ::Client.ClientConnection
    down      ::Client.ClientConnection
    frozen    ::Dict{UInt, Creature.Organism}
    streamInit::Bool
  end
  #
  # Manager's related type. Contains world, command line parameters,
  # organisms map and so on... If some fields will be changed, don't
  # forget to change them in recover() function.
  #
  type ManagerData
    #
    # Instance of the world
    #
    world::World.Plane
    #
    # Positions map, which stores positions of all organisms. Is used
    # for fast access to the organism by it's coordinates.
    #
    positions::Dict{Int, Creature.Organism}
    #
    # Map of organisms by id
    #
    organisms::Dict{UInt, Creature.Organism}
    #
    # All available organism's tasks
    #
    tasks::Array{ManagerTypes.OrganismTask, 1}
    #
    # Parameters passed through command line
    #
    params::Dict{ASCIIString, ASCIIString}
    #
    # Unique id of organism. It's increased every time, when new
    # organism will be created
    #
    organismId::UInt
    #
    # Total amount of organisms: alive + dead
    #
    totalOrganisms::UInt
    #
    # Organism with minimum amount of energy
    #
    minOrg::Creature.Organism
    #
    # Organism with maximum amount of energy
    #
    maxOrg::Creature.Organism
    #
    # Id of organism with minimum amount of energy
    #
    minId::UInt
    #
    # Id of organism with maximum amount of energy
    #
    maxId::UInt
    #
    # If true, then minimum terminal messages will be posted
    #
    quiet::Bool
  end
  #
  # Runs Manager instance, one world, server an so on... Blocking
  # function.
  # @param recover true if we have to recover from last backup
  # @return {Bool} run status
  #
  function run(recover::Bool = false)
    local counter::Int = 0
    local ips    ::Int = 0
    local stamp  ::Float64 = time()
    local bstamp ::Float64 = time()
    local sstamp ::Float64 = time()
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
      #
      # We have to wait while all clients are ready for streaming. This
      # is because the error in serializer. See issue for details:
      # https://github.com/JuliaLang/julia/issues/16746
      #
      if Manager._cons.streamInit::Bool yield(); continue end
      #
      # After all organisms die, we have to create next, new population
      #
      if length(Manager._data.tasks) < 1 createOrganisms() end
      #
      # This call runs all organism related tasks one by one
      #
      counter = _updateOrganisms(counter)
      #
      # We have to update IPS (Iterations Per Second) every second
      #
      ips, stamp = _updateIps(ips, stamp)
      #
      # Here we make auto-backup of application if there is a time
      #
      bstamp = _updateBackup(bstamp)
      #
      # Here we update statistics data
      #
      sstamp = _updateStat(sstamp)
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
  # @param {Helper.Point} pos Unique World position
  # @return {Int} Unique pos id
  #
  function _getPosId(pos::Helper.Point) pos.y * Manager._data.world.width + pos.x end
  #
  # Checks if specified position in a world is free. Other organism
  # or an energy block may be there at the moment.
  # @param pos Position we need to check
  # @return {Bool} true - free point, false - filled point
  #
  function _isFree(pos::Helper.Point)
    !haskey(Manager._data.positions, _getPosId(pos)) && World.getEnergy(Manager._data.world, pos) === UInt32(0)
  end
  #
  # Updates IPS (Iterations Per second) counter and stores it in config
  # @param ips IPS
  # @param stamp Current UNIX tame stamp value
  # @return {UInt, Float64} new ips and current UNIX time stamp
  #
  function _updateIps(ips::Int, stamp::Float64)
    local socks::Array{Base.TCPSocket, 1} = Manager._cons.fastServer.socks
    local ts::Float64 = time() - stamp
    local dataIndex::UInt8 = UInt8(FastApi.API_UINT64)
    local localIps::Int
    local i::Int

    if ts >= 5.0
      localIps = trunc(Int, ips / ts)
	  #print("ips: ", localIps); quit()
      Config.val(:WORLD_IPS, localIps)
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
  # @param stamp Current UNIX timestamp
  #
  function _updateBackup(stamp::Float64)
    if (time() - stamp) > Float64(Config.val(:BACKUP_PERIOD)) * 60.0
      if length(Manager._data.tasks) > 0 backup() end
      return time()
    end

    stamp
  end
  #
  # Manager related data. See ManagerData type for details. It's global, because
  # Manager is a singleton.
  # TODO: this type should be stored outside of this module in AppManager.jl
  global _data = ManagerData(
    World.create(),                                  # world
    Dict{Int, Creature.Organism}(),                  # positions
    Dict{UInt, Creature.Organism}(),                 # organisms
    ManagerTypes.OrganismTask[],                     # tasks
    CommandLine.create(),                            # params
    UInt(2),                                         # organismId
    UInt(0),                                         # totalOrganisms
    Creature.create(UInt(0), Helper.Point(1,1)),     # minOrg
    Creature.create(UInt(1), Helper.Point(2,1)),     # maxOrg
    UInt(0),                                         # minId
    UInt(0),                                         # maxId
    CommandLine.has(CommandLine.create(), ARG_QUIET) # quiet
  )
  #
  # Current Manager/instance all available connections
  #
  global _cons = _createConnections()
end
