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
      function() end,                                                                # dotCallback
      function() end,                                                                # moveCallback
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
    local counter  ::Int = 1 # must be started from 1!
    local ips      ::Int = 0
    local istamp   ::Float64 = time()
    local bstamp   ::Float64 = istamp
    local ystamp   ::Float64 = istamp
    local cons     ::ManagerTypes.Connections = man.cons
    local tasks    ::Array{ManagerTypes.OrganismTask, 1} = man.tasks
    local cfg      ::Config.ConfigData = man.cfg
    local needYield::Bool = false

    try
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
      #for i=1:1000 # TODO: use macroses here instead of comments
        #
        # We have to wait while all clients are ready for streaming. This
        # is because the error in serializer. See issue for details:
        # https://github.com/JuliaLang/julia/issues/16746
        #
        if cons.streamInit yield(); continue end
        #
        # This is global time stamp in seconds
        #
        stamp = time()
        #
        # This call runs all organism related tasks one by one
        #
        counter = _updateOrganisms(man, counter, needYield)
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
        # input connections for current server. But we don't need to
        # call yield() every time, because it eats CPU cicles. We
        # have to wait some period and call yield() to check if
        # sockets have data.
        # TODO: this code may be optimized. We already call yield()
        # TODO: in _onDot() handler. Second idea, that we have to use
        # TODO: yieldto(), because we know all network related tasks
        # TODO: created by @async() macro.
        ystamp, needYield = _updateTasks(man, stamp, ystamp, needYield)
      end
    catch e
      Helper.error("Manager.run(): $e")
      showerror(STDOUT, e, catch_backtrace())
      return false
    end

    true
  end
  #
  # This is small hack. It stops the task immediately. We
  # have to do this, because task is a memory leak if we don't
  # stop (interrupt) it. This method only marks the task as
  # "deleted". Real deletion will be provided in _updateOrganismsEnergy().
  # @param task Task
  #
  function stopTask(task::Task)
    #try Base.throwto(task, InterruptException()) end
    #task.state = :failed
    #
    # This is how we stop the task. Stop means change it state
    # to :done by exit from main while loop. See Creature.born()
    # for details.
    #
    yieldto(task, true)
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
  # TODO: this method is very slow!!!
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
  function _updateIps(man::ManagerTypes.ManagerData, ips::Int, stamp::Float64, istamp::Float64)
    local ts::Float64 = stamp - istamp
    local sock::Base.TCPSocket
    local dataIndex::UInt8
    local localIps::Int
    local i::Int
    # TODO: 5.0 seconds should be get from config
    if ts >= 5.0
      localIps  = trunc(Int, ips / ts)
      dataIndex = UInt8(FastApi.API_UINT64)
      #print(" ", localIps, ", "); #quit()
      man.cfg.WORLD_IPS = localIps
      @inbounds for sock in man.cons.fastServer.socks
        if Helper.isopen(sock)
          Server.request(sock, dataIndex, localIps)
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
  function _updateBackup(man::ManagerTypes.ManagerData, cfg::Config.ConfigData, stamp::Float64, bstamp::Float64)
    if stamp - bstamp >= cfg.BACKUP_PERIOD
      if length(man.tasks) > 0 backup(man) end
      return stamp
    end

    bstamp
  end
  # TODO: describe yield() call logic
  # Checks if active servers have bytes to read. It means, that we have to call
  # yield() for this reading. yield() function will be called in organisms
  # loop in ManagerOrganism.jl file.
  # @param man Manager data type
  # @param stamp Current UNIX time stamp
  # @param ystamp yield last UNIX time stamp
  # @param needYield Flag if we need for yield() call
  # @return {(Float64, Bool)}
  #
  function _updateTasks(man::ManagerTypes.ManagerData, stamp::Float64, ystamp::Float64, needYield::Bool)
    if stamp - ystamp >= man.cfg.CONNECTION_TASKS_CHECK_PERIOD
      yield()
      # TODO: potential problem here. this list of sockets may be expanded
      # TODO: for example in many managers mode
      return stamp, (length(man.cons.server.socks) > 0 || man.cons.streamInit)
    end

    ystamp, needYield
  end
  # # TODO: do i need this?
  # # Checks id data in sockets available for reading
  # # @param man Manager data type
  # # @return {Bool}
  # #
  # function _dataAvailable(man::ManagerTypes.ManagerData)
  #   local cons::ManagerTypes.Connections = man.cons
  #   local sock::Base.TCPSocket
  #
  #   @inbounds for sock in cons.server.socks
  #     if nb_available(sock) > 0 return true end
  #   end
  #   if cons.streamInit
  #     @inbounds for sock in cons.fastServer.socks
  #       if nb_available(sock) > 0 return true end
  #     end
  #   end
  #
  #   false
  # end
end
