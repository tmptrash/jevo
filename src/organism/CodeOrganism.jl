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
export stepLeft
export stepRight
export stepUp
export stepDown
export toMem
export fromMem
export idLeft
export idRight
export idUp
export idDown
export energyLeft
export energyRight
export energyUp
export energyDown
export myColor
export myX
export myY
export codeSizeLeft
export codeSizeRight
export codeSizeUp
export codeSizeDown
#
# Divider for "for" operator
#
const FOR_DIVIDER = f16(655.0)
#
# @cmd
# @line
# Returns energy amount in specified point in a world
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)} New expression or Expr(:nothing) if skipped
#
function lookAt(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  :($(@randVar()) = Creature.getEnergy(o, $(@randVar()), $(@randVar())))
end
#
# @cmd
# @line
# Is called when organism bites on the left. Format: var_xx = eatLeft(var_xx):Float16
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr}
#
function eatLeft(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  :($(@randVar()) = Creature.eatLeft(c, o, $(@randVar())))
end
#
# @cmd
# @line
# Is called when organism bites on the right. Format: var_xx = eatRight(cfg.orgEatSize):Float16
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr}
#
function eatRight(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  :($(@randVar()) = Creature.eatRight(c, o, $(@randVar())))
end
#
# @cmd
# @line
# Is called when organism bites up. Format: var_xx = eatUp(cfg.orgEatSize):Float16
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr}
#
function eatUp(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  :($(@randVar()) = Creature.eatUp(c, o, $(@randVar())))
end
#
# @cmd
# @line
# Is called when organism bites down. Format: var_xx = eatDown(cfg.orgEatSize):Float16
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr}
#
function eatDown(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  :($(@randVar()) = Creature.eatDown(c, o, $(@randVar())))
end
#
# @cmd
# @line
# Is called when organism makes step left
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr}
#
function stepLeft(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  :($(@randVar()) = Creature.stepLeft(o))
end
#
# @cmd
# @line
# Is called when organism makes step right
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function stepRight(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  :($(@randVar()) = Creature.stepRight(o))
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
  :($(@randVar()) = Creature.stepUp(o))
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
  :($(@randVar()) = Creature.stepDown(o))
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
  :(o.mem[$(@randVar())] = $(@randVar()))
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
  local var::Symbol = @randVar()
  #
  # We don't need to create separate block here, because
  # this is one code line.
  #
  :($(@randVar()) = haskey(o.mem, $(var)) ? o.mem[$(var)] : $(var))
end
# #
# # @cmd
# # @line
# # Obtains unique id of organism from the left. UInt id will
# # be converted to Int type. If there is no organism on the left,
# # it will obtain 0.
# # @param cfg Global configuration type
# # @param org Organism we are working with
# # @param pos Position in code
# # @return {Expr|Expr(:nothing)}
# #
# function idLeft(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
#   :($(@randVar()) = Creature.idLeft(o))
# end
# #
# # @cmd
# # @line
# # Obtains unique id of organism from the right. UInt id will
# # be converted to Int type. If there is no organism on the right,
# # it will obtain 0.
# # @param cfg Global configuration type
# # @param org Organism we are working with
# # @param pos Position in code
# # @return {Expr|Expr(:nothing)}
# #
# function idRight(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
#   :($(@randVar()) = Creature.idRight(o))
# end
# #
# # @cmd
# # @line
# # Obtains unique id of organism from the above. UInt id will
# # be converted to Int type. If there is no organism on the above,
# # it will obtain 0.
# # @param cfg Global configuration type
# # @param org Organism we are working with
# # @param pos Position in code
# # @return {Expr|Expr(:nothing)}
# #
# function idUp(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
#   :($(@randVar()) = Creature.idUp(o))
# end
# #
# # @cmd
# # @line
# # Obtains unique id of organism from the right. UInt id will
# # be converted to Int type. If there is no organism on the right,
# # it will obtain 0.
# # @param cfg Global configuration type
# # @param org Organism we are working with
# # @param pos Position in code
# # @return {Expr|Expr(:nothing)}
# #
# function idDown(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
#   :($(@randVar()) = Creature.idDown(o))
# end
#
# @cmd
# @line
# Obtains amount of energy of organism from the left. If there is no organism
# on the left, then 0 will be obtained
# @param cfg Global configuration type
# @param org Organism we are working with
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function energyLeft(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  :($(@randVar()) = Creature.energyLeft(o))
end
#
# @cmd
# @line
# Obtains amount of energy of organism from the right. If there is no organism
# on the right, then 0 will be obtained
# @param cfg Global configuration type
# @param org Organism we are working with
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function energyRight(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  :($(@randVar()) = Creature.energyRight(o))
end
#
# @cmd
# @line
# Obtains amount of energy of organism from the above. If there is no organism
# on the above, then 0 will be obtained
# @param cfg Global configuration type
# @param org Organism we are working with
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function energyUp(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  :($(@randVar()) = Creature.energyUp(o))
end
#
# @cmd
# @line
# Obtains amount of energy of organism from the below. If there is no organism
# on the below, then 0 will be obtained
# @param cfg Global configuration type
# @param org Organism we are working with
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function energyDown(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  :($(@randVar()) = Creature.energyDown(o))
end
#
# @cmd
# @line
# Obtains it's own color.
# @param cfg Global configuration type
# @param org Organism we are working with
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function myColor(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  :($(@randVar()) = f16(o.color))
end
#
# @cmd
# @line
# Obtains it's own X coordinate.
# @param cfg Global configuration type
# @param org Organism we are working with
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function myX(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  :($(@randVar()) = f16(o.pos.x))
end
#
# @cmd
# @line
# Obtains it's own Y coordinate.
# @param cfg Global configuration type
# @param org Organism we are working with
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function myY(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  :($(@randVar()) = f16(o.pos.y))
end
# #
# # @cmd
# # @line
# # Obtains code size of organism on the left
# # @param cfg Global configuration type
# # @param org Organism we are working with
# # @param pos Position in code
# # @return {Expr|Expr(:nothing)}
# #
# function codeSizeLeft(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
#   :($(@randVar()) = f16(Creature.codeSizeLeft(o)))
# end
# #
# # @cmd
# # @line
# # Obtains code size of organism on the right
# # @param cfg Global configuration type
# # @param org Organism we are working with
# # @param pos Position in code
# # @return {Expr|Expr(:nothing)}
# #
# function codeSizeRight(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
#   :($(@randVar()) = f16(Creature.codeSizeRight(o)))
# end
# #
# # @cmd
# # @line
# # Obtains code size of organism on the up
# # @param cfg Global configuration type
# # @param org Organism we are working with
# # @param pos Position in code
# # @return {Expr|Expr(:nothing)}
# #
# function codeSizeUp(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
#   :($(@randVar()) = f16(Creature.codeSizeUp(o)))
# end
# #
# # @cmd
# # @line
# # Obtains code size of organism on the down
# # @param cfg Global configuration type
# # @param org Organism we are working with
# # @param pos Position in code
# # @return {Expr|Expr(:nothing)}
# #
# function codeSizeDown(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
#   :($(@randVar()) = f16(Creature.codeSizeDown(o)))
# end
# #
# # @cmd
# # @line
# # Obtains clone energy percent of organism on the left
# # @param cfg Global configuration type
# # @param org Organism we are working with
# # @param pos Position in code
# # @return {Expr|Expr(:nothing)}
# #
# function cloneEnergyPercentLeft(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
#   :($(@randVar()) = f16(Creature.cloneEnergyPercentLeft(o)))
# end
# #
# # @cmd
# # @line
# # Obtains clone energy percent of organism on the right
# # @param cfg Global configuration type
# # @param org Organism we are working with
# # @param pos Position in code
# # @return {Expr|Expr(:nothing)}
# #
# function cloneEnergyPercentRight(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
#   :($(@randVar()) = f16(Creature.cloneEnergyPercentRight(o)))
# end
# #
# # @cmd
# # @line
# # Obtains clone energy percent of organism on the above
# # @param cfg Global configuration type
# # @param org Organism we are working with
# # @param pos Position in code
# # @return {Expr|Expr(:nothing)}
# #
# function cloneEnergyPercentUp(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
#   :($(@randVar()) = f16(Creature.cloneEnergyPercentUp(o)))
# end
# #
# # @cmd
# # @line
# # Obtains clone energy percent of organism on the bottom
# # @param cfg Global configuration type
# # @param org Organism we are working with
# # @param pos Position in code
# # @return {Expr|Expr(:nothing)}
# #
# function cloneEnergyPercentDown(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
#   :($(@randVar()) = f16(Creature.cloneEnergyPercentDown(o)))
# end
