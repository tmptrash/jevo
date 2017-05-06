#
# This file is a part of Code module. It contains macroses for
# organism's code.
#
# @author DeadbraiN
#
import Helper
import Creature
#
# Creates new unique variable name and returns it's symbol
# @param {Creature.Organism} org Owner of new variable
# @return {Symbol}
#
macro newVar(org)
  :(Symbol("var_", $org.symbolId += 1))
end
#
# Returns variable with specified index. e.g.: var_2
# @param index
# @return {Symbol}
#
#
macro var(index)
  :(Symbol("var_", $index))
end
#
# Creates new unique custom function name.
# @param {Creature.Organism} org Organism we are working with
# @return {String}
#
macro newFunc(org)
  :(Symbol("func_", $org.symbolId += 1))
end
#
# Returns random variable symbol
# @return {Symbol}
#
macro randVar()
  :(Symbol("var_", rand(1:Creature.VAR_AMOUNT)))
end
#
# Returns random variable symbol converted to Int
# @return {Symbol}
#
macro randIntVar()
  :(:(round(Int, $(Symbol("var_", rand(1:Creature.VAR_AMOUNT))))))
end
#
# Returns blocks array
# @param {Creature.Organism} org
# @param {Helper.CodePos} pos
# @return {Array{Organism.Creature.Block, 1}}
#
macro getBlocks(org, pos)
  :($org.funcs[$pos.fnIdx].blocks)
end
#
# Returns variables of specified block of specified
# function.
# @param {Creature.Organism} org
# @param {Helper.CodePos} pos
# @return {Array{Symbol, 1}}
#
macro getVars(org, pos)
  :($org.funcs[$pos.fnIdx].blocks[$pos.blockIdx].vars)
end
