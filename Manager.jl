#
# Manages organisms and they world
# @singleton
# TODO: describe that manager is a mediator between all other objects
# TODO: like mutator, world, terminal and so on.
#
module Manager
  import Organism
  import World
  import Config
  import Helper
  import Event
  # TODO: remove this
  using Debug
  
  #
  # One task related to one organism
  #
  type CreatureTask
    #
    # Task object. With it we may use green
    #
    task::Task
    #
    # One organism
    #
    organism::Organism.Creature
  end
  #
  # Runs everything
  #
  @debug function run()
  @bp
    _createTasks()
    #
    # main loop
    #
    times    = 0
    decTimes = Config.organism["decreaseAfterTimes"]
    probs    = Config.mutator["addChange"]
    while true
      len   = length(_tasks)
      times += 1
      for i = 1:len
        try
          consume(_tasks[i])
        end
        if times === decTimes
          _tasks[i].organism.energy -= 1
          Mutator.mutate(_tasks[i].organism.script, probs)
          times = 0
        end
      end
    end
  end

  #
  # Creates tasks and organisms according to Config. All tasks
  # will be in _tasks field.
  #
  @debug function _createTasks()
  @bp
    #
    # Inits available organisms by Tasks
    #
    for i = 1:Config.organism["startAmount"]
      _createTask()
    end
  end
  #
  # Creates one task and organism inside this task. Created
  # task will be added to _tasks array.
  #
  function _createTask()
      org  = _createOrganism()
      task = Task(eval(org.script.code))
      push!(_tasks, CreatureTask(task, org))
      #
      # initializes the organism with it's instance
      #
      obj = consume(task)
      push!(obj, org)
      consume(task)
      task
  end
  #
  # Creates new organism and binds event handlers to him. It also
  # finds free point in a world, where organism will start living.
  # @param pos Optional. Position of organism.
  # @return {Organism.Creature}
  #
  function _createOrganism(pos = nothing)
    pos      = pos === nothing ? World.getFreePos() : pos
    organism = Organism.create(pos)
    _moveOrganism(pos, organism)

    Event.on(organism.observer, "clone", _onClone)
    Event.on(organism.observer, "getenergy", _onGetEnergy)
    Event.on(organism.observer, "grableft", _onGrabLeft)
    Event.on(organism.observer, "grabright", _onGrabRight)
    Event.on(organism.observer, "grabup", _onGrabUp)
    Event.on(organism.observer, "grabdown", _onGrabDown)

    organism
  end
  #
  # Moves organism to specified position. Updates organism's 
  # position and set new one into the _posMap. Removes organism's
  # previous position from _posMap.
  # @param pos New position
  # @param organism Organism to move
  #
  function _moveOrganism(pos::Helper.Point, organism::Organism.Creature)
    delete!(_posMap, organism.pos.y * _world.width + organism.pos.x)
    _posMap[pos.y * _world.width + pos.x] = organism
    organism.pos = pos
  end

  #
  # Handles "beforeclone" event. Finds free point for new organism
  # and returns these coordinates. If no free space, then returns false.
  # It checks four (4) places around current organism's position: up,
  # down, left and right.
  # @param creature Parent organism
  #
  function _onClone(creature::Organism.Creature)
    #
    # First, we have to find free point near the organism
    #
    pos = World.getNearPos(creature.pos)
    if pos === false return nothing end
    #
    # Creates new organism and applies mutations to him.
    #
    task = _createTask()
    for i = 1:Config.mutator["mutationsOnClone"]
      Mutator.mutate(task.organism.script, Config.mutator["addDelChange"])
    end
  end
  #
  # Returns an energy amount in specified point in a world.
  # @param creature Parent organism
  # @param pos Position to check
  # @param retObj Special object for return value
  #
  function _onGetEnergy(creature::Organism.Creature, pos::Helper.Point, retObj::Organism.RetObj)
    retObj.ret = World.getEnergy(_world, pos)
  end
  #
  # Grabs energy on the left side of the organism
  # @param creature Parent organism
  # @param amount Amount of energy we want to grab
  # @param retObj Special object for return value
  #
  function _onGrabLeft(creature::Organism.Creature, amount::Uint, retObj::Organism.RetObj)
    _onGrab(creature, amount, Helper.Point(creature.pos.x - 1, creature.pos.y), retObj)
  end
  #
  # Grabs energy on the right side of the organism
  # @param creature Parent organism
  # @param amount Amount of energy we want to grab
  # @param retObj Special object for return value
  #
  function _onGrabRight(creature::Organism.Creature, amount::Uint, retObj::Organism.RetObj)
    _onGrab(creature, amount, Helper.Point(creature.pos.x + 1, creature.pos.y), retObj)
  end
  #
  # Grabs energy on the up side of the organism
  # @param creature Parent organism
  # @param amount Amount of energy we want to grab
  # @param retObj Special object for return value
  #
  function _onGrabUp(creature::Organism.Creature, amount::Uint, retObj::Organism.RetObj)
    _onGrab(creature, amount, Helper.Point(creature.pos.x, creature.pos.y - 1), retObj)
  end
  #
  # Grabs energy on the down side of the organism
  # @param creature Parent organism
  # @param amount Amount of energy we want to grab
  # @param retObj Special object for return value
  #
  function _onGrabDown(creature::Organism.Creature, amount::Uint, retObj::Organism.RetObj)
    _onGrab(creature, amount, Helper.Point(creature.pos.x, creature.pos.y + 1), retObj)
  end
  #
  # Grabs energy on specified point. It grabs the energy and 
  # checks if other organism was at that position. If so, then 
  # it decrease an energy of this other organism.
  # @param creature Organism hwo grabs
  # @param amount Amount of energy he wants to grab
  # @param pos Point where we should check the energy
  # @param retObj Special object for return value
  #
  function _onGrab(creature::Organism.Creature, amount::Uint, pos::Helper.Point, retObj::Organism.RetObj)
    retObj.ret = World.grabEnergy(_world, pos, amount)
    id         = pos.y * _world.width + pos.x
    #
    # If other organism at the position of the check, 
    # then grab energy from him
    #
    if haskey(_posMap, id) _posMap[id].energy -= retObj.ret end
  end

  #
  # All available organism's tasks
  #
  _tasks = CreatureTask[]
  #
  # Instance of the world
  #
  _world = World.create()
  #
  # Positions map, which stores positions of all organisms. Is used
  # for fast access to the organism by it's coordinates.
  #
  _posMap = Dict{Uint, Organism.Creature}()
end