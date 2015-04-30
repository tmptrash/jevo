#
# Manages organisms and they world
# TODO: describe that manager is a mediator between all other objects
# TODO: like mutator, world, terminal and so on.
#
module Manager
  import Organism
  import World
  import Config
  import Helper
  import Event
  import Mutator
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
  # Describes an area, which is represented by World, Organisms in it,
  # Organisms related Tasks and the Manager. create() function returns
  # this type.
  #
  type Area
    #
    # All available organism's tasks
    #
    tasks::Array{CreatureTask}
    #
    # Instance of the world
    #
    world::World.Plane
    #
    # Positions map, which stores positions of all organisms. Is used
    # for fast access to the organism by it's coordinates. It's also 
    # used for checking collisions between organisms.
    #
    posMap::Dict{Uint, Organism.Creature}
  end

  #
  # Creates new manager instance
  # @return {Area}
  #
  function create()
    Area(CreatureTask[], World.create(), Dict{Uint, Organism.Creature}())
  end
  #
  # Runs everything
  # @param area Area for current CPU
  #
  function run(area::Area)
    _createTasks(area)
    times    = uint(0)
    decTimes = Config.organism["decreaseAfterTimes"]
    probs    = Config.mutator["addChange"]
    #
    # main loop
    #
    while true
      len   = length(area.tasks)
      times += 1
      for i = 1:len
        try
          consume(area.tasks[i].task)
          # TODO: think about exceptions in organisms. maybe log somewhere?
        end
      end

      if times === decTimes
        for i = 1:len
          org = area.tasks[i].organism
          org.energy -= 1
          World.setEnergy(area.world, org.pos, uint16(org.energy))
          Mutator.mutate(org.script, probs)
        end
        times = 0
      end
    end
  end

  #
  # Creates tasks and organisms according to Config. All tasks
  # will be in area.tasks field.
  #
  function _createTasks(area::Area)
    #
    # Inits available organisms by Tasks
    #
    for i = 1:Config.organism["startAmount"] _createTask(area) end
  end
  #
  # Creates one task and organism inside this task. Created
  # task will be added to area.tasks array. Position may be set
  # or random free position will be used.
  # @param pos Position|nothing Position of the organism
  # @return {CreatureTask}
  #
  function _createTask(area::Area, pos = nothing)
      org  = _createOrganism(area, pos)
      task = Task(eval(org.script.code))
      cr   = CreatureTask(task, org)
      push!(area.tasks, cr)
      #
      # initializes the organism with it's instance
      #
      obj = consume(task)
      push!(obj, org)
      consume(task)
      cr
  end
  #
  # Creates new organism and binds event handlers to him. It also
  # finds free point in a world, where organism will start living.
  # @param pos Optional. Position of organism.
  # @return {Organism.Creature}
  #
  function _createOrganism(area::Area, pos = nothing)
    pos      = pos === nothing ? World.getFreePos(area.world) : pos
    organism = Organism.create(pos)
    _moveOrganism(pos, organism)

    Event.on(organism.observer, "clone",     _onClone,     area)
    Event.on(organism.observer, "getenergy", _onGetEnergy, area)
    Event.on(organism.observer, "grableft",  _onGrabLeft,  area)
    Event.on(organism.observer, "grabright", _onGrabRight, area)
    Event.on(organism.observer, "grabup",    _onGrabUp,    area)
    Event.on(organism.observer, "grabdown",  _onGrabDown,  area)
    Event.on(organism.observer, "stepleft",  _onStepLeft,  area)
    Event.on(organism.observer, "stepright", _onStepRight, area)
    Event.on(organism.observer, "stepup",    _onStepUp,    area)
    Event.on(organism.observer, "stepdown",  _onStepDown,  area)

    organism
  end
  #
  # Moves organism to specified position. Updates organism's 
  # position and set new one into the area.posMap. Removes organism's
  # previous position from area.posMap.
  # @param pos New position
  # @param organism Organism to move
  #
  function _moveOrganism(area::Area, pos::Helper.Point, organism::Organism.Creature)
    delete!(area.posMap, _getOrganismId(organism.pos))
    area.posMap[_getOrganismId(pos)] = organism
    #
    # pos - new organism position
    # organism.pos - old organism position
    #
    World.setEnergy(area.world, organism.pos, uint16(0))
    World.setEnergy(area.world, pos, uint16(organism.energy))
    organism.pos = pos
  end
  #
  # Converts coodinates to the unique uint id
  # @return {Uint}
  #
  function _getOrganismId(area::Area, pos::Helper.Point)
    pos.y * area.world.width + pos.x
  end
  #
  # Handles "beforeclone" event. Finds free point for new organism
  # and returns these coordinates. If no free space, then returns false.
  # It checks four (4) places around current organism's position: up,
  # down, left and right.
  # @param creature Parent organism
  #
  function _onClone(area::Area, creature::Organism.Creature)
    #
    # First, we have to find free point near the organism
    #
    pos = World.getNearFreePos(area.world, creature.pos)
    if pos === false return nothing end
    #
    # Creates new organism and applies mutations to him.
    #
    crTask = _createTask(pos)
    for i = 1:Config.mutator["mutationsOnClone"]
      Mutator.mutate(crTask.organism.script, Config.mutator["addChange"])
    end
  end
  #
  # Returns an energy amount in specified point in a world.
  # @param creature Parent organism
  # @param pos Position to check
  # @param retObj Special object for return value
  #
  function _onGetEnergy(area::Area, creature::Organism.Creature, pos::Helper.Point, retObj::Organism.RetObj)
    retObj.ret = World.getEnergy(area.world, pos)
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
  # Handler of "stepleft" event. Checks a possibility to step left.
  # New position will be set to "retObj.pos" property.
  # @param creature Parent organism
  # @param retObj Special object for return value
  #
  function _onStepLeft(creature::Organism.Creature, retObj::Organism.RetObj)
    _onStep(creature, Helper.Point(creature.pos.x - 1, creature.pos.y), retObj)
  end
  #
  # Handler of "stepright" event. Checks a possibility to step right.
  # New position will be set to "retObj.pos" property.
  # @param creature Parent organism
  # @param retObj Special object for return value
  #
  function _onStepRight(creature::Organism.Creature, retObj::Organism.RetObj)
    _onStep(creature, Helper.Point(creature.pos.x + 1, creature.pos.y), retObj)
  end
  #
  # Handler of "stepup" event. Checks a possibility to step up.
  # New position will be set to "retObj.pos" property.
  # @param creature Parent organism
  # @param retObj Special object for return value
  #
  function _onStepUp(creature::Organism.Creature, retObj::Organism.RetObj)
    _onStep(creature, Helper.Point(creature.pos.x, creature.pos.y - 1), retObj)
  end
  #
  # Handler of "stepdown" event. Checks a possibility to step down.
  # New position will be set to "retObj.pos" property.
  # @param creature Parent organism
  # @param retObj Special object for return value
  #
  function _onStepDown(creature::Organism.Creature, retObj::Organism.RetObj)
    _onStep(creature, Helper.Point(creature.pos.x, creature.pos.y + 1), retObj)
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
  function _onGrab(area::Area, creature::Organism.Creature, amount::Uint, pos::Helper.Point, retObj::Organism.RetObj)
    retObj.ret = World.grabEnergy(area.world, pos, amount)
    id         = _getOrganismId(pos)
    #
    # If other organism at the position of the check, 
    # then grab energy from him
    #
    if haskey(area.posMap, id) area.posMap[id].energy -= retObj.ret end
  end
  #
  # Checks if specified position ("pos") has no energy and we may
  # move the organism there. If this position has an energy, then
  # the same position will be set to "retObj.pos".
  # @param creature Organism hwo grabs
  # @param pos Point where we should check the energy
  # @param retObj Special object for return value
  #
  function _onStep(area::Area, creature::Organism.Creature, pos::Helper.Point, retObj::Organism.RetObj)
    if World.getEnergy(area.world, pos) == 0
      retObj.pos = pos
      _moveOrganism(area, pos, creature)
    else
      retObj.pos = creature.pos 
    end
  end
end