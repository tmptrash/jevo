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
# TODO: add create method. It should returm Data() type
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
  import Backup

  using Config
  using Debug

  export run
  export recover
  export backup
  export RECOVER_ARG
  #
  # This is how we collect Manager module from it's parts
  #
  include("ManagerRpc.jl")
  include("ManagerOrganism.jl")
  #
  # This manager is also a server for all other remote managers. These
  # remote managers are clients for current and may use "Client" module
  # to send commands and obtain results. So, this port will be used for
  # current manager(server) for listening clients.
  #
  const PARAM_SERVER_PORT = "serverPort"
  #
  # Name of the command line argument, which tells the application
  # to recover itself from last backup.
  #
  const RECOVER_ARG = "recover"
  #
  # Manager's related type. Contains world, command line parameters,
  # organisms map and so on... If some fields will be changed, don't
  # forget to change them in recover() function.
  #
  type Data
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
  end
  #
  # This function is used for recovering a manager's data from 
  # backup file. It means that an application was crashed before 
  # and now we have to recover it with last correct backup. Works
  # in pair with backup() function.
  #
  function recover()
    local data::Data = Backup.load()
    local i::Int
    local t::OrganismTask

    for i = 1:length(data.tasks)
      t = data.tasks[i]
      t.task = Task(Creature.born(t.organism, t.id))
    end

    _data.world      = data.world
    _data.positions  = data.positions
    _data.organisms  = data.organisms
    _data.tasks      = data.tasks
    _data.params     = data.params
    _data.organismId = data.organismId
  end
  #
  # Makes a dump of Manager data and saves it into the file.
  # Works in pair with recover().
  #
  function backup()
    local tasks::Array{OrganismTask, 1} = deepcopy(_data.tasks)
    local task::Task = Task(()->0)
    local i::Int
    #
    # This is a small trick. We have to set all tasks in waiting
    # state for serializing into the file. Julia can't save active
    # tasks.
    #
    for i = 1:length(_data.tasks) _data.tasks[i].task = task end
    Backup.save(_data)
    for i = 1:length(tasks) _data.tasks[i].task = tasks[i].task end
  end
  #
  # Runs Manager instance, one world, server an so on... Blocking 
  # function.
  #
  function run()
    local eCounter::Int = 0
    local mCounter::Int = 0
    local ips     ::Int = 0
    local stamp   ::Float64 = time()
    local server  ::Server.ServerConnection = _createServer()
    local params  ::Dict{ASCIIString, ASCIIString} = CommandLine.create()

    #
    # This server is listening for all other managers and remote
    # terminal. It runs obtained commands and send answers back.
    # In other words, it works like RPC runner...
    #
    Server.run(server)
    Helper.info("Server has run")
    #
    # If user set up some amount of organisms they will be created
    # in this call. If we are in recover mode, then this step should
    # be skipped.
    #
    if !CommandLine.has(params, RECOVER_ARG) createOrganisms() end
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
      # This call switches between all non blocking asynchronous
      # functions (see @async macro). For example, it handles all
      # input connections for current server.
      #
      yield()
    end
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
      stamp = time()
      ips   = 0
    end
    ips + 1, stamp
  end
  #
  # Manager related data. See Data type for details. It's global, because
  # Manager is a singleton.
  # TODO: this type should be stored outside of this module in AppManager.jl
  global _data = Data(
    World.create(),
    Dict{Int, Creature.Organism}(),
    Dict{UInt, Creature.Organism}(),
    OrganismTask[],
    CommandLine.create(),
    UInt(0)
  )
end