#
# Manages organisms and they world
#
# @singleton
# @author DeadbraiN
#
# TODO: describe included files and how to split Manager on files.
# TODO:   - Manager may call every function from any file
# TODO:   - File may call every function except other files
# TOSO:   - If file calls Manager function it hould add Manager. before calling
# TODO: describe that manager is a mediator between all other objects
# TODO: like world, terminal and so on.
# TODO: add support of serverPort cmd line argument
# TODO: add remote functions for changing period and probs
# TODO: add command line parameter for creating default config file
# TODO: add create method. It should returm ManagerData() type
#
module Manager
  import Creature
  import Mutator
  import World
  import Helper
  import Event
  import Server
  import Connection
  import CommandLine
  import RpcApi
  import Config

  export run
  #
  # This is how we collect Manager module from it's parts(files)
  #
  include("ManagerRpc.jl")
  include("ManagerOrganism.jl")
  include("ManagerBackup.jl")
  #
  # This manager is also a server for all other remote managers. These
  # remote managers are clients for current and may use "Client" module
  # to send commands and obtain results. So, this command line property
  # will be used for current manager(server) for listening clients. For
  # this you have to run Manager like this:
  # >julia AppManager.jl serverPort=2000
  #
  const ARG_SERVER_PORT = "serverPort"
  #
  # In this mode no terminal output will be produced
  #
  const ARG_QUIET = "quiet"
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
    # TODO: rename to organisms
    organisms::Dict{UInt, Creature.Organism}
    #
    # All available organism's tasks
    #
    tasks::Array{OrganismTask}
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
    local eCounter::Int = 0
    local mCounter::Int = 0
    local ips     ::Int = 0
    local stamp   ::Float64 = time()
    local bstamp  ::Float64 = time()
    local server  ::Server.ServerConnection = _createServer()
    local params  ::Dict{ASCIIString, ASCIIString} = CommandLine.create()
    #
    # This server is listening for all other managers and remote
    # terminal. It runs obtained commands and send answers back.
    # In other words, it works like RPC runner...
    #
    Server.run(server)
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
      # This call runs all organism related tasks one by one
      #
      eCounter, mCounter = _updateOrganisms(eCounter, mCounter)
      #
      # We have to update IPS (Iterations Per Second) every second
      #
      ips, stamp = _updateIps(ips, stamp)
      #
      # Here we make auto-backup of application if there is a time
      #
      bstamp = _updateBackup(bstamp)
      #
      # This call switches between all non blocking asynchronous
      # functions (see @async macro). For example, it handles all
      # input connections for current server, switches between
      # organisms Tasks and so on...
      #
      yield()
    end

    true
  end
  #
  # Shows organism related message
  # @param id Unique orgainsm identifier
  # @param msg Organism's message
  #
  function msg(id::UInt, msg::ASCIIString)
    if !Manager._data.quiet Helper.info(string("org-", id, " ", msg)) end
  end

  #
  # Updates IPS (Iterations Per second) counter and stores it in config
  # @param ips IPS
  # @param stamp Current UNIX tame stamp value
  # @return {UInt, Float64} new ips and current UNIX time stamp
  #
  function _updateIps(ips::Int, stamp::Float64)
    local ts::Float64 = time() - stamp

    if ts >= 1.0
      Config.val(:WORLD_IPS, trunc(Int, ips / ts))
      return 0, time()
    end

    ips + 1, stamp
  end
  #
  # Checks if it's a time to make application backup
  # @param stamp Current UNIX timestamp
  #
  function _updateBackup(stamp::Float64)
    if (time() - stamp) > Config.val(:BACKUP_PERIOD) * 60.0
      backup()
      Helper.info(string("Backup has created: ", Backup.lastFile()))
      return time()
    end

    stamp
  end
  #
  # Manager related data. See ManagerData type for details. It's global, because
  # Manager is a singleton.
  # TODO: this type should be stored outside of this module in AppManager.jl
  global _data = ManagerData(
    World.create(),
    Dict{Int, Creature.Organism}(),
    Dict{UInt, Creature.Organism}(),
    OrganismTask[],
    CommandLine.create(),
    UInt(0),
    UInt(0),
    Creature.create(), # temporary min organism
    Creature.create(), # temporary max organism
    UInt(0),
    UInt(0),
    CommandLine.has(CommandLine.create(), ARG_QUIET)
  )
end