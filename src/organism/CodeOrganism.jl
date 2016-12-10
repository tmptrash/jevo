#
# This file is a part of Code module. Contains Code functions related
# to Organism. For example eating, moving, working with memory,...
#
# @author DeadbraiN
#
import Helper
import Config

export lookAt
export eatLeft
export eatRight
export eatUp
export eatDown
export toMem
export fromMem
export idLeft
export idRight
export idUp
export idDown
#
# @cmd
# @line
# Returns energy amount in specified point in a world
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr} New expression or Expr(:nothing) if skipped
#
function lookAt(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local varSym::Symbol = @randVar(org, pos, Int)
  local xSym::Symbol   = @randVar(org, pos, Int16)
  local ySym::Symbol   = @randVar(org, pos, Int16)

  if (varSym === :nothing || xSym === :nothing) return Expr(:nothing) end
  :($varSym=Int(Creature.getEnergy(o, Int($xSym), Int($ySym))))
end
#
# @cmd
# @line
# Is called when organism bites on the left. Format: var = eatLeft(amount::Int8):Int8
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function eatLeft(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local amount::Symbol = @randVar(org, pos, Int8)
  if amount === :nothing return Expr(:nothing) end
  #
  # If we pass previous line, then at least one Int8 var exists
  #
  local var::Symbol = @randVar(org, pos, Int8)

  :($var = Int8(Creature.eatLeft(c, o, Int($(amount)))))
end
#
# @cmd
# @line
# Is called when organism bites on the right. Format: var = eatRight(amount::Int8):Int8
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function eatRight(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local amount::Symbol = @randVar(org, pos, Int8)
  if amount === :nothing return Expr(:nothing) end
  #
  # If we pass previous line, then at least one Int8 var exists
  #
  local var::Symbol = @randVar(org, pos, Int8)

  :($var = Int8(Creature.eatRight(c, o, Int($(amount)))))
end
#
# @cmd
# @line
# Is called when organism bites up. Format: var = eatUp(amount::Int8):Int8
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function eatUp(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local amount::Symbol = @randVar(org, pos, Int8)
  if amount === :nothing return Expr(:nothing) end
  #
  # If we pass previous line, then at least one Int8 var exists
  #
  local var::Symbol = @randVar(org, pos, Int8)

  :($var = Int8(Creature.eatUp(c, o, Int($(amount)))))
end
#
# @cmd
# @line
# Is called when organism bites down. Format: var = eatDown(amount::Int8):Int8
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function eatDown(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local amount::Symbol = @randVar(org, pos, Int8)
  if amount === :nothing return Expr(:nothing) end
  #
  # If we pass previous line, then at least one Int8 var exists
  #
  local var::Symbol = @randVar(org, pos, Int8)

  :($var = Int8(Creature.eatDown(c, o, Int($(amount)))))
end
#
# @cmd
# @line
# Is called when organism make step left
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function stepLeft(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local var::Symbol = @randVar(org, pos, Bool)
  if var === :nothing return Expr(:nothing) end
  :($var = Creature.stepLeft(o))
end
#
# @cmd
# @line
# Is called when organism make step right
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function stepRight(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local var::Symbol = @randVar(org, pos, Bool)
  if var === :nothing return Expr(:nothing) end
  :($var = Creature.stepRight(o))
end
#
# @cmd
# @line
# Is called when organism make step up
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function stepUp(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local var::Symbol = @randVar(org, pos, Bool)
  if var === :nothing return Expr(:nothing) end
  :($var = Creature.stepUp(o))
end
#
# @cmd
# @line
# Is called when organism make step down
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function stepDown(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local var::Symbol = @randVar(org, pos, Bool)
  if var === :nothing return Expr(:nothing) end
  :($var = Creature.stepDown(o))
end
#
# @cmd
# @line
# Saves custom value to organism's private memory
# @param cfg Global configuration type
# @param org Organism we are working with
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function toMem(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
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
# @param cfg Global configuration type
# @param org Organism we are working with
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function fromMem(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
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
#
# @cmd
# @line
# Obtains unique id of organism from the left. UInt id will
# be converted to Int type. If there is no organism on the left,
# it will obtain 0.
# @param cfg Global configuration type
# @param org Organism we are working with
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function idLeft(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local var::Symbol = @randVar(org, pos, Int)
  if var === :nothing return Expr(:nothing) end
  :($var=Int(Creature.idLeft(o)))
end
#
# @cmd
# @line
# Obtains unique id of organism from the right. UInt id will
# be converted to Int type. If there is no organism on the right,
# it will obtain 0.
# @param cfg Global configuration type
# @param org Organism we are working with
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function idRight(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local var::Symbol = @randVar(org, pos, Int)
  if var === :nothing return Expr(:nothing) end
  :($var=Int(Creature.idRight(o)))
end
#
# @cmd
# @line
# Obtains unique id of organism from the above. UInt id will
# be converted to Int type. If there is no organism on the above,
# it will obtain 0.
# @param cfg Global configuration type
# @param org Organism we are working with
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function idUp(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local var::Symbol = @randVar(org, pos, Int)
  if var === :nothing return Expr(:nothing) end
  :($var=Int(Creature.idUp(o)))
end
#
# @cmd
# @line
# Obtains unique id of organism from the right. UInt id will
# be converted to Int type. If there is no organism on the right,
# it will obtain 0.
# @param cfg Global configuration type
# @param org Organism we are working with
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function idDown(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local var::Symbol = @randVar(org, pos, Int)
  if var === :nothing return Expr(:nothing) end
  :($var=Int(Creature.idDown(o)))
end
