#
# This is a part of Manager module. This part is related to
# organisms logic and behavior.
#
# @author DeadbraiN
#
import Config
import Helper
import Creature
import Mutator
import Client
import Event
import World
import RpcApi
import ManagerTypes
#
# Generates unique id by world position. This macro is
# private insode Manager module
# @param {Helper.Point} pos Unique World position
#
macro getPosId(pos)
  :($pos.y * $Manager._data.world.width + $pos.x)
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
# Updates organisms existances. We have to call this function to
# update organisms life in memory world. Decreases energy and
# provides rare mutations.
# @param counter Counter for mutations speed
#
function _updateOrganisms(counter::Int)
  local i::Int
  local j::Int
  local org::Creature.Organism
  local probs::Array{Int, 1}
  local cloneAfter::Int = Config.val(:ORGANISM_CLONE_AFTER_TIMES)
  local needClone::Bool = cloneAfter === 0 ? false : counter % cloneAfter === 0
  local tasks::Array{ManagerTypes.OrganismTask, 1} = Manager._data.tasks
  local len::Int = length(tasks)
  local maxOrgs::Int = Config.val(:WORLD_MAX_ORGANISMS)
  local task::ManagerTypes.OrganismTask

  counter += 1
  #
  # This block runs one iteration for all available organisms.
  # By one iteration i mean that every organism from a list
  # run peace of it's script - code between two produce() calls.
  # TODO: optimize this two approaches. We have to have only one
  # TODO: reverse loop.
  for i = 1:len
    task = tasks[i]
    #
    # Some organisms may be marked as "died" or "removed"
    #
    if istaskdone(task.task) continue end
    try
      consume(task.task)
      #
      # This is how we mutate organisms during their life.
      # Mutations occures according to organisms settings.
      # If mutationPeriod or mutationAmount set to 0, it
      # means that mutations during leaving are disabled.
      # Mutation will be automatically applied if organism
      # doesn't contain any code line.
      #
      org = task.organism
      if counter % org.mutationPeriod === 0 && org.mutationPeriod > 0
        Mutator.mutate(org, org.mutationAmount)
      end
    catch e
      Helper.error("Manager._updateOrganisms(): $e")
      showerror(STDOUT, e, catch_backtrace())
    end
  end
  #
  # Cloning procedure. The meaning of this is in ability to
  # produce children as fast as much energy has an organism.
  # If organism has high energy value, then it will produce
  # more copies and these copies will produce other organisms
  # and so on and so fourth...
  # TODO: may be i have to move this code outside the loop
  # TODO: optimize this array. It should be created only once
  # TODO: outside the loop.
  #
  if needClone && len < maxOrgs && len > 0
    probs = Int[]
    for j = 1:len push!(probs, tasks[j].organism.energy) end
    j = Helper.getProbIndex(probs)
    org = tasks[j].organism
    if org.energy > 0 && !istaskdone(Manager._data.tasks[j].task) _onClone(org) end
  end
  #
  # This block decreases energy from organisms, because they
  # spend it while leaving.
  #
  if counter % Config.val(:ORGANISM_ENERGY_DECREASE_PERIOD) === 0
    _updateOrganismsEnergy()
  end
  #
  # Checks if total amount of energy in a world is less then
  # minimum, according to the configuration.
  #
  if counter % Config.val(:WORLD_MIN_ENERGY_CHECK_PERIOD) === 0 && Config.val(:WORLD_MIN_ENERGY_CHECK_PERIOD) > 0
    _updateWorldEnergy()
  end
  #
  # This call removes organisms with minimum energy
  #
  if counter % Config.val(:ORGANISM_REMOVE_AFTER_TIMES) === 0 && len > Config.val(:WORLD_MIN_ORGANISMS)
    _removeMinOrganisms(Manager._data.tasks)
  end
  #
  # This counter should be infinite
  #
  if counter === typemax(Int) counter = 0 end

  counter
end
#
# Removes organisms with minimum energy. Amount of removed
# organisms is set in ORGANISM_REMOVE_AMOUNT config.
# @param tasks Array of tasks with organisms inside
#
function _removeMinOrganisms(tasks::Array{ManagerTypes.OrganismTask, 1})
  local amount::Int = Config.val(:ORGANISM_REMOVE_AMOUNT)
  local i::Int

  if length(tasks) <= amount return false end

  sort!(tasks, alg = QuickSort, lt = (t1, t2) -> t1.organism.energy < t2.organism.energy)
  for i = 1:amount
    if istaskdone(tasks[i].task) continue end
    _killOrganism(i)
  end
  #
  # Updates min and max energetic organisms
  #
  Manager._data.minOrg = tasks[1].organism
  Manager._data.maxOrg = tasks[end].organism
  Manager._data.minId  = tasks[1].id
  Manager._data.maxId  = tasks[end].id

  true
end
#
# Updates energy of all organisms. Decreases their energy according
# to config (ORGANISM, DECREASE_VALUE). Removes marked as "delete"
# tasks from Manager._data.tasks map.
#
function _updateOrganismsEnergy()
  local decVal::Int = Config.val(:ORGANISM_ENERGY_DECREASE_VALUE)
  local tasks::Array{ManagerTypes.OrganismTask, 1} = Manager._data.tasks
  #
  # We have to go through tasks in reverse way, because we may
  # remove some elements inside while loop.
  #
  local i::Int = length(tasks)
  while i > 0
    local org::Creature.Organism = tasks[i].organism
    #
    # if the energy of the organism is zero, we have to remove it
    #
    if !istaskdone(tasks[i].task)
      if org.energy > (decVal + org.codeSize)
        org.energy -= (decVal + org.codeSize)
      else
        _killOrganism(i)
      end
    end

    if istaskdone(tasks[i].task) splice!(tasks, i) end

    i -= 1
  end
end
#
# Updates total world's energy. It shouldn't be less then minimum
# got from config: WORLD_MIN_ENERGY_PERCENT. We calculate this percent
# as a ration between whole world (100%) and all energy points together.
#
function _updateWorldEnergy()
  local plane::Array{UInt32, 2} = Manager._data.world.data
  local total::Int = Manager._data.world.width * Manager._data.world.height
  local energy::Int = 0
  local positions::Dict{Int, Creature.Organism} = Manager._data.positions
  local pos::Helper.Point = Helper.Point(0, 0)
  local x::Int
  local y::Int

  for x in 1:size(plane)[2]
    for y in 1:size(plane)[1]
      pos.x = x
      pos.y = y
      if !Manager._isFree(pos) energy += 1 end
    end
  end
  #
  # Total amount of energy is less then in config
  #
  if div(energy * 100, total) <= Config.val(:WORLD_MIN_ENERGY_PERCENT)
    setRandomEnergy()
  end
end
#
# Marks one organism as "frozen". It means that it will be hidden
# and all other organisms will no ability to interact with him.
# Removing from tasks pool will be provided in _updateOrganismsEnergy()
# @param i Index of organism's task
#
function _freezeOrganism(i::Int)
  local id::UInt = Manager._data.tasks[i].id
  local org::Creature.Organism = Manager._data.tasks[i].organism
  local oldColor::UInt32 = org.color

  org.color = UInt32(0)
  Event.clear(org.observer)
  _moveOrganism(org.pos, org)
  org.color = oldColor
  delete!(Manager._data.positions, @getPosId(org.pos))
  delete!(Manager._data.organisms, id)
  #
  # This is small hack. It stops the task immediately. We
  # have to do this, because task is a memory leak if we don't
  # stop (interrupt) it. This method only marks the task as
  # "frozen". Real deletion will be provided in _updateOrganismsEnergy().
  #
  try Base.throwto(Manager._data.tasks[i].task, null) end
  Manager._cons.frozen[org.id] = org
  msg(id, "frozen")
end
#
# Marks one organism as "removed". Deletion will be done in
# _updateOrganismsEnergy() function.
# @param i Index of organism's task
#
function _killOrganism(i::Int)
  if i === 0 || istaskdone(Manager._data.tasks[i].task) return false end

  local id::UInt = Manager._data.tasks[i].id
  local org::Creature.Organism = Manager._data.tasks[i].organism

  org.energy = 0
  org.color  = UInt32(0)
  Event.clear(org.observer)
  _moveOrganism(org.pos, org)
  delete!(Manager._data.positions, @getPosId(org.pos))
  delete!(Manager._data.organisms, id)
  #
  # This is small hack. It stops the task immediately. We
  # have to do this, because task is a memory leak if we don't
  # stop (interrupt) it. This method only marks the task as
  # "deleted". Real deletion will be provided in _updateOrganismsEnergy().
  #
  try Base.throwto(Manager._data.tasks[i].task, null) end
  msg(id, "die")

  true
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
  local idNew::Int = @getPosId(pos)
  local idOld::Int = @getPosId(organism.pos)
  local freeze::Bool = false
  #
  # Organism try step outside of current instance. If near
  # instance is ready, we may teleport him there. We also
  # have to decrease energy to prevent network overload.
  # Energy decrease should be provided on destination Manager.
  # If network is ok and we may send an organism, we have to
  # kill him in current Manager/instance.
  #
  if pos.x < 1
    if !Client.isOk(Manager._cons.left)  || !Client.request(Manager._cons.left, RpcApi.RPC_ORG_STEP_LEFT, organism) return false end
    freeze = true
  elseif pos.x > Manager._data.world.width
    if !Client.isOk(Manager._cons.right) || !Client.request(Manager._cons.right, RpcApi.RPC_ORG_STEP_RIGHT, organism) return false end
    freeze = true
  elseif pos.y < 1
    if !Client.isOk(Manager._cons.up)    || !Client.request(Manager._cons.up, RpcApi.RPC_ORG_STEP_UP, organism) return false end
    freeze = true
  elseif pos.y > Manager._data.world.height
    if !Client.isOk(Manager._cons.down)  || !Client.request(Manager._cons.down, RpcApi.RPC_ORG_STEP_DOWN, organism) return false end
    freeze = true
  end
  #
  # We have to freeze the organism and throw an error to interrupt
  # organism's code running
  #
  if freeze
    # TODO: possibly slow code!
    _freezeOrganism(findfirst((t) -> t.organism === organism, Manager._data.tasks))
    error("Organism is interrupted, because of freeze")
  end
  #
  # Destination position, where organism wants step to is not
  # empty. Other organism or an energy block is there.
  #
  if idOld !== idNew && !Manager._isFree(pos) return false end
  #
  # pos - new organism position
  # organism.pos - old organism position
  #
  if pos.x !== organism.pos.x || pos.y !== organism.pos.y
    delete!(Manager._data.positions, @getPosId(organism.pos))
    Manager._data.positions[idNew] = organism
    World.setEnergy(Manager._data.world, organism.pos, UInt32(0))
    organism.pos = pos
  end
  World.setEnergy(Manager._data.world, pos, UInt32(organism.color))

  true
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
  # Creates new organism and apply mutations to him.
  #
  crTask = Manager._createOrganism(organism, pos)
  if crTask === false return false end
  #
  # Clonning means additional energy waste
  #
  local energy::Int      = div(organism.energy, 2) # minus 50% of energy
  organism.energy       -= energy
  crTask.organism.energy = energy
  if energy > 0 Mutator.mutate(crTask.organism, crTask.organism.mutationsOnClone) end
end
#
# Returns an energy amount in specified point in a world.
# @param organism Parent organism
# @param pos Position to check
# @param retObj Special object for return value
#
function _onGetEnergy(organism::Creature.Organism, pos::Helper.Point, retObj::Helper.RetObj)
  local id::Int = @getPosId(pos)
  #
  # Other organism at this position
  #
  if haskey(Manager._data.positions, id)
    retObj.ret = Manager._data.positions[id].energy
  #
  # Energy block at this position
  #
  else
    retObj.ret = World.getEnergy(Manager._data.world, pos)
  end
end
#
# Grabs energy on the left side of the organism
# @param organism Parent organism
# @param amount Amount of energy we want to grab
# @param retObj Special object for return value
#
function _onGrabLeft(organism::Creature.Organism, amount::Int, retObj::Helper.RetObj)
  _onGrab(organism, amount, Helper.Point(organism.pos.x - 1, organism.pos.y), retObj)
end
#
# Grabs energy on the right side of the organism
# @param organism Parent organism
# @param amount Amount of energy we want to grab
# @param retObj Special object for return value
#
function _onGrabRight(organism::Creature.Organism, amount::Int, retObj::Helper.RetObj)
  _onGrab(organism, amount, Helper.Point(organism.pos.x + 1, organism.pos.y), retObj)
end
#
# Grabs energy on the up side of the organism
# @param organism Parent organism
# @param amount Amount of energy we want to grab
# @param retObj Special object for return value
#
function _onGrabUp(organism::Creature.Organism, amount::Int, retObj::Helper.RetObj)
  _onGrab(organism, amount, Helper.Point(organism.pos.x, organism.pos.y - 1), retObj)
end
#
# Grabs energy on the down side of the organism
# @param organism Parent organism
# @param amount Amount of energy we want to grab
# @param retObj Special object for return value
#
function _onGrabDown(organism::Creature.Organism, amount::Int, retObj::Helper.RetObj)
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
function _onGrab(organism::Creature.Organism, amount::Int, pos::Helper.Point, retObj::Helper.RetObj)
  local id::Int = @getPosId(pos)
  local org::Creature.Organism

  if haskey(Manager._cons.frozen, org.id)
    return retObj.ret = 0
  end
  #
  # If other organism at the position of the check,
  # then grab energy from it
  #
  if haskey(Manager._data.positions, id)
    org = Manager._data.positions[id]
    #
    # Current organism wants give an energy
    #
    if amount < 1
      if organism.energy <= abs(amount)
        # TODO: possibly slow code!
        _killOrganism(findfirst((t) -> t.organism === organism, Manager._data.tasks))
        amount = -organism.energy
      end
      org.energy  = min(org.energy - amount, Config.val(:ORGANISM_MAX_ENERGY))
      retObj.ret  = amount
    elseif org.energy > amount
      org.energy -= amount
      retObj.ret  = amount
    elseif org.energy <= amount
      # TODO: possibly, slow code. To fix this we have to
      # TODO: use map instead array for tasks (Manager._data.tasks)
      _killOrganism(findfirst((t) -> t.organism === org, Manager._data.tasks))
      retObj.ret = org.energy
    end
  else
    retObj.ret = World.grabEnergy(Manager._data.world, pos, UInt32(amount))
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
  if !haskey(Manager._cons.frozen, organism.id)
    _moveOrganism(pos, organism)
  end
end
#
# Creates new organism and binds event handlers to him. It also
# finds free point in a world, where organism will start living.
# If add === true, we have to add it to organisms pool.
# @param org Organism we have to copy. Optional.
# @param pos Optional. Position of organism.
# @param add We need just add existing organism to the world
# @return {ManagerTypes.OrganismTask}
# TODO: set type for arguments
function _createOrganism(organism = nothing, pos::Helper.Point = Helper.Point(0,0), add::Bool = false)
  pos = organism !== nothing && Helper.empty(pos) ? World.getNearFreePos(Manager._data.world, organism.pos) : (Helper.empty(pos) ? World.getFreePos(Manager._data.world) : pos)
  if pos === false return false end
  local id::UInt = Manager._data.organismId
  local org::Creature.Organism = organism === nothing ? Creature.create(id, pos) : add ? organism : deepcopy(organism)
  local task::Task = Task(Creature.born(org))
  local oTask::ManagerTypes.OrganismTask = ManagerTypes.OrganismTask(id, task, org)

  org.pos = pos
  #
  # Because of deepcopy(), we have to remove copyed handlers
  #
  Event.clear(org.observer)
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
  Manager._data.organismId += 1
  Manager._data.organisms[id] = org
  Manager._data.positions[@getPosId(org.pos)] = org
  push!(Manager._data.tasks, oTask)
  Manager._data.totalOrganisms += 1
  msg(id, "born")

  oTask
end
