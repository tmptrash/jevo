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
  # Updates organisms existance. We have to call this function to
  # update organisms life in memory world...
  #
  function _updateOrganisms(counter::Uint)
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
      if counter == Manager._options.period
        for i = 1:len
          org = _tasks[i].organism
          org.energy -= uint(1)
          _moveOrganism(org.pos, org)
          Mutator.mutate(org.script, Manager._options.probs)
        end
        counter = uint(0)
      end

      counter
  end
  #
  # Creates new organism and binds event handlers to him. It also
  # finds free point in a world, where organism will start living.
  # @param pos Optional. Position of organism.
  # @return {OrganismTask}
  #
  @debug function _createOrganism(pos = nothing)
  @bp
    pos  = pos == nothing ? World.getFreePos(Manager._world) : pos
    org  = Creature.create(pos)
    task = Task(eval(org.script.code))

    Event.on(org.observer, "getenergy", _onGetEnergy)
    Event.on(org.observer, "grableft",  _onGrabLeft )
    Event.on(org.observer, "grabright", _onGrabRight)
    Event.on(org.observer, "grabup",    _onGrabUp   )
    Event.on(org.observer, "grabdown",  _onGrabDown )
    Event.on(org.observer, "stepleft",  _onStepLeft )
    Event.on(org.observer, "stepright", _onStepRight)
    Event.on(org.observer, "stepup",    _onStepUp   )
    Event.on(org.observer, "stepdown",  _onStepDown )
    Event.on(org.observer, "clone",     _onClone    )
    #
    # Shows organism
    #
    _moveOrganism(pos, org)
    #
    # Initializes the organism with it's instance
    #
    obj = consume(task)
    push!(obj, org)
    consume(task)
    #
    # Adds organism to organisms pool
    #
    oTask = OrganismTask(task, org)
    push!(_tasks, oTask)
    consume(task)
    oTask
  end
  #
  # Moves organism to specified position. Updates organism's 
  # position and set new one into the Manager._posMap. Removes 
  # organism's previous position from Manager._posMap.
  # @param pos New position
  # @param organism Organism to move
  #
  function _moveOrganism(pos::Helper.Point, organism::Creature.Organism)
    delete!(Manager._posMap, _getOrganismId(organism.pos))
    Manager._posMap[_getOrganismId(pos)] = organism
    #
    # pos - new organism position
    # organism.pos - old organism position
    #
    World.setEnergy(Manager._world, organism.pos, uint16(0))
    World.setEnergy(Manager._world, pos, uint16(organism.energy))
    organism.pos = pos
  end
  #
  # Converts coodinates to the unique uint id
  # @return {Uint}
  #
  function _getOrganismId(pos::Helper.Point)
    pos.y * Manager._world.width + pos.x
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
    pos = World.getNearFreePos(Manager._world, organism.pos)
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
    retObj.ret = World.getEnergy(Manager._world, pos)
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
    retObj.ret = World.grabEnergy(Manager._world, pos, amount)
    id         = _getOrganismId(pos)
    #
    # If other organism at the position of the check, 
    # then grab energy from him
    #
    if haskey(Manager._posMap, id) Manager._posMap[id].energy -= retObj.ret end

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
    if World.getEnergy(Manager._world, pos) == 0
      retObj.pos = pos
      _moveOrganism(pos, organism)
    else
      retObj.pos = organism.pos 
    end
  end

  #
  # TODO: All these three fields should be assembled in one type Data
  # TODO: We don't need to set them as statics. I think it's quite possible to use
  # TODO: this module for different objects (instances)
  #
  # All available organism's tasks
  #
  _tasks = OrganismTask[]