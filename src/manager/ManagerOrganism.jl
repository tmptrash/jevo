#
# This is a part of Manager module. This part is related to
# organisms logic and behavior.
#
# @author DeadbraiN
#
# Dependencies
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
# Shows organism related message
# @param man Manager data type
# @param id Unique orgainsm identifier
# @param msg Organism's message
#
function msg(man::ManagerTypes.ManagerData, id::UInt, msg::String)
  if man.cfg.modeQuiet < Config.MODE_QUIET_IMPORTANT Helper.info(string("org-", id, " ", msg)) end
end
#
# Binds handlers to organism's events
# @param man Manager data type
# @param org Organism we are working with
#
function bindEvents(man::ManagerTypes.ManagerData, org::Creature.Organism)
  Event.clear(org.observer)
  Event.on(org.observer, EVENT_GET_ENERGY, (org::Creature.Organism, pos::Helper.Point, retObj::Helper.RetObj)->_onGetEnergy(man, org, pos, retObj))
  Event.on(org.observer, EVENT_GRAB_LEFT,  (org::Creature.Organism, amount::Int, retObj::Helper.RetObj)->_onGrabLeft(man, org, amount, retObj))
  Event.on(org.observer, EVENT_GRAB_RIGHT, (org::Creature.Organism, amount::Int, retObj::Helper.RetObj)->_onGrabRight(man, org, amount, retObj))
  Event.on(org.observer, EVENT_GRAB_UP,    (org::Creature.Organism, amount::Int, retObj::Helper.RetObj)->_onGrabUp(man, org, amount, retObj))
  Event.on(org.observer, EVENT_GRAB_DOWN,  (org::Creature.Organism, amount::Int, retObj::Helper.RetObj)->_onGrabDown(man, org, amount, retObj))
  Event.on(org.observer, EVENT_STEP_LEFT,  (org::Creature.Organism, retObj::Helper.RetObj)->retObj.ret = _onStepLeft(man, org))
  Event.on(org.observer, EVENT_STEP_RIGHT, (org::Creature.Organism, retObj::Helper.RetObj)->retObj.ret = _onStepRight(man, org))
  Event.on(org.observer, EVENT_STEP_UP,    (org::Creature.Organism, retObj::Helper.RetObj)->retObj.ret = _onStepUp(man, org))
  Event.on(org.observer, EVENT_STEP_DOWN,  (org::Creature.Organism, retObj::Helper.RetObj)->retObj.ret = _onStepDown(man, org))
  Event.on(org.observer, EVENT_PROP_LEFT,  (org::Creature.Organism, retObj::Helper.RetObj)->_onPropLeft(man, org, retObj))
  Event.on(org.observer, EVENT_PROP_RIGHT, (org::Creature.Organism, retObj::Helper.RetObj)->_onPropRight(man, org, retObj))
  Event.on(org.observer, EVENT_PROP_UP,    (org::Creature.Organism, retObj::Helper.RetObj)->_onPropUp(man, org, retObj))
  Event.on(org.observer, EVENT_PROP_DOWN,  (org::Creature.Organism, retObj::Helper.RetObj)->_onPropDown(man, org, retObj))
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
  local cloneAfter::Int  = man.cfg.orgClonePeriod
  local needClone ::Bool = cloneAfter === 0 ? false : counter % cloneAfter === 0
  local tasks     ::Array{ManagerTypes.OrganismTask, 1} = man.tasks
  local len       ::Int = length(tasks)
  local curLen    ::Int = len
  local task      ::ManagerTypes.OrganismTask
  local org       ::Creature.Organism
  local probIndex ::Int
  local probs     ::Array{UInt, 1}
  local cfg       ::Config.ConfigData = man.cfg
  local i         ::Int = len
  local checkAge  ::Bool = cfg.orgAlivePeriod > 0
  local maxAge    ::Float64 = Float64(cfg.orgAlivePeriod)
  local checkRainMutationPeriod::Bool = cfg.orgRainMutationPeriod > 0
  local checkEnergySpendPeriod::Bool = cfg.orgEnergySpendPeriod > 0
  #
  # This block runs one iteration for all available organisms.
  # By one iteration i mean that every organism from a list
  # run peace of it's script - code between two produce() calls.
  #
  #print("i: ")
  while i > 0
    #print(i, ",")
    @inbounds task = tasks[i]
    org = task.organism
    #
    # Because this loop affects porformance, we have call yield()
    # here and not in main Manager while loop.
    #
    if needYield yield(); Event.fire(man.obs, EVENT_YIELD, man) end
    #
    # We have to wait while all clients are ready for streaming. This
    # is because the error in serializer. See issue for details:
    # https://github.com/JuliaLang/julia/issues/16746. See Manager
    # main loop for details.
    #
    if man.cons.streamInit::Bool return true end
    #
    # Switches to task of current organism
    #
    if org.alive
      yieldto(task.task)
      Event.fire(man.obs, EVENT_YIELDTO, man)
    else
      i-=1
      continue
    end
    #
    # This is how organisms die if their age is bigger then some
    # predefined config value (orgAlivePeriod)
    #
    if checkAge && org.age >= maxAge && ManagerTypes.orgAmount(man) > cfg.worldMinOrgs
      #println(org.id, " killed, because of age")
      _killOrganism(man, i)
      i-=1
      continue
    end
    #
    # Current organism could die during running it's code, for
    # example during giving it's energy to another organism (altruism)
    #
    if org.energy < 1 && org.alive #=println(org.id, " killed, because of energy");=# _killOrganism(man, i); i-=1; continue end
    #
    # This is how we mutate organisms during their life.
    # Mutations occures according to organisms settings.
    # If mutationPeriod or mutationPercent set to 0, it
    # means that mutations during leaving are disabled.
    # Mutation will be automatically applied if organism
    # doesn't contain any code line. This line must be
    # last in organisms loop.
    #
    if checkRainMutationPeriod && org.mutationPeriod > 0 && counter % org.mutationPeriod === 0 _mutate(man, task, org.mutationPercent, false) end
    #
    # Updates min/max values
    #
    _updateMinMax(man, org)
    #
    # Event about one organism has processed (runned)
    #
    Event.fire(man.obs, EVENT_ORGANISM, man, org)
    #
    # Here shouldn't be a code, after mutations, because current
    # task may be updated with new one.
    #
    i -= 1
  end
  curLen = ManagerTypes.orgAmount(man)
  #
  # After all organisms die, we have to create next, new population
  #
  if curLen < 1 createOrganisms(man) end
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
  if needClone && curLen > 0 && curLen < cfg.worldMaxOrgs _updateClonning(man, tasks) end
  #
  # This block decreases energy from organisms, because they
  # spend it while leaving.
  #
  if checkEnergySpendPeriod && counter % cfg.orgEnergySpendPeriod === 0
    _updateOrganismsEnergy(man)
  end
  #
  # Resets min/max values
  #
  _resetMinMax(man)
  #println("end")
  true
end
#
# Updates minimum and maximum values for organisms (like energy, codeSize,...)
# @param man Manager data type
# @param org Organism
#
function _updateMinMax(man::ManagerTypes.ManagerData, org::Creature.Organism)
  #local fit::Int = org.energy * org.mutations
  #
  # This is how we find maximum energetic organism
  #
  #if fit > man.maxFit man.maxFit = fit end
end
#
# This method should be called at the end of every iteration, because
# during next iteration max/min values may be different
# @param man Manager data type
#
function _resetMinMax(man::ManagerTypes.ManagerData)
  #man.maxFit = UInt(0)
end
#
# Updates clonning of organisms. Chooses organism for clonning according
# to energy * diversity criterias. Energy should be more valuable in this
# process, because diversity (mutations) are very simple to obtain and
# population will die, if diversity and energy will have similar affection
# on natural selection mechanism.
# @param man Manager data type
# @param org Organism
# @return {Bool} Clonning was successful or not
#
function _updateClonning(man::ManagerTypes.ManagerData, tasks::Array{ManagerTypes.OrganismTask, 1})
  #println("0, ", length(tasks))
  local probIndex::Int
  local orgAmount::Int = length(tasks)
  @inbounds local org1::Creature.Organism = tasks[Helper.fastRand(orgAmount)].organism
  @inbounds local org2::Creature.Organism = tasks[Helper.fastRand(orgAmount)].organism
  #
  # These conditions find the winner in tournament. The winner
  # will be a father of a new child
  #
  if !org1.alive && !org2.alive return false end
  #println("1")
  if (org2.alive && !org1.alive) || (org2.energy * org2.mutations > org1.energy * org1.mutations)
    org1, org2 = (org2, org1)
    #println("1-1")
  end
  if org2.alive && ManagerTypes.orgAmount(man) >= man.cfg.worldMaxOrgs #=println(org.id, " killed, because of clone");=# _killOrganism(man, org2.index) end

  _onClone(man, org1)
end
#
# Updates energy of all organisms. Decreases their energy according
# to config (orgEnergySpendPeriod). Removes marked as "delete"
# tasks from man.tasks map.
# @param man Manager data type
#
function _updateOrganismsEnergy(man::ManagerTypes.ManagerData)
  local tasks::Array{ManagerTypes.OrganismTask, 1} = man.tasks
  local org::Creature.Organism
  local i::Int = length(tasks)
  local len::Int = i
  local minOrgs::Int = man.cfg.worldMinOrgs
  local dontKill::Bool = (i < minOrgs)
  local codeSize::Int
  local codeSizeCoef::Int = man.cfg.codeSizeCoef
  local codeMaxSize::Int = man.cfg.codeMaxSize
  local orgGarbagePeriod::Int = man.cfg.orgGarbagePeriod
  local orgCodeSize::Int

  if dontKill return false end
  #
  # We have to go through tasks in reverse way, because we may
  # remove some elements inside while loop.
  #
  while i > 0
    @inbounds if !tasks[i].organism.alive i-=1; continue end
    #
    # if the organism is marked as "removed", we have to delete it
    #
    @inbounds org = tasks[i].organism
    #
    # Energy shouldn't be less then 1
    #
    if !dontKill
      #
      # Orgabism's garbage is not affect on amount of grabbed energy
      #
      orgCodeSize = div(org.codeSize, orgGarbagePeriod)
      #
      # This check is used for limiting organisms code size to codeMaxSize
      # because our CPU's are slow
      #
      if org.codeSize > codeMaxSize codeSize = orgCodeSize * codeSizeCoef
      else codeSize = orgCodeSize end
      if codeSize < 1 codeSize = 1 end
      codeSize = min(org.energy, codeSize)

      Event.fire(man.obs, EVENT_GRAB_ENERGY, man, codeSize)
      if !_decreaseOrganismEnergy(man, org, codeSize)
        dontKill = ManagerTypes.orgAmount(man) <= minOrgs
      end
    end

    i -= 1
  end

  Event.fire(man.obs, EVENT_UPDATE_ENERGY, man)

  true
end
#
# Decreases energy from organism on "amount"
# @param man Manager data type
# @param org Organism
# @param amount Amount of energy we have to decrease
#
function _decreaseOrganismEnergy(man::ManagerTypes.ManagerData, org::Creature.Organism, amount::Int)
  org.energy -= amount
  if org.energy < 1
    #println(org.id, " killed, because of energy decrease")
    _killOrganism(man, org.index)
    return false
  end

  true
end
#
# Marks one organism as "frozen". It means that it will be hidden
# and all other organisms will no ability to interact with him.
# Removing from tasks pool will be provided in _updateOrganismsEnergy()
# @param man Manager data type
# @param i Index of organism's task
#
function _freezeOrganism(man::ManagerTypes.ManagerData, i::Int)
  @inbounds local id::UInt = man.tasks[i].id
  @inbounds local org::Creature.Organism = man.tasks[i].organism
  local oldColor::UInt16 = org.color

  org.color = UInt16(Dots.INDEX_EMPTY)
  Event.clear(org.observer)
  _moveOrganism(man, org.pos, org)
  org.color = oldColor
  delete!(man.positions, Manager._getPosId(man, org.pos))
  delete!(man.organisms, id)
  @inbounds Manager.stopTask(man.tasks[i].task)
  man.cons.frozen[org.id] = org
  msg(man, id, "frozen")
end
#
# Marks one organism as "removed". Deletion will be done in
# _updateOrganismsEnergy() function.
# @param man Manager data type
# @param index Index of organism's task
#
function _killOrganism(man::ManagerTypes.ManagerData, index::Int)
  local tasks::Array{ManagerTypes.OrganismTask, 1} = man.tasks
  @inbounds local org::Creature.Organism = tasks[index].organism
  local energyAfterDeath::UInt16 = UInt16(min(typemax(UInt16), org.energy))

  org.energy = 0
  org.color  = UInt16(Dots.INDEX_EMPTY)
  if !org.alive return false end
  org.alive  = false
  push!(man.killed, index)
  Event.clear(org.observer)
  _moveOrganism(man, org.pos, org)
  delete!(man.positions, Manager._getPosId(man, org.pos))
  delete!(man.organisms, org.id)
  @inbounds Manager.stopTask(man, tasks[index].task)
  msg(man, org.id, "die")
  Event.fire(man.obs, EVENT_KILL_ORGANISM, man, org)

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
  if man.cfg.worldCyclical
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
    if newPos.x < 1
      if !Client.isOk(man.cons.left)  || !Client.request(man.cons.left, RpcApi.RPC_ORG_STEP_LEFT, organism) Event.fire(man.obs, EVENT_REQUEST, man); return false end
      freeze = true
    elseif newPos.x > man.world.width
      if !Client.isOk(man.cons.right) || !Client.request(man.cons.right, RpcApi.RPC_ORG_STEP_RIGHT, organism) Event.fire(man.obs, EVENT_REQUEST, man); return false end
      freeze = true
    elseif newPos.y < 1
      if !Client.isOk(man.cons.up)    || !Client.request(man.cons.up, RpcApi.RPC_ORG_STEP_UP, organism) Event.fire(man.obs, EVENT_REQUEST, man); return false end
      freeze = true
    elseif newPos.y > man.world.height
      if !Client.isOk(man.cons.down)  || !Client.request(man.cons.down, RpcApi.RPC_ORG_STEP_DOWN, organism) Event.fire(man.obs, EVENT_REQUEST, man); return false end
      freeze = true
    end
    #
    # We have to freeze the organism and throw an error to interrupt
    # his current runned code
    #
    if freeze
      # TODO: possibly slow code!
      _freezeOrganism(man, organism.index)
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
    delete!(man.positions, idOld)
    man.positions[idNew] = organism
    #
    # Using this command, we optimize amount of transferred data
    # through network and remove blinks in visualizer, because we
    # transfet only new coordinates, color and direction
    #
    if cyclicMove World.moveEnergy(man.world, organism.pos, newPos, organism, true)
    else World.moveEnergy(man.world, organism.pos, newPos, organism) end
    organism.pos = newPos
  #
  # The position didn't change, so only color should be updated
  #
  else
    World.moveEnergy(man.world, newPos, newPos, organism)
  end

  true
end
#
# Mutates an organism according to his own amount of mutations.
# @param man Instance of manager data type
# @param task Task of organism
# @param mutationPercents Percent of mutations from code size
# @param onClone true if current mutations were applied on clonning
# of organism and not as a rain mutations
#
function _mutate(man::ManagerTypes.ManagerData, task::ManagerTypes.OrganismTask, mutationPercents::Float64, onClone::Bool = true)
  local mutations::Int = Mutator.mutate(man.cfg, task.organism, mutationPercents)

  if mutations > 0
    #
    # Because we have changed current organism's code, we have to
    # update it's task. Otherwise, old, removed code will still be
    # runned, before new code will be running.
    #
    Manager._updateOrgTask(man, task)
    Event.fire(man.obs, EVENT_MUTATIONS, man, task.organism, mutations, onClone)
  end
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
  if organism.energy < 1 return false end
  #println("3")
  #
  # First, we have to find free point near the organism to put
  # clone in. It's possible, that all places are filled.
  #
  pos = World.getNearFreePos(man.world, organism.pos)
  if pos === false return false end
  #println("4")
  #s
  # Creates new organism and apply mutations to him.
  #
  crTask = Manager._createOrganism(man, organism, pos)
  if crTask === false return false end
  #println("5")
  #
  # Clonning means additional energy waste
  #
  local minimum::Bool = ManagerTypes.orgAmount(man) <= man.cfg.worldMinOrgs
  local energy::Int = minimum ? 1 : round(Int, organism.energy * organism.cloneEnergyPercent)
  local before::Int = organism.energy

  if !minimum
    #println("6")
    _decreaseOrganismEnergy(man, organism, energy)
    _decreaseOrganismEnergy(man, crTask.organism, crTask.organism.energy - energy)
  end
  if energy > 0 && crTask.organism.energy > 0
    _mutate(man, crTask, crTask.organism.mutationsOnClonePercent)
    #println("7")
  end

  Event.fire(man.obs, EVENT_CLONE, man, organism.id, crTask.organism.id)
  #println("8!")

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
  local eated::Int = _onGrab(man, org, amount, Helper.Point(org.pos.x - 1, org.pos.y), retObj)
  Event.fire(man.obs, EVENT_EAT_LEFT, man, org, amount, eated)

  eated
end
#
# Grabs energy on the right side of the organism
# @param man Manager data type
# @param org Organism
# @param amount Amount of energy we want to grab
# @param retObj Special object for return value
#
function _onGrabRight(man::ManagerTypes.ManagerData, org::Creature.Organism, amount::Int, retObj::Helper.RetObj)
  local eated::Int = _onGrab(man, org, amount, Helper.Point(org.pos.x + 1, org.pos.y), retObj)
  Event.fire(man.obs, EVENT_EAT_RIGHT, man, org, amount, eated)

  eated
end
#
# Grabs energy on the up side of the organism
# @param man Manager data type
# @param org Organism
# @param amount Amount of energy we want to grab
# @param retObj Special object for return value
#
function _onGrabUp(man::ManagerTypes.ManagerData, org::Creature.Organism, amount::Int, retObj::Helper.RetObj)
  local eated::Int = _onGrab(man, org, amount, Helper.Point(org.pos.x, org.pos.y - 1), retObj)
  Event.fire(man.obs, EVENT_EAT_UP, man, org, amount, eated)

  eated
end
#
# Grabs energy on the down side of the organism
# @param man Manager data type
# @param orgId Unique organism id
# @param amount Amount of energy we want to grab
# @param retObj Special object for return value
#
function _onGrabDown(man::ManagerTypes.ManagerData, org::Creature.Organism, amount::Int, retObj::Helper.RetObj)
  local eated::Int = _onGrab(man, org, amount, Helper.Point(org.pos.x, org.pos.y + 1), retObj)
  Event.fire(man.obs, EVENT_EAT_DOWN, man, org, amount, eated)

  eated
end
#
# Handler of "stepleft" event. Checks a possibility to step left.
# New position will be set to "retObj.pos" property.
# @param man Manager data type
# @param orgId Unique organism id
#
function _onStepLeft(man::ManagerTypes.ManagerData, org::Creature.Organism)
  local stepDone::Bool = _onStep(man, org, Helper.Point(org.pos.x - 1, org.pos.y))
  Event.fire(man.obs, EVENT_STEP_LEFT, man, org, stepDone)

  stepDone
end
#
# Handler of "stepright" event. Checks a possibility to step right.
# New position will be set to "retObj.pos" property.
# @param man Manager data type
# @param orgId Unique organism id
#
function _onStepRight(man::ManagerTypes.ManagerData, org::Creature.Organism)
  local stepDone::Bool = _onStep(man, org, Helper.Point(org.pos.x + 1, org.pos.y))
  Event.fire(man.obs, EVENT_STEP_RIGHT, man, org, stepDone)

  stepDone
end
#
# Handler of "stepup" event. Checks a possibility to step up.
# New position will be set to "retObj.pos" property.
# @param man Manager data type
# @param orgId Unique organism id
#
function _onStepUp(man::ManagerTypes.ManagerData, org::Creature.Organism)
  local stepDone::Bool = _onStep(man, org, Helper.Point(org.pos.x, org.pos.y - 1))
  Event.fire(man.obs, EVENT_STEP_UP, man, org, stepDone)

  stepDone
end
#
# Handler of "stepdown" event. Checks a possibility to step down.
# @param man Manager data type
# @param orgId Unique organism id
#
function _onStepDown(man::ManagerTypes.ManagerData, org::Creature.Organism)
  local stepDone::Bool = _onStep(man, org, Helper.Point(org.pos.x, org.pos.y + 1))
  Event.fire(man.obs, EVENT_STEP_DOWN, man, org, stepDone)

  stepDone
end
#
# Handler of "propleft" event. Checks if we may obtain some property of
# near organism, on the left.
# @param man Manager data type
# @param orgId Unique organism id
# @param retObj Special object for return value
#
function _onPropLeft(man::ManagerTypes.ManagerData, org::Creature.Organism, retObj::Helper.RetObj)
  _onProp(man, org, Helper.Point(org.pos.x - 1, org.pos.y), retObj)
end
#
# Handler of "propright" event. Checks if we may obtain some property of
# near organism, on the right.
# @param man Manager data type
# @param orgId Unique organism id
# @param retObj Special object for return value
#
function _onPropRight(man::ManagerTypes.ManagerData, org::Creature.Organism, retObj::Helper.RetObj)
  _onProp(man, org, Helper.Point(org.pos.x + 1, org.pos.y), retObj)
end
#
# Handler of "propup" event. Checks if we may obtain some property of
# near organism, on the above.
# @param man Manager data type
# @param orgId Unique organism id
# @param retObj Special object for return value
#
function _onPropUp(man::ManagerTypes.ManagerData, org::Creature.Organism, retObj::Helper.RetObj)
  _onProp(man, org, Helper.Point(org.pos.x, org.pos.y - 1), retObj)
end
#
# Handler of "propdown" event. Checks if we may obtain some property of
# near organism, on the below.
# @param man Manager data type
# @param orgId Unique organism id
# @param retObj Special object for return value
#
function _onPropDown(man::ManagerTypes.ManagerData, org::Creature.Organism, retObj::Helper.RetObj)
  _onProp(man, org, Helper.Point(org.pos.x, org.pos.y + 1), retObj)
end
#
# Obtains some property of organism on the specified side. If there is no
# organism near current, will return 0.
# @param man Manager data type
# @param orgId Unique organism id
# @param pos Position of nearest organism, which id we have to get
# @param retObj Special object for return value
#
function _onProp(man::ManagerTypes.ManagerData, org::Creature.Organism, pos::Helper.Point, retObj::Helper.RetObj)
  local id::Int = Manager._getPosId(man, pos)

  if haskey(man.positions, id)
    retObj.ret = getfield(man.positions[id], retObj.ret)
  else
    retObj.ret = nothing
  end

  retObj.ret
end
#
# Grabs energy on specified point. It grabs the energy and
# checks if other organism was at that position. If so, then
# it decrease an energy of this other organism.
# @param man Manager data type
# @param organism Organism, who grabs an energy
# @param amount Amount of energy he wants to grab
# @param pos Point where we should check the energy
# @param retObj Special object for return value
#
function _onGrab(man::ManagerTypes.ManagerData, organism::Creature.Organism, amount::Int, pos::Helper.Point, retObj::Helper.RetObj)
  if haskey(man.cons.frozen, organism.id) || ManagerTypes.orgAmount(man) <= man.cfg.worldMinOrgs return retObj.ret = 0 end
  local newPos::Helper.Point = Helper.Point(pos.x, pos.y)
  local nearId::Int
  local nearOrg::Creature.Organism
  #
  # In case if cyclical mode is on, organism may grab energy
  # outside the world's borders
  #
  if man.cfg.worldCyclical
    if newPos.x < 1 newPos.x = man.world.width
    elseif newPos.x > man.world.width newPos.x = 1
    elseif newPos.y < 1 newPos.y = man.world.height
    elseif newPos.y > man.world.height newPos.y = 1
    end
  end
  nearId = Manager._getPosId(man, newPos)
  #
  # If other organism at the position of the check,
  # then grab energy from him
  #
  if haskey(man.positions, nearId)
    nearOrg = man.positions[nearId]
    #
    # Current organism wants give an energy
    #
    if amount < 0
      if organism.energy <= abs(amount)
        amount = -organism.energy
        #println(org.id, " killed, because of grab energy")
        _killOrganism(man, organism.index)
        retObj.ret  = 0
      else
        retObj.ret = amount
      end
      nearOrg.energy -= amount
    elseif nearOrg.energy > amount
      nearOrg.energy -= amount
      retObj.ret = amount
    elseif nearOrg.energy <= amount
      amount = retObj.ret = nearOrg.energy
      #println(org.id, " killed, because of grab energy 2")
      _killOrganism(man, nearOrg.index)
    end
    Event.fire(man.obs, EVENT_EAT_ORGANISM, man, amount)
  else
    #
    # Organism wants to get an energy, but no other organisms around
    #
    retObj.ret = Int(amount > 0 ? World.grabEnergy(man.world, newPos, UInt16(amount)) : 0)
    if retObj.ret > 0 Event.fire(man.obs, EVENT_EAT_ENERGY, man, retObj.ret) end
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
  local stepDone::Bool = false

  if organism.alive && !haskey(man.cons.frozen, organism.id)
    stepDone = _moveOrganism(man, pos, organism)
    #
    # We have to explain this a little bit. This yieldto() switches current
    # context to man.task. It means that not all the code of current organism
    # will be run. It also solves a problem of parallel organisms runningand
    # smooth organisms moving in a visualizer.
    #
    yieldto(man.task)
  end

  stepDone
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
#
function _createOrganism(man::ManagerTypes.ManagerData, organism = nothing, pos::Helper.Point = Helper.Point(0,0), add::Bool = false)
  pos = organism !== nothing && Helper.empty(pos) ? World.getNearFreePos(man.world, organism.pos) : (Helper.empty(pos) ? World.getFreePos(man.world) : pos)
  if pos === false return false end
  #
  # No place for new organisms yet
  #
  if length(man.killed) < 1 return false end
  local index::Int = last(man.killed)
  local id::UInt = man.organismId
  local org::Creature.Organism = organism === nothing ? Creature.create(man.cfg, index, id, pos) : add ? organism : Creature.create(organism, man.cfg, index, id, pos)
  local oTask::ManagerTypes.OrganismTask = ManagerTypes.OrganismTask(id, man.task, org)
  Manager._updateOrgTask(man, oTask)

  org.pos = pos
  #
  # Because of deepcopy(), we have to remove copied handlers
  #
  bindEvents(man, org)
  # TODO: clonning is under question now...
  #Event.on(org.observer, EVENT_CLONE,     _onClone    )
  #
  # Shows organism
  #
  _moveOrganism(man, pos, org)
  #
  # Adds organism to organisms pool
  #
  man.organismId += 1
  man.totalOrganisms += 1
  man.organisms[id] = org
  man.positions[_getPosId(man, org.pos)] = org
  man.tasks[index] = oTask
  pop!(man.killed)
  msg(man, id, "born")
  Event.fire(man.obs, EVENT_BORN_ORGANISM, man, org)

  oTask
end
