#
# This file is a part of Code module. Contains Code functions related 
# to Organism. For example eating, moving, working with memory,...
#
# @author DeadbraiN
#
export lookAt
export eatLeft
export eatRight
export eatUp
export eatDown
export clone
export toMem
export fromMem
#
# @cmd
# @line
# Returns energy amount in specified point in a world
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr} New expression or Expr(:nothing) if skipped
#
function lookAt(org::Creature.Organism, pos::Code.Pos)
  local varSym::Symbol = @randVar(org, pos, Int)
  local xSym::Symbol   = @randVar(org, pos, Int16)
  local ySym::Symbol   = @randVar(org, pos, Int16)

  if varSym === :nothing || xSym === :nothing return Expr(:nothing) end
  :($varSym=Int(Creature.getEnergy(o, Int($xSym), Int($ySym))))
end
#
# @cmd
# @line
# Is called when organism bites on the left
# @param org Organism we have to mutate
# @param pos Position in code
#
function eatLeft(org::Creature.Organism, pos::Code.Pos)
  local amount::Symbol = @randVar(org, pos, Int8)
  if amount === :nothing return Expr(:nothing) end
  :(Creature.eatLeft(o, Int($(amount))))
end
#
# @cmd
# @line
# Is called when organism bites on the right
# @param org Organism we have to mutate
# @param pos Position in code
#
function eatRight(org::Creature.Organism, pos::Code.Pos)
  local amount::Symbol = @randVar(org, pos, Int8)
  if amount === :nothing return Expr(:nothing) end
  :(Creature.eatRight(o, Int($(amount))))
end
#
# @cmd
# @line
# Is called when organism bites up
# @param org Organism we have to mutate
# @param pos Position in code
#
function eatUp(org::Creature.Organism, pos::Code.Pos)
  local amount::Symbol = @randVar(org, pos, Int8)
  if amount === :nothing return Expr(:nothing) end
  :(Creature.eatUp(o, Int($(amount))))
end
#
# @cmd
# @line
# Is called when organism bites down
# @param org Organism we have to mutate
# @param pos Position in code
#
function eatDown(org::Creature.Organism, pos::Code.Pos)
  local amount::Symbol = @randVar(org, pos, Int8)
  if amount === :nothing return Expr(:nothing) end
  :(Creature.eatDown(o, Int($(amount))))
end
#
# @cmd
# @line
# Is called when organism make step left
# @param org Organism we have to mutate
# @param pos Position in code
#
function stepLeft(org::Creature.Organism, pos::Code.Pos)
  :(Creature.stepLeft(o))
end
#
# @cmd
# @line
# Is called when organism make step right
# @param org Organism we have to mutate
# @param pos Position in code
#
function stepRight(org::Creature.Organism, pos::Code.Pos)
  :(Creature.stepRight(o))
end
#
# @cmd
# @line
# Is called when organism make step up
# @param org Organism we have to mutate
# @param pos Position in code
#
function stepUp(org::Creature.Organism, pos::Code.Pos)
  :(Creature.stepUp(o))
end
#
# @cmd
# @line
# Is called when organism make step down
# @param org Organism we have to mutate
# @param pos Position in code
#
function stepDown(org::Creature.Organism, pos::Code.Pos)
  :(Creature.stepDown(o))
end
#
# @cmd
# @line
# Saves custom value to organism's private memory
# @param org Organism we are working with
# @param pos Position in code
# @return {Expr|nothing}
#
function toMem(org::Creature.Organism, pos::Code.Pos)
  local typ::DataType = @randType()
  local key::Symbol   = @randVar(org, pos, Int16)
  local val::Symbol   = @randVar(org, pos, Int16)

  if key === :nothing return Expr(:nothing) end
  :(o.mem[$key]=$val)
end
#
# @cmd
# @line
# Extracts custom value from organism's private memory
# @param org Organism we are working with
# @param pos Position in code
# @return {Expr|nothing}
#
function fromMem(org::Creature.Organism, pos::Code.Pos)
  local typ::DataType = @randType()
  local key::Symbol   = @randVar(org, pos, Int16)
  local val::Symbol   = @randVar(org, pos, Int16)

  if key === :nothing return Expr(:nothing) end
  #
  # We don't need to create separate block here, because
  # this is one code line.
  #
  :($val=haskey(o.mem, $key) ? o.mem[$key] : $val)
end