#
# Manages organisms and they world
# @singleton
# TODO:
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
      org  = _createOrganism()
      task = Task(eval(org.script.code))
      push!(_tasks, CreatureTask(task, org))
      #
      # initializes the organism with it's instance
      #
      obj = consume(task)
      push!(obj, org)
      consume(task)
    end
  end
  #
  # Creates new organism and binds event handlers to him. It also
  # finds free point in a world, where organism will start living.
  # @return {Organism.Creature}
  #
  function _createOrganism()
    organism = Organism.create(World.getFreePos())
    Event.on(organism.observer, "beforeclone", _onBeforeClone)
    Event.on(organism.observer, "getenergy", _onGetEnergy)
    organism
  end
  #
  # Handles "beforeclone" event. Finds free point for new organism
  # and returns these coordinates. If no free space, then returns false.
  # It checks four (4) places around current organism's position: up,
  # down, left and right.
  # @param creature Parent organism
  # @param retObj Special object for return value
  #
  function _onBeforeClone(creature::Organism.Creature, retObj::Organism.RetObj)
    retObj.ret = true
    pos = creature.pos
    pos.x += 1
    if World.getEnergy(_world, pos) === 0 retObj.ret = pos; return nothing end
    pos.x -= 2;
    if World.getEnergy(_world, pos) === 0 retObj.ret = pos; return nothing end
    pos.x += 1; pos.y -= 1
    if World.getEnergy(_world, pos) === 0 retObj.ret = pos; return nothing end
    pos.y += 2
    if World.getEnergy(_world, pos) === 0 retObj.ret = pos; return nothing end

    retObj.ret = false
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
  # All available organism's tasks
  #
  _tasks = CreatureTask[]
  #
  # Instance of the world
  #
  _world = World.create()
end