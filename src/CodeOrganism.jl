#
# This fiel is a part of Code module. Contains Code functions related 
# to Organism. For example eating, moving, working with memory,...
#
# @author DeadbraiN
#
export getEnergy
export eatLeft
export eatRight
export eatUp
export eatDown
export clone
export toMem
export fromMem

#
# @cmd
# Returns energy amount in specified point in a world
# @param org Organism we have to mutate
# @param fn Parent(current) function unique name
# @param block Current flock within fn function
# @return {Expr} New expression or Expr(:nothing) if skipped
#
function getEnergy(org::Creature.Organism, fn::ASCIIString, block::Expr)
  local varSym::Symbol = @getVar(org, fn, Int)
  local xSym::Symbol   = @getVar(org, fn, Int16)
  local ySym::Symbol   = @getVar(org, fn, Int16)

  if varSym === :nothing || xSym === :nothing return Expr(:nothing) end

  :($varSym=Int(Creature.getEnergy(o, Int($xSym), Int($ySym))))
end
#
# @cmd
# Is called when organism bites on the left
# @param org Organism we have to mutate
# @param fn Parent(current) function unique name
# @param block Current flock within fn function
#
function eatLeft(org::Creature.Organism, fn::ASCIIString, block::Expr)
  :(Creature.energyLeft(o))
end
#
# @cmd
# Is called when organism bites on the right
# @param org Organism we have to mutate
# @param fn Parent(current) function unique name
# @param block Current flock within fn function
#
function eatRight(org::Creature.Organism, fn::ASCIIString, block::Expr)
  :(Creature.energyRight(o))
end
#
# @cmd
# Is called when organism bites up
# @param org Organism we have to mutate
# @param fn Parent(current) function unique name
# @param block Current flock within fn function
#
function eatUp(org::Creature.Organism, fn::ASCIIString, block::Expr)
  :(Creature.energyUp(o))
end
#
# @cmd
# Is called when organism bites down
# @param org Organism we have to mutate
# @param fn Parent(current) function unique name
# @param block Current flock within fn function
#
function eatDown(org::Creature.Organism, fn::ASCIIString, block::Expr)
  :(Creature.energyDown(o))
end
#
# @cmd
# Is called when organism make step left
# @param org Organism we have to mutate
# @param fn Parent(current) function unique name
# @param block Current flock within fn function
#
function stepLeft(org::Creature.Organism, fn::ASCIIString, block::Expr)
  :(Creature.stepLeft(o))
end
#
# @cmd
# Is called when organism make step right
# @param org Organism we have to mutate
# @param fn Parent(current) function unique name
# @param block Current flock within fn function
#
function stepRight(org::Creature.Organism, fn::ASCIIString, block::Expr)
  :(Creature.stepRight(o))
end
#
# @cmd
# Is called when organism make step up
# @param org Organism we have to mutate
# @param fn Parent(current) function unique name
# @param block Current flock within fn function
#
function stepUp(org::Creature.Organism, fn::ASCIIString, block::Expr)
  :(Creature.stepUp(o))
end
#
# @cmd
# Is called when organism make step down
# @param org Organism we have to mutate
# @param fn Parent(current) function unique name
# @param block Current flock within fn function
#
function stepDown(org::Creature.Organism, fn::ASCIIString, block::Expr)
  :(Creature.stepDown(o))
end
# TODO: at least now we don't need clonning from script. It should
# TODO: be done automatically by Manager module
# @cmd
# Makes organism clone and places it near original one
# @param org Organism we have to mutate
# @param fn Parent(current) function unique name
# @param block Current flock within fn function
#
#=
function clone(org::Creature.Organism, fn::ASCIIString, block::Expr)
  :(Creature.clone(o))
end
=#
#
# @cmd
# Saves custom value to organism's private memory
# @param org Organism we are working with
# @param fn Parent(current) function unique name
# we are working in
# @param block Current flock within fn function
# @return {Expr|nothing}
#
function toMem(org::Creature.Organism, fn::ASCIIString, block::Expr)
  local typ::DataType = @getType()
  local key::Symbol   = @getVar(org, fn, Int16)
  local val::Symbol   = @getVar(org, fn, Int16)

  if key === :nothing return Expr(:nothing) end

  :(o.mem[$key]=$val)
end
#
# @cmd
# Extracts custom value from organism's private memory
# @param org Organism we are working with
# @param fn Parent(current) function unique name
# we are working in
# @param block Current flock within fn function
# @return {Expr|nothing}
#
function fromMem(org::Creature.Organism, fn::ASCIIString, block::Expr)
  local typ::DataType = @getType()
  local key::Symbol   = @getVar(org, fn, Int16)
  local val::Symbol   = @getVar(org, fn, Int16)

  if key === :nothing return Expr(:nothing) end
  #
  # We don't need to create separate block here, because
  # this is one code line.
  #
  :($val=haskey(o.mem, $key) ? o.mem[$key] : $val)
end