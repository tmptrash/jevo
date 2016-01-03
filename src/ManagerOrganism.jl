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
    local len::Int = length(Manager._tasks) # length(tasks) === length(organisms)
    local i  ::Int
    local j  ::Int
    local dPeriod::Int
    local org::Creature.Organism

    eCounter += 1
    mCounter += 1
    #
    # This block runs one iteration for all available organisms.
    # By one iteration i mean that every organism from a list
    # run peace of it's script - code between two produce() calls.
    #
    for i = 1:len
      org = Manager._tasks[i].organism
      try
        consume(Manager._tasks[i].task)
        #
        # This is how we mutate organisms during their life.
        # Mutations occures according to organisms settings.
        # If mutationPeriod or mutationAmount set to 0, it 
        # means that mutations during leaving are disabled.
        #
        if org.mutationPeriod > 0 && mCounter % org.mutationPeriod === 0
          for j = 1:org.mutationAmount Mutator.mutate(org) end
        end
      catch e
        println("Manager._updateOrganisms(): $e")
      end
    end
    #
    # This block decreases energy from organisms, because they 
    # spend it while leaving.
    #
    if (dPeriod = Config.val(:ORGANISM_DECREASE_PERIOD)) > 0 && eCounter >= dPeriod
      _updateOrganismsEnergy(eCounter)
      eCounter = 0
    end
    if mCounter === typemax(Int)
      mCounter = 0
    end

    eCounter, mCounter
end
#
# Updates energy of all organisms. Decreases their energy according
# to config (ORGANISM, DECREASE_VALUE).
# @param counter Current iterator value
#
function _updateOrganismsEnergy(counter::Int)
  local decVal::Int = Config.val(:ORGANISM_DECREASE_VALUE)
  #
  # We have to go through tasks in reverse way, because we may
  # remove some elements inside while loop.
  #
  local i::Int = length(Manager._tasks)
  while i > 0
    local org::Creature.Organism = Manager._tasks[i].organism
    local dec::Int = decVal + length(org.code)
    #
    # if the energy of the organism is zero, we have to remove it
    #
    if org.energy > dec
      org.energy -= dec
    else
      _killOrganism(i)
    end
    #
    # This is how we updates organism's color after energy descreasing.
    # We don't need to check return value, because we don't change organism's
    # position. Just update it color (energy).
    #
    _moveOrganism(org.pos, org)

    i -= 1
  end
end
#
# Kills one organism and remove it from all related maps
# @param i Index of current task
#
function _killOrganism(i::Int)
  if i === 0 return false end

  org = Manager._tasks[i].organism
  org.energy = UInt(0)
  Event.clear(org.observer)

  delete!(Manager._posMap, _getOrganismId(org.pos))
  delete!(Manager._map, Manager._tasks[i].id)
  #
  # This is small hack. It stops the task immediately. We 
  # have to do this, because task is a memory leak if we don't
  # stop (interrupt) it
  #
  try Base.throwto(Manager._tasks[i].task, null) end
  _organismMsg(Manager._tasks[i].id, "die")
  splice!(Manager._tasks, i)
  # TODO: this line is under the big question
  gc()
end
#
# Creates new organism and binds event handlers to him. It also
# finds free point in a world, where organism will start living.
# @param org Organism we have to copy. Optional.
# @param pos Optional. Position of organism.
# @return {OrganismTask}
#
function _createOrganism(organism = nothing, pos = nothing)
  pos  = organism !== nothing && pos === nothing ? World.getNearFreePos(_world, organism.pos) : (pos === nothing ? World.getFreePos(Manager._world) : pos)
  if pos === false return false end
  org  = organism === nothing ? Creature.create(pos) : Creature.copy(organism)
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
  Event.on(org.observer, "clone",     _onClone    )
  #
  # Shows organism
  #
  _moveOrganism(pos, org)
  #
  # Adds organism to organisms pool
  #
  oTask = OrganismTask(id, task, org)
  Config.val(:ORGANISM_CURRENT_ID, id + UInt(1))
  _map[id] = org
  push!(Manager._tasks, oTask)
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
# position and set new one into the Manager._posMap. Removes 
# organism's previous position from Manager._posMap.
# @param pos New position
# @param organism Organism to move
# @return {Bool}
#
function _moveOrganism(pos::Helper.Point, organism::Creature.Organism)
  # TODO: this is a place where organism may step to another area (instance).
  # TODO: this functionality will be implemented in future versions...
  if pos.x > Manager._world.width  || pos.x < 1 ||
     pos.y > Manager._world.height || pos.y < 1 ||
     World.getEnergy(Manager._world, pos) > UInt32(0) return false end

  delete!(Manager._posMap, _getOrganismId(organism.pos))
  Manager._posMap[_getOrganismId(pos)] = organism
  #
  # pos - new organism position
  # organism.pos - old organism position
  #
  World.setEnergy(Manager._world, organism.pos, UInt32(0))
  World.setEnergy(Manager._world, pos, UInt32(organism.energy))
  organism.pos = pos

  true
end
#
# Converts coodinates to the unique UInt id
# @return {UInt}
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
  # We have to promote clonning, because it's very fundamental element of evolution
  #
  organism.energy += Config.val(:ORGANISM_CLONE_ENERGY)
  if length(_tasks) > Config.val(:WORLD_MAX_ORGANISMS) return nothing end
  #
  # First, we have to find free point near the organism to put
  # clone in. It's possible, that all places are filled.
  #
  pos = World.getNearFreePos(Manager._world, organism.pos)
  if pos === false return nothing end
  #
  # Creates new organism and applies mutations to him.
  #
  crTask = Manager._createOrganism(organism, pos)
  if crTask === false return false end
  for i = 1:crTask.organism.mutationsOnClone Mutator.mutate(crTask.organism) end
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
function _onGrabLeft(organism::Creature.Organism, amount::UInt, retObj::Creature.RetObj)
  _onGrab(organism, amount, Helper.Point(organism.pos.x - 1, organism.pos.y), retObj)
end
#
# Grabs energy on the right side of the organism
# @param organism Parent organism
# @param amount Amount of energy we want to grab
# @param retObj Special object for return value
#
function _onGrabRight(organism::Creature.Organism, amount::UInt, retObj::Creature.RetObj)
  _onGrab(organism, amount, Helper.Point(organism.pos.x + 1, organism.pos.y), retObj)
end
#
# Grabs energy on the up side of the organism
# @param organism Parent organism
# @param amount Amount of energy we want to grab
# @param retObj Special object for return value
#
function _onGrabUp(organism::Creature.Organism, amount::UInt, retObj::Creature.RetObj)
  _onGrab(organism, amount, Helper.Point(organism.pos.x, organism.pos.y - 1), retObj)
end
#
# Grabs energy on the down side of the organism
# @param organism Parent organism
# @param amount Amount of energy we want to grab
# @param retObj Special object for return value
#
function _onGrabDown(organism::Creature.Organism, amount::UInt, retObj::Creature.RetObj)
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
function _onGrab(organism::Creature.Organism, amount::UInt, pos::Helper.Point, retObj::Creature.RetObj)
  retObj.ret = World.grabEnergy(Manager._world, pos, amount)
  local id::Int = _getOrganismId(pos)
  #
  # If other organism at the position of the check, 
  # then grab energy from it
  #
  if haskey(Manager._posMap, id) 
    org = Manager._posMap[id]
    if org.energy > retObj.ret
      org.energy -= retObj.ret
    else
      # TODO: possibly, slow code. To fix this we have to
      # TODO: use map instead array for tasks (Manager._tasks)
      _killOrganism(findfirst((t) -> t.organism === org, Manager._tasks))
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
# @param retObj Special object for return value
#
function _onStep(organism::Creature.Organism, pos::Helper.Point, retObj::Creature.RetObj)
  if World.getEnergy(Manager._world, pos) === UInt32(0) && _moveOrganism(pos, organism)
    retObj.pos = pos
  else
    retObj.ret = false
  end
end