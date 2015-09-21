#
# Manages organisms and they world
# @singleton
# TODO: describe that manager is a mediator between all other objects
# TODO: like mutator, world, terminal and so on.
# TODO: add support of serverPort cmd line argument
# TODO: add remote functions for changing period and probs
#
module Manager
  import Creature
  import World
  import Config
  import Helper
  import Event
  import Mutator
  import Server
  import Connection
  import CommandLine
  # TODO: remove this
  using Debug
  #
  # This manager is also a server for all other remote managers. These
  # remote managers are clients for current and may use "Client" module
  # to send commands and obtain results. So, this port will be used for
  # current manager(server) for listening clients.
  #
  const PARAM_SERVER_PORT = "serverPort"
  
  #
  # One task related to one organism
  #
  type OrganismTask
    #
    # Task object. With it we may use green
    #
    task::Task
    #
    # One organism
    #
    organism::Creature.Organism
  end

  #
  # Runs everything. Blocking function.
  #
  @debug function run()
  @bp
    counter  = uint(0)
    period   = Config.organism["decreaseAfterTimes"]
    probs    = Config.mutator["addChange"]
    server   = _createServer()

    Server.run(server)
    #
    # This is main infinite loop. It manages input connections
    # and organism's tasks switching.
    #
    while true
      #
      # This call runs all organism related tasks one by one
      #
      updateOrganisms(counter, period, probs)
      #
      # This call switches between all non blocking asynchronous
      # functions (see @async macro). For example, it handles all
      # input connections for current server.
      #
      yield()
    end
  end
  #
  # Updates organisms existance. We have to call this function to
  # update organisms life in memory world...
  #
  function updateOrganisms(counter::Uint, period::Uint, probs::Array{Int, 1})
      #
      # This block runs one iteration for all available organisms
      #
      len      = length(_tasks)
      counter += 1
      for i = 1:len
        try
          consume(_tasks[i].task)
          # TODO: think about exceptions in organisms. maybe log somewhere?
        end
      end
      #
      # This block decreases energy from organisms, because they spend it while leaving
      #
      if counter == period
        for i = 1:len
          org = _tasks[i].organism
          org.energy -= uint(1)
          _moveOrganism(org.pos, org)
          Mutator.mutate(org.script, probs)
        end
        counter = uint(0)
      end

      counter
  end

  #
  # Creates tasks and organisms according to Config. All tasks
  # will be in _tasks field.
  #
  function createOrganisms()
    #
    # Inits available organisms by Tasks
    #
    for i = 1:Config.organism["startAmount"]
      createTask()
    end
  end
  #
  # Creates one task and organism inside this task. Created
  # task will be added to _tasks array. Position may be set
  # or random free position will be used.
  # @param pos Position|nothing Position of the organism
  # @return {OrganismTask}
  #
  function createOrganism(pos = nothing)
      org  = _createOrganism(pos)
      task = Task(eval(org.script.code))
      cr   = OrganismTask(task, org)
      push!(_tasks, cr)
      #
      # initializes the organism with it's instance
      #
      obj = consume(task)
      push!(obj, org)
      consume(task)
      cr
  end
  #
  # Creates server and returns it's ServerConnection type. It 
  # uses porn number provided by "serverPort" command line
  # argument or default one from Config module.
  # @return Connection object
  #
  function _createServer()
    port       = CommandLine.value(_params, PARAM_SERVER_PORT)
    connection = Server.create(ip"127.0.0.1", port == "" ? Config.connection["serverPort"] : int(port))
    Event.on(connection.observer, "command", _onRemoteCommand)
    connection
  end
  #
  # Creates new organism and binds event handlers to him. It also
  # finds free point in a world, where organism will start living.
  # @param pos Optional. Position of organism.
  # @return {Creature.Organism}
  #
  function _createOrganism(pos = nothing)
    pos      = pos == nothing ? World.getFreePos(_world) : pos
    organism = Creature.create(pos)
    _moveOrganism(pos, organism)

    Event.on(organism.observer, "getenergy", _onGetEnergy)
    Event.on(organism.observer, "grableft",  _onGrabLeft )
    Event.on(organism.observer, "grabright", _onGrabRight)
    Event.on(organism.observer, "grabup",    _onGrabUp   )
    Event.on(organism.observer, "grabdown",  _onGrabDown )
    Event.on(organism.observer, "stepleft",  _onStepLeft )
    Event.on(organism.observer, "stepright", _onStepRight)
    Event.on(organism.observer, "stepup",    _onStepUp   )
    Event.on(organism.observer, "stepdown",  _onStepDown )
    Event.on(organism.observer, "clone",     _onClone    )

    organism
  end
  #
  # Moves organism to specified position. Updates organism's 
  # position and set new one into the _posMap. Removes organism's
  # previous position from _posMap.
  # @param pos New position
  # @param organism Organism to move
  #
  function _moveOrganism(pos::Helper.Point, organism::Creature.Organism)
    delete!(_posMap, _getOrganismId(organism.pos))
    _posMap[_getOrganismId(pos)] = organism
    #
    # pos - new organism position
    # organism.pos - old organism position
    #
    World.setEnergy(_world, organism.pos, uint16(0))
    World.setEnergy(_world, pos, uint16(organism.energy))
    organism.pos = pos
  end
  #
  # Converts coodinates to the unique uint id
  # @return {Uint}
  #
  function _getOrganismId(pos::Helper.Point)
    pos.y * _world.width + pos.x
  end
  #
  # Handler for commands obtained from all connected clients
  #
  function _onRemoteCommand(cmd::Connection.Command, ans::Connection.Answer)
    if haskey(_api, cmd.cmd)
      ans.data = cmd.cmd()
    else
      ans.data
    end
  end
  #
  # Handles "beforeclone" event. Finds free point for new organism
  # and returns these coordinates. If no free space, then returns false.
  # It checks four (4) places around current organism's position: up,
  # down, left and right.
  # @param organism Parent organism
  #
  function _onClone(organism::Creature.Organism)
    #
    # First, we have to find free point near the organism
    #
    pos = World.getNearFreePos(_world, organism.pos)
    if pos == false return nothing end
    #
    # Creates new organism and applies mutations to him.
    #
    crTask = createOrganism(pos)
    for i = 1:Config.mutator["mutationsOnClone"]
      Mutator.mutate(crTask.organism.script, Config.mutator["addChange"])
    end
  end
  #
  # Returns an energy amount in specified point in a world.
  # @param organism Parent organism
  # @param pos Position to check
  # @param retObj Special object for return value
  #
  function _onGetEnergy(organism::Creature.Organism, pos::Helper.Point, retObj::Creature.RetObj)
    retObj.ret = World.getEnergy(_world, pos)
  end
  #
  # Grabs energy on the left side of the organism
  # @param organism Parent organism
  # @param amount Amount of energy we want to grab
  # @param retObj Special object for return value
  #
  function _onGrabLeft(organism::Creature.Organism, amount::Uint, retObj::Creature.RetObj)
    _onGrab(organism, amount, Helper.Point(organism.pos.x - 1, organism.pos.y), retObj)
  end
  #
  # Grabs energy on the right side of the organism
  # @param organism Parent organism
  # @param amount Amount of energy we want to grab
  # @param retObj Special object for return value
  #
  function _onGrabRight(organism::Creature.Organism, amount::Uint, retObj::Creature.RetObj)
    _onGrab(organism, amount, Helper.Point(organism.pos.x + 1, organism.pos.y), retObj)
  end
  #
  # Grabs energy on the up side of the organism
  # @param organism Parent organism
  # @param amount Amount of energy we want to grab
  # @param retObj Special object for return value
  #
  function _onGrabUp(organism::Creature.Organism, amount::Uint, retObj::Creature.RetObj)
    _onGrab(organism, amount, Helper.Point(organism.pos.x, organism.pos.y - 1), retObj)
  end
  #
  # Grabs energy on the down side of the organism
  # @param organism Parent organism
  # @param amount Amount of energy we want to grab
  # @param retObj Special object for return value
  #
  function _onGrabDown(organism::Creature.Organism, amount::Uint, retObj::Creature.RetObj)
    _onGrab(organism, amount, Helper.Point(organism.pos.x, organism.pos.y + 1), retObj)
  end
  #
  # Handler of "stepleft" event. Checks a possibility to step left.
  # New position will be set to "retObj.pos" property.
  # @param organism Parent organism
  # @param retObj Special object for return value
  #
  function _onStepLeft(organism::Creature.Organism, retObj::Creature.RetObj)
    _onStep(organism, Helper.Point(organism.pos.x - 1, organism.pos.y), retObj)
  end
  #
  # Handler of "stepright" event. Checks a possibility to step right.
  # New position will be set to "retObj.pos" property.
  # @param organism Parent organism
  # @param retObj Special object for return value
  #
  function _onStepRight(organism::Creature.Organism, retObj::Creature.RetObj)
    _onStep(organism, Helper.Point(organism.pos.x + 1, organism.pos.y), retObj)
  end
  #
  # Handler of "stepup" event. Checks a possibility to step up.
  # New position will be set to "retObj.pos" property.
  # @param organism Parent organism
  # @param retObj Special object for return value
  #
  function _onStepUp(organism::Creature.Organism, retObj::Creature.RetObj)
    _onStep(organism, Helper.Point(organism.pos.x, organism.pos.y - 1), retObj)
  end
  #
  # Handler of "stepdown" event. Checks a possibility to step down.
  # New position will be set to "retObj.pos" property.
  # @param organism Parent organism
  # @param retObj Special object for return value
  #
  function _onStepDown(organism::Creature.Organism, retObj::Creature.RetObj)
    _onStep(organism, Helper.Point(organism.pos.x, organism.pos.y + 1), retObj)
  end
  #
  # Grabs energy on specified point. It grabs the energy and 
  # checks if other organism was at that position. If so, then 
  # it decrease an energy of this other organism.
  # @param organism Organism who grabs
  # @param amount Amount of energy he wants to grab
  # @param pos Point where we should check the energy
  # @param retObj Special object for return value
  #
  function _onGrab(organism::Creature.Organism, amount::Uint, pos::Helper.Point, retObj::Creature.RetObj)
    retObj.ret = World.grabEnergy(_world, pos, amount)
    id         = _getOrganismId(pos)
    #
    # If other organism at the position of the check, 
    # then grab energy from him
    #
    if haskey(_posMap, id) _posMap[id].energy -= retObj.ret end

    retObj.ret
  end
  #
  # Checks if specified position ("pos") has no energy and we may
  # move the organism there. If this position has an energy, then
  # the same position will be set to "retObj.pos".
  # @param organism Organism hwo grabs
  # @param pos Point where we should check the energy
  # @param retObj Special object for return value
  #
  function _onStep(organism::Creature.Organism, pos::Helper.Point, retObj::Creature.RetObj)
    if World.getEnergy(_world, pos) == 0
      retObj.pos = pos
      _moveOrganism(pos, organism)
    else
      retObj.pos = organism.pos 
    end
  end

  # TODO: All these three fields should be assembled in one type Data
  # TODO: We don't need to set them as statics. I think it's quite possible to use
  # TODO: this module for different objects (instances)
  #
  # All available organism's tasks
  #
  _tasks = OrganismTask[]
  #
  # Instance of the world
  #
  _world = World.create()
  #
  # Positions map, which stores positions of all organisms. Is used
  # for fast access to the organism by it's coordinates.
  #
  _posMap = Dict{Uint, Creature.Organism}()
  #
  # An API for remove clients. This manager will be a server for them.
  # Only these functions may be called by clients. For calling them,
  # you have to use "Client" module.
  #
  _api = [createOrganisms, createOrganism]
  #
  # Parameters passed through command line
  #
  _params = CommandLine.parse()
end