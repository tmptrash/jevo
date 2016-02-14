#
# This is a part of Manager module. This part is related to 
# organisms logic and behavior.
#
# @author DeadbraiN
#
using Config
#
# One task related to one organism
#
type OrganismTask
  #
  # Organism unique id
  #
  id::UInt
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
# Updates organisms existances. We have to call this function to
# update organisms life in memory world. Decreases energy and
# provides rare mutations.
# @param eCounter Increments value for energy decreasing
# @param mCounter Counter for mtations speed
#
function _updateOrganisms(eCounter::Int, mCounter::Int)
    local len::Int = length(Manager._data.tasks) # length(tasks) === length(organisms)
    local i  ::Int
    local j  ::Int
    local dPeriod::Int
    local org::Creature.Organism
    local maxEnergy::Int = Config.val(:ORGANISM_MAX_ENERGY)

    eCounter += 1
    mCounter += 1
    #
    # This block runs one iteration for all available organisms.
    # By one iteration i mean that every organism from a list
    # run peace of it's script - code between two produce() calls.
    # TODO: optimize this two approaches. We have to have only one
    # TODO: reverse loop.
    for i = 1:len
      if istaskdone(Manager._data.tasks[i].task) continue end
      org = Manager._data.tasks[i].organism
      try
        consume(Manager._data.tasks[i].task)
        #
        # This is how we mutate organisms during their life.
        # Mutations occures according to organisms settings.
        # If mutationPeriod or mutationAmount set to 0, it 
        # means that mutations during leaving are disabled.
        # Mutation will be automatically applied if organism
        # doesn't contain any code line.
        #
        if org.mutationPeriod > 0 && mCounter % org.mutationPeriod === 0
          Mutator.mutate(org, org.mutationAmount)
        end
        #
        # Cloning procedure. The meaning of this is in ability to 
        # produce children as fast as much energy has anorganism.
        # If organism has high energy value, then it will produce
        # more copies and these copies will supplant other organisms. 
        #
        if mCounter % (maxEnergy - org.energy) === 0 _onClone(org) end
      catch e
        println("Manager._updateOrganisms(): $(dump(e))")
      end
    end
    #
    # This block decreases energy from organisms, because they 
    # spend it while leaving.
    # TODO: this method should be merged with this one, because we
    # TODO: go through all organisms twice (for, while)
    if (dPeriod = Config.val(:ORGANISM_ENERGY_DECREASE_PERIOD)) > 0 && eCounter >= dPeriod
      _updateOrganismsEnergy(eCounter)
      eCounter = 0
    end
    if mCounter === typemax(Int) mCounter = 0 end

    eCounter, mCounter
end
#
# Updates energy of all organisms. Decreases their energy according
# to config (ORGANISM, DECREASE_VALUE). Removes marked as "delete"
# tasks from Manager._data.tasks map.
# @param counter Current iterator value
#
function _updateOrganismsEnergy(counter::Int)
  local decVal::Int = Config.val(:ORGANISM_ENERGY_DECREASE_VALUE)
  #
  # We have to go through tasks in reverse way, because we may
  # remove some elements inside while loop.
  #
  local i::Int = length(Manager._data.tasks)
  while i > 0
    local org::Creature.Organism = Manager._data.tasks[i].organism
    #
    # if the energy of the organism is zero, we have to remove it
    #
    if org.energy > decVal
      org.energy -= decVal
    else
      _killOrganism(i)
    end
    #
    # This is how we updates organism's color after energy descreasing.
    # We don't need to check return value, because we don't change organism's
    # position. Just update it color (energy).
    #
    if istaskdone(Manager._data.tasks[i].task)
      splice!(Manager._data.tasks, i)
    else
      _moveOrganism(org.pos, org)
    end

    i -= 1
  end
end
#
# Marks one organism as "removed". Deletion will be done in 
# _updateOrganismsEnergy() function.
# @param i Index of current task
#
function _killOrganism(i::Int)
  if i === 0 || istaskdone(Manager._data.tasks[i].task) return false end

  org = Manager._data.tasks[i].organism
  org.energy = 0
  Event.clear(org.observer)

  delete!(Manager._data.positions, _getOrganismId(org.pos))
  delete!(Manager._data.organisms, Manager._data.tasks[i].id)
  #
  # This is small hack. It stops the task immediately. We 
  # have to do this, because task is a memory leak if we don't
  # stop (interrupt) it. Real removing of task from Manager._data.tasks
  # map will be done later. This method only marks the task as 
  # "deleted".
  #
  try Base.throwto(Manager._data.tasks[i].task, null) end
  _organismMsg(Manager._data.tasks[i].id, "die")
end
#
# Creates new organism and binds event handlers to him. It also
# finds free point in a world, where organism will start living.
# @param org Organism we have to copy. Optional.
# @param pos Optional. Position of organism.
# @return {OrganismTask}
#
function _createOrganism(organism = nothing, pos = nothing)
  pos  = organism !== nothing && pos === nothing ? World.getNearFreePos(Manager._data.world, organism.pos) : (pos === nothing ? World.getFreePos(Manager._data.world) : pos)
  if pos === false return false end
  org  = organism === nothing ? Creature.create(pos) : deepcopy(organism)
  id   = Config.val(:ORGANISM_CURRENT_ID)
  task = Task(Creature.born(org, id))

  org.pos = pos
  Event.on(org.observer, "getenergy", _onGetEnergy)
  Event.on(org.observer, "grableft",  _onGrabLeft )
  Event.on(org.observer, "grabright", _onGrabRight)
  Event.on(org.observer, "grabup",    _onGrabUp   )
  Event.on(org.observer, "grabdown",  _onGrabDown )
  Event.on(org.observer, "stepleft",  _onStepLeft )
  Event.on(org.observer, "stepright", _onStepRight)
  Event.on(org.observer, "stepup",    _onStepUp   )
  Event.on(org.observer, "stepdown",  _onStepDown )
  # TODO: clonning is under question now...
  #Event.on(org.observer, "clone",     _onClone    )
  #
  # Shows organism
  #
  _moveOrganism(pos, org)
  #
  # Adds organism to organisms pool
  #
  oTask = OrganismTask(id, task, org)
  Config.val(:ORGANISM_CURRENT_ID, id + UInt(1))
  Manager._data.organisms[id] = org
  push!(Manager._data.tasks, oTask)
  _organismMsg(id, "run")

  oTask
end
#
# Shows organism related message
# @param id Unique orgainsm identifier
# @param msg Organism's message
#
function _organismMsg(id::UInt, msg::ASCIIString)
  println("org-$(id) $(msg)")
end
#
# Moves organism to specified position. Updates organism's 
# position and set new one into the Manager._data.positions. Removes 
# organism's previous position from Manager._data.positions.
# @param pos New position
# @param organism Organism to move
# @return {Bool}
#
function _moveOrganism(pos::Helper.Point, organism::Creature.Organism)
  # TODO: this is a place where organism may step to another area (instance).
  # TODO: this functionality will be implemented in future versions...
  if pos.x > Manager._data.world.width  || pos.x < 1 ||
     pos.y > Manager._data.world.height || pos.y < 1 ||
     World.getEnergy(Manager._data.world, pos) > UInt32(0) && 
     (pos.x !== organism.pos.x || pos.y !== organism.pos.y)
     return false
   end

  delete!(Manager._data.positions, _getOrganismId(organism.pos))
  Manager._data.positions[_getOrganismId(pos)] = organism
  #
  # pos - new organism position
  # organism.pos - old organism position
  #
  World.setEnergy(Manager._data.world, organism.pos, UInt32(0))
  World.setEnergy(Manager._data.world, pos, UInt32(organism.energy))
  organism.pos = pos

  true
end
#
# Converts coodinates to the unique UInt id
# @return {UInt}
#
function _getOrganismId(pos::Helper.Point)
  pos.y * Manager._data.world.width + pos.x
end
#
# Handles "beforeclone" event. Finds free point for new organism
# and returns these coordinates. If no free space, then returns false.
# It checks four (4) places around current organism's position: up,
# down, left and right.
# @param organism Parent organism
#
function _onClone(organism::Creature.Organism)
  if length(Manager._data.tasks) >= Config.val(:WORLD_MAX_ORGANISMS) return nothing end
  #
  # First, we have to find free point near the organism to put
  # clone in. It's possible, that all places are filled.
  #
  pos = World.getNearFreePos(Manager._data.world, organism.pos)
  if pos === false return false end
  #
  # Creates new organism and applies mutations to him.
  #
  crTask = Manager._createOrganism(organism, pos)
  if crTask === false return false end
  return Mutator.mutate(crTask.organism, crTask.organism.mutationsOnClone)
end
#
# Returns an energy amount in specified point in a world.
# @param organism Parent organism
# @param pos Position to check
# @param retObj Special object for return value
#
function _onGetEnergy(organism::Creature.Organism, pos::Helper.Point, retObj::Creature.RetObj)
  retObj.ret = World.getEnergy(Manager._data.world, pos)
end
#
# Grabs energy on the left side of the organism
# @param organism Parent organism
# @param amount Amount of energy we want to grab
# @param retObj Special object for return value
#
function _onGrabLeft(organism::Creature.Organism, amount::Int, retObj::Creature.RetObj)
  _onGrab(organism, amount, Helper.Point(organism.pos.x - 1, organism.pos.y), retObj)
end
#
# Grabs energy on the right side of the organism
# @param organism Parent organism
# @param amount Amount of energy we want to grab
# @param retObj Special object for return value
#
function _onGrabRight(organism::Creature.Organism, amount::Int, retObj::Creature.RetObj)
  _onGrab(organism, amount, Helper.Point(organism.pos.x + 1, organism.pos.y), retObj)
end
#
# Grabs energy on the up side of the organism
# @param organism Parent organism
# @param amount Amount of energy we want to grab
# @param retObj Special object for return value
#
function _onGrabUp(organism::Creature.Organism, amount::Int, retObj::Creature.RetObj)
  _onGrab(organism, amount, Helper.Point(organism.pos.x, organism.pos.y - 1), retObj)
end
#
# Grabs energy on the down side of the organism
# @param organism Parent organism
# @param amount Amount of energy we want to grab
# @param retObj Special object for return value
#
function _onGrabDown(organism::Creature.Organism, amount::Int, retObj::Creature.RetObj)
  _onGrab(organism, amount, Helper.Point(organism.pos.x, organism.pos.y + 1), retObj)
end
#
# Handler of "stepleft" event. Checks a possibility to step left.
# New position will be set to "retObj.pos" property.
# @param organism Parent organism
#
function _onStepLeft(organism::Creature.Organism)
  _onStep(organism, Helper.Point(organism.pos.x - 1, organism.pos.y))
end
#
# Handler of "stepright" event. Checks a possibility to step right.
# New position will be set to "retObj.pos" property.
# @param organism Parent organism
#
function _onStepRight(organism::Creature.Organism)
  _onStep(organism, Helper.Point(organism.pos.x + 1, organism.pos.y))
end
#
# Handler of "stepup" event. Checks a possibility to step up.
# New position will be set to "retObj.pos" property.
# @param organism Parent organism
#
function _onStepUp(organism::Creature.Organism)
  _onStep(organism, Helper.Point(organism.pos.x, organism.pos.y - 1))
end
#
# Handler of "stepdown" event. Checks a possibility to step down.
# New position will be set to "retObj.pos" property.
# @param organism Parent organism
#
function _onStepDown(organism::Creature.Organism)
  _onStep(organism, Helper.Point(organism.pos.x, organism.pos.y + 1))
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
function _onGrab(organism::Creature.Organism, amount::Int, pos::Helper.Point, retObj::Creature.RetObj)
  retObj.ret = World.grabEnergy(Manager._data.world, pos, UInt32(amount))
  local id::Int = _getOrganismId(pos)
  #
  # If other organism at the position of the check, 
  # then grab energy from it
  #
  if haskey(Manager._data.positions, id) 
    org = Manager._data.positions[id]
    if org.energy > retObj.ret
      org.energy -= retObj.ret
    else
      # TODO: possibly, slow code. To fix this we have to
      # TODO: use map instead array for tasks (Manager._data.tasks)
      _killOrganism(findfirst((t) -> t.organism === org, Manager._data.tasks))
      _moveOrganism(org.pos, org)
      _moveOrganism(organism.pos, organism)
    end
  end

  retObj.ret
end
#
# Checks if specified position ("pos") has no energy and we may
# move the organism there. If this position has an energy, then
# the same position will be set to "retObj.pos".
# @param organism Organism hwo grabs
# @param pos Point where we should check the energy
#
function _onStep(organism::Creature.Organism, pos::Helper.Point)
  World.getEnergy(Manager._data.world, pos) === UInt32(0) && _moveOrganism(pos, organism)
end