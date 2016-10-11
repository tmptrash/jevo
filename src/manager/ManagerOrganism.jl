#
# This is a part of Manager module. This part is related to
# organisms logic and behavior.
#
# @author DeadbraiN
#
import CodeConfig.@if_status
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
# Shows organism related message
# @param man Manager data type
# @param id Unique orgainsm identifier
# @param msg Organism's message
#
function msg(man::ManagerTypes.ManagerData, id::UInt, msg::String)
  if !man.quiet Helper.info(string("org-", id, " ", msg)) end
end
#
# Binds handlers to organism's events
# @param man Manager data type
# @param org Organism we are working with
#
function bindEvents(man::ManagerTypes.ManagerData, org::Creature.Organism)
  Event.clear(org.observer)
  Event.on(org.observer, "getenergy", (org::Creature.Organism, pos::Helper.Point, retObj::Helper.RetObj)->_onGetEnergy(man, org, pos, retObj))
  Event.on(org.observer, "grableft",  (org::Creature.Organism, amount::Int, retObj::Helper.RetObj)->_onGrabLeft(man, org, amount, retObj))
  Event.on(org.observer, "grabright", (org::Creature.Organism, amount::Int, retObj::Helper.RetObj)->_onGrabRight(man, org, amount, retObj))
  Event.on(org.observer, "grabup",    (org::Creature.Organism, amount::Int, retObj::Helper.RetObj)->_onGrabUp(man, org, amount, retObj))
  Event.on(org.observer, "grabdown",  (org::Creature.Organism, amount::Int, retObj::Helper.RetObj)->_onGrabDown(man, org, amount, retObj))
  Event.on(org.observer, "stepleft",  (org::Creature.Organism)->_onStepLeft(man, org))
  Event.on(org.observer, "stepright", (org::Creature.Organism)->_onStepRight(man, org))
  Event.on(org.observer, "stepup",    (org::Creature.Organism)->_onStepUp(man, org))
  Event.on(org.observer, "stepdown",  (org::Creature.Organism)->_onStepDown(man, org))
end
#
# Updates organisms existances. We have to call this function to
# update organisms life in memory world. Decreases energy and
# provides rare mutations.
# @param man Manager data type
# @param counter Counter for mutations speed
# @param needYield We have to call yield in organisms loop, if
# this flag is turned on.
#
function _updateOrganisms(man::ManagerTypes.ManagerData, counter::Int, needYield::Bool)
  local cloneAfter::Int  = man.cfg.ORGANISM_CLONE_AFTER_TIMES
  local needClone ::Bool = cloneAfter === 0 ? false : counter % cloneAfter === 0
  local tasks     ::Array{ManagerTypes.OrganismTask, 1} = man.tasks
  local len       ::Int = length(tasks)
  local task      ::ManagerTypes.OrganismTask
  local org       ::Creature.Organism
  local i         ::Int
  local probs     ::Array{Int, 1}
  local cfg       ::Config.ConfigData = man.cfg
  #
  # This block runs one iteration for all available organisms.
  # By one iteration i mean that every organism from a list
  # run peace of it's script - code between two produce() calls.
  # TODO: optimize this two approaches. We have to have only one
  # TODO: reverse loop.
  @inbounds for task in tasks
    #
    # Because this loop affects porformance, we have call yield()
    # here and not in main Manager while loop.
    #
    if needYield yield(); @if_status man.status.yps += 1 end
    #
    # We have to wait while all clients are ready for streaming. This
    # is because the error in serializer. See issue for details:
    # https://github.com/JuliaLang/julia/issues/16746. See Manager
    # main loop for details.
    #
    if man.cons.streamInit::Bool return counter + 1 end
    #
    # Some organisms may be marked as "died" or "removed"
    #
    if istaskdone(task.task) continue end
    yieldto(task.task)
    #
    # This is how we mutate organisms during their life.
    # Mutations occures according to organisms settings.
    # If mutationPeriod or mutationAmount set to 0, it
    # means that mutations during leaving are disabled.
    # Mutation will be automatically applied if organism
    # doesn't contain any code line.
    #
    org = task.organism
    if org.mutationPeriod > 0 && counter % org.mutationPeriod === 0
      # TODO: this function is very slow!!! have to be optimized
      Mutator.mutate(cfg, org, org.mutationAmount)
      man.status.mps += 1
    end
  end
  #
  # After all organisms die, we have to create next, new population
  #
  if len < 1
    man.totalOrganisms = 0
    man.organismId     = UInt(1)
    createOrganisms(man)
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
  if needClone && len < cfg.WORLD_MAX_ORGANISMS && len > 0
    probs = Int[]
    @inbounds for task in tasks push!(probs, task.organism.energy) end
    i = Helper.getProbIndex(probs)
    org = tasks[i].organism
    if org.energy > 0 && !istaskdone(tasks[i].task) _onClone(man, org) end
  end
  #
  # This block decreases energy from organisms, because they
  # spend it while leaving.
  #
  if cfg.ORGANISM_ENERGY_DECREASE_PERIOD > 0 && counter % cfg.ORGANISM_ENERGY_DECREASE_PERIOD === 0
    _updateOrganismsEnergy(man)
  end
  #
  # Checks if total amount of energy in a world is less then
  # minimum, according to the configuration.
  #
  if counter % cfg.WORLD_MIN_ENERGY_CHECK_PERIOD === 0 && cfg.WORLD_MIN_ENERGY_CHECK_PERIOD > 0
    _updateWorldEnergy(man)
  end
  #
  # This call removes organisms with minimum energy
  #
  if cfg.ORGANISM_REMOVE_AFTER_TIMES > 0 && counter % cfg.ORGANISM_REMOVE_AFTER_TIMES === 0 && len > cfg.WORLD_MIN_ORGANISMS
    _removeMinOrganisms(man)
  end
  #
  # This counter should be infinite, but not zero!
  #
  if counter === typemax(Int) counter = 1 end

  counter + 1
end
#
# Removes organisms with minimum energy. Amount of removed
# organisms is set in ORGANISM_REMOVE_AMOUNT config.
# @param man Manager data type
# @param tasks Array of tasks with organisms inside
#
function _removeMinOrganisms(man::ManagerTypes.ManagerData)
  local tasks::Array{ManagerTypes.OrganismTask, 1} = man.tasks
  local amount::Int = man.cfg.ORGANISM_REMOVE_AMOUNT
  local i::Int

  if length(tasks) <= amount return false end

  @inbounds sort!(tasks, alg = QuickSort, lt = (t1, t2) -> t1.organism.energy < t2.organism.energy)
  for i = 1:amount
    @inbounds if istaskdone(tasks[i].task) continue end
    _killOrganism(man, i)
  end

  true
end
#
# Updates energy of all organisms. Decreases their energy according
# to config (ORGANISM, DECREASE_VALUE). Removes marked as "delete"
# tasks from man.tasks map.
# @param man Manager data type
#
function _updateOrganismsEnergy(man::ManagerTypes.ManagerData)
  local decVal::Int = man.cfg.ORGANISM_ENERGY_DECREASE_VALUE
  local tasks::Array{ManagerTypes.OrganismTask, 1} = man.tasks
  local minOrgs::Int = man.cfg.WORLD_MIN_ORGANISMS
  #
  # We have to go through tasks in reverse way, because we may
  # remove some elements inside while loop.
  #
  local i::Int = length(tasks)
  local org::Creature.Organism
  while i > 0
    #
    # if the organism is marked as "removed", we have to delete it
    #
    org = tasks[i].organism
    #
    # If population reaches minimum amount, we should stop killing it
    #
    if length(tasks) > minOrgs org.energy -= (decVal + org.codeSize) end
    if org.energy <= 0
      _killOrganism(man, i)
      splice!(tasks, i)
    end

    i -= 1
  end
end
#
# Updates total world's energy. It shouldn't be less then minimum
# got from config: WORLD_MIN_ENERGY_PERCENT. We calculate this percent
# as a ration between whole world (100%) and all energy points together.
# @param man Manager data type
# TODO: this method is very slow!!! should be optimized!
function _updateWorldEnergy(man::ManagerTypes.ManagerData)
  local plane::Array{UInt32, 2} = man.world.data
  local total::Int = man.world.width * man.world.height
  local energy::Int = 0
  local positions::Dict{Int, Creature.Organism} = man.positions
  local pos::Helper.Point = Helper.Point(0, 0)
  local x::Int
  local y::Int

  for x in 1:size(plane)[2]
    for y in 1:size(plane)[1]
      pos.x = x
      pos.y = y
      if !Manager._isFree(man, pos) energy += 1 end
    end
  end
  #
  # Total amount of energy is less then in config
  #
  if div(Float64(energy * 100), total) <= man.cfg.WORLD_MIN_ENERGY_PERCENT
    setRandomEnergy(man, man.cfg.WORLD_START_ENERGY_BLOCKS, man.cfg.WORLD_START_ENERGY_AMOUNT)
  end
end
#
# Marks one organism as "frozen". It means that it will be hidden
# and all other organisms will no ability to interact with him.
# Removing from tasks pool will be provided in _updateOrganismsEnergy()
# @param man Manager data type
# @param i Index of organism's task
#
function _freezeOrganism(man::ManagerTypes.ManagerData, i::Int)
  local id::UInt = man.tasks[i].id
  local org::Creature.Organism = man.tasks[i].organism
  local oldColor::UInt32 = org.color

  org.color = UInt32(Dots.INDEX_EMPTY)
  Event.clear(org.observer)
  _moveOrganism(man, org.pos, org)
  org.color = oldColor
  delete!(man.positions, Manager._getPosId(man, org.pos))
  delete!(man.organisms, id)
  Manager.stopTask(man.tasks[i].task)
  man.cons.frozen[org.id] = org
  msg(man, id, "frozen")
end
#
# Marks one organism as "removed". Deletion will be done in
# _updateOrganismsEnergy() function.
# @param man Manager data type
# @param i Index of organism's task
#
function _killOrganism(man::ManagerTypes.ManagerData, i::Int)
  if i === 0 || istaskdone(man.tasks[i].task) return false end

  local id::UInt = man.tasks[i].id
  local org::Creature.Organism = man.tasks[i].organism

  org.energy = 0
  org.color  = UInt32(Dots.INDEX_EMPTY)
  Event.clear(org.observer)
  _moveOrganism(man, org.pos, org)
  delete!(man.positions, Manager._getPosId(man, org.pos))
  delete!(man.organisms, id)
  Manager.stopTask(man.tasks[i].task)
  msg(man, id, "die")

  true
end
#
# Moves organism to specified position. Updates organism's
# position and set new one into the man.positions. Removes
# organism's previous position from man.positions.
# @param man Manager data type
# @param pos New position
# @param organism Organism to move
# @return {Bool}
#
function _moveOrganism(man::ManagerTypes.ManagerData, pos::Helper.Point, organism::Creature.Organism)
  local newPos::Helper.Point = Helper.Point(pos.x, pos.y)
  local idNew::Int
  local idOld::Int = Manager._getPosId(man, organism.pos)
  local freeze::Bool = false
  local cyclicMove::Bool = false
  #
  # If cyclical mode turned on, then we have to move organisms in a
  # specific cyclic way from the borders.
  #
  if man.cfg.WORLD_CYCLICAL
    if newPos.x < 1
      newPos.x = man.world.width
      cyclicMove = true
    elseif newPos.x > man.world.width
      newPos.x = 1
      cyclicMove = true
    elseif newPos.y < 1
      newPos.y = man.world.height
      cyclicMove = true
    elseif newPos.y > man.world.height
      newPos.y = 1
      cyclicMove = true
    end
  #
  # Organism try step outside of current instance. If near
  # instance is ready, we may teleport him there. We also
  # have to decrease energy to prevent network overload.
  # Energy decrease should be provided on destination Manager.
  # If network is ok and we may send an organism, we have to
  # kill him in current Manager/instance.
  #
  else
    local st = man.status

    if newPos.x < 1
      if !Client.isOk(man.cons.left)  || !Client.request(man.cons.left, RpcApi.RPC_ORG_STEP_LEFT, organism) st.rps +=1; return false end
      freeze = true
    elseif newPos.x > man.world.width
      if !Client.isOk(man.cons.right) || !Client.request(man.cons.right, RpcApi.RPC_ORG_STEP_RIGHT, organism) st.rps +=1; return false end
      freeze = true
    elseif newPos.y < 1
      if !Client.isOk(man.cons.up)    || !Client.request(man.cons.up, RpcApi.RPC_ORG_STEP_UP, organism) st.rps +=1; return false end
      freeze = true
    elseif newPos.y > man.world.height
      if !Client.isOk(man.cons.down)  || !Client.request(man.cons.down, RpcApi.RPC_ORG_STEP_DOWN, organism) st.rps +=1; return false end
      freeze = true
    end
    #
    # We have to freeze the organism and throw an error to interrupt
    # his current runned code
    #
    if freeze
      # TODO: possibly slow code!
      _freezeOrganism(man, findfirst((t) -> t.organism === organism, man.tasks))
      error("Organism is interrupted, because of freeze")
    end
  end
  #
  # Destination position, where organism wants step to is not
  # empty. Other organism or an energy block is there.
  #
  idNew = Manager._getPosId(man, newPos)
  if idOld !== idNew && !Manager._isFree(man, newPos) return false end
  #
  # newPos - new organism position
  # organism.pos - old organism position
  #
  if idOld !== idNew
    delete!(man.positions, Manager._getPosId(man, organism.pos))
    man.positions[idNew] = organism
    #
    # Using this command, we optimize amount of transferred data
    # through network and remove blinks in visualizer, because we
    # transfet only new coordinates, color and direction
    #
    if cyclicMove
      World.setEnergy(man.world, organism.pos, UInt32(Dots.INDEX_EMPTY))
      World.setEnergy(man.world, newPos, UInt32(organism.color))
    else
     World.moveEnergy(man.world, organism.pos, newPos, UInt32(organism.color))
    end
    organism.pos = newPos
  #
  # The position didn't change, so only color should be updated
  #
  else
    World.setEnergy(man.world, newPos, UInt32(organism.color))
  end

  true
end
#
# Makes orhanism clone and apply mutations to it (child).
# Finds free point for new organism and returns these coordinates.
# If no free space, then returns false. It checks four (4) places
# around current organism's position: up, down, left and right.
# @param man Manager data type
# @param organism Parent organism
#
function _onClone(man::ManagerTypes.ManagerData, organism::Creature.Organism)
  if length(man.tasks) >= man.cfg.WORLD_MAX_ORGANISMS return false end
  #
  # First, we have to find free point near the organism to put
  # clone in. It's possible, that all places are filled.
  #
  pos = World.getNearFreePos(man.world, organism.pos)
  if pos === false return false end
  #
  # Creates new organism and apply mutations to him.
  #
  crTask = Manager._createOrganism(man, organism, pos)
  if crTask === false return false end
  #
  # Clonning means additional energy waste
  #
  local energy::Int      = div(organism.energy, 2) # minus 50% of energy
  organism.energy       -= energy
  crTask.organism.energy = energy
  if energy > 0
    Mutator.mutate(man.cfg, crTask.organism, crTask.organism.mutationsOnClone)
    man.status.mps += 1
  end

  true
end
#
# Returns an energy amount in specified point in a world.
# @param org Organism
# @param pos Position to check
# @param retObj Special object for return value
#
function _onGetEnergy(man::ManagerTypes.ManagerData, org::Creature.Organism, pos::Helper.Point, retObj::Helper.RetObj)
  local id::Int = Manager._getPosId(man, pos)
  #
  # Other organism at this position
  #
  if haskey(man.positions, id)
    retObj.ret = man.positions[id].energy
  #
  # Energy block at this position
  #
  else
    retObj.ret = World.getEnergy(man.world, pos)
  end
end
#
# Grabs energy on the left side of the organism
# @param man Manager data type
# @param org Organism
# @param amount Amount of energy we want to grab
# @param retObj Special object for return value
#
function _onGrabLeft(man::ManagerTypes.ManagerData, org::Creature.Organism, amount::Int, retObj::Helper.RetObj)
  _onGrab(man, org, amount, Helper.Point(org.pos.x - 1, org.pos.y), retObj)
end
#
# Grabs energy on the right side of the organism
# @param man Manager data type
# @param org Organism
# @param amount Amount of energy we want to grab
# @param retObj Special object for return value
#
function _onGrabRight(man::ManagerTypes.ManagerData, org::Creature.Organism, amount::Int, retObj::Helper.RetObj)
  _onGrab(man, org, amount, Helper.Point(org.pos.x + 1, org.pos.y), retObj)
end
#
# Grabs energy on the up side of the organism
# @param man Manager data type
# @param org Organism
# @param amount Amount of energy we want to grab
# @param retObj Special object for return value
#
function _onGrabUp(man::ManagerTypes.ManagerData, org::Creature.Organism, amount::Int, retObj::Helper.RetObj)
  _onGrab(man, org, amount, Helper.Point(org.pos.x, org.pos.y - 1), retObj)
end
#
# Grabs energy on the down side of the organism
# @param man Manager data type
# @param orgId Unique organism id
# @param amount Amount of energy we want to grab
# @param retObj Special object for return value
#
function _onGrabDown(man::ManagerTypes.ManagerData, org::Creature.Organism, amount::Int, retObj::Helper.RetObj)
  _onGrab(man, org, amount, Helper.Point(org.pos.x, org.pos.y + 1), retObj)
end
#
# Handler of "stepleft" event. Checks a possibility to step left.
# New position will be set to "retObj.pos" property.
# @param man Manager data type
# @param orgId Unique organism id
#
function _onStepLeft(man::ManagerTypes.ManagerData, org::Creature.Organism)
  _onStep(man, org, Helper.Point(org.pos.x - 1, org.pos.y))
end
#
# Handler of "stepright" event. Checks a possibility to step right.
# New position will be set to "retObj.pos" property.
# @param man Manager data type
# @param orgId Unique organism id
#
function _onStepRight(man::ManagerTypes.ManagerData, org::Creature.Organism)
  _onStep(man, org, Helper.Point(org.pos.x + 1, org.pos.y))
end
#
# Handler of "stepup" event. Checks a possibility to step up.
# New position will be set to "retObj.pos" property.
# @param man Manager data type
# @param orgId Unique organism id
#
function _onStepUp(man::ManagerTypes.ManagerData, org::Creature.Organism)
  _onStep(man, org, Helper.Point(org.pos.x, org.pos.y - 1))
end
#
# Handler of "stepdown" event. Checks a possibility to step down.
# @param man Manager data type
# @param orgId Unique organism id
#
function _onStepDown(man::ManagerTypes.ManagerData, org::Creature.Organism)
  _onStep(man, org, Helper.Point(org.pos.x, org.pos.y + 1))
end
#
# Grabs energy on specified point. It grabs the energy and
# checks if other organism was at that position. If so, then
# it decrease an energy of this other organism.
# @param man Manager data type
# @param organism Organism, who grabs
# @param amount Amount of energy he wants to grab
# @param pos Point where we should check the energy
# @param retObj Special object for return value
#
function _onGrab(man::ManagerTypes.ManagerData, organism::Creature.Organism, amount::Int, pos::Helper.Point, retObj::Helper.RetObj)
  local id::Int = Manager._getPosId(man, pos)
  local org::Creature.Organism

  if haskey(man.cons.frozen, organism.id)
    return retObj.ret = 0
  end
  #
  # If other organism at the position of the check,
  # then grab energy from it
  #
  if haskey(man.positions, id)
    org = man.positions[id]
    #
    # Current organism wants give an energy
    #
    if amount < 1
      if organism.energy <= abs(amount)
        # TODO: possibly slow code!
        _killOrganism(man, findfirst((t) -> t.organism === organism, man.tasks))
        amount = -organism.energy
      end
      org.energy  = min(org.energy - amount, man.cfg.ORGANISM_MAX_ENERGY)
      retObj.ret  = amount
    elseif org.energy > amount
      org.energy -= amount
      retObj.ret  = amount
    elseif org.energy <= amount
      # TODO: possibly, slow code. To fix this we have to
      # TODO: use map instead array for tasks (man.tasks)
      _killOrganism(man, findfirst((t) -> t.organism === org, man.tasks))
      retObj.ret = org.energy
    end
  else
    retObj.ret = World.grabEnergy(man.world, pos, UInt32(amount))
  end

  retObj.ret
end
#
# Checks if specified position ("pos") has no energy and we may
# move the organism there. If this position has an energy, then
# the same position will be set to "retObj.pos".
# @param man Manager data type
# @param organism Organism hwo grabs
# @param pos Point where we should check the energy
#
function _onStep(man::ManagerTypes.ManagerData, organism::Creature.Organism, pos::Helper.Point)
  if !haskey(man.cons.frozen, organism.id)
    _moveOrganism(man, pos, organism)
    #
    # We have to explain here a little bit. This yieldto() switches current
    # context to man.task. It means that not all the code of current organism
    # will be run. It also solves a problem of parallel organisms runningand
    # smooth organisms moving in a visualizer.
    #
    yieldto(man.task)
  end
end
#
# Creates new organism and binds event handlers to him. It also
# finds free point in a world, where organism will start living.
# If add === true, we have to add it to organisms pool.
# @param man Manager data type
# @param org Organism we have to copy. Optional.
# @param pos Optional. Position of organism.
# @param add We need just add existing organism to the world
# @return {ManagerTypes.OrganismTask}
# TODO: set type for arguments
# TODO: this method is slow! We have to optimize it
function _createOrganism(man::ManagerTypes.ManagerData, organism = nothing, pos::Helper.Point = Helper.Point(0,0), add::Bool = false)
  pos = organism !== nothing && Helper.empty(pos) ? World.getNearFreePos(man.world, organism.pos) : (Helper.empty(pos) ? World.getFreePos(man.world) : pos)
  if pos === false return false end
  local id::UInt = man.organismId
  # TODO: deepcopy() call is very slow!!! must be optimized
  local org::Creature.Organism = organism === nothing ? Creature.create(man.cfg, id, pos) : add ? organism : Creature.create(man.cfg, organism)
  local task::Task = Task(() -> Creature.born(org, man.cfg, man.task))
  local oTask::ManagerTypes.OrganismTask = ManagerTypes.OrganismTask(id, task, org)

  org.pos = pos
  #
  # Because of deepcopy(), we have to remove copied handlers
  #
  bindEvents(man, org)
  # TODO: clonning is under question now...
  #Event.on(org.observer, "clone",     _onClone    )
  #
  # Shows organism
  #
  _moveOrganism(man, pos, org)
  #
  # Adds organism to organisms pool
  #
  man.organismId += 1
  man.organisms[id] = org
  man.positions[_getPosId(man, org.pos)] = org
  push!(man.tasks, oTask)
  man.totalOrganisms += 1
  msg(man, id, "born")

  oTask
end
