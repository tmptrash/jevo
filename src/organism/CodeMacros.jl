#
# This file is a part of Code module. It contains macroses for 
# organism's code.
#
# @author DeadbraiN
#
#
# Creates new unique variable name and returns it's symbol
# @param {Creature.Organism} org Owner of new variable
# @return {Symbol}
#
macro newVar(org)
  :(symbol("var_", $org.symbolId += 1))
end
#
# Creates new unique custom function name.
# @param {Creature.Organism} org Organism we are working with
# @return {ASCIIString}
#
macro newFunc(org)
  :(string("func_", $org.symbolId += 1))
end
#
# Returns one of supported types. Is used randomizer for choosing type.
# @return {DataType}
#
macro randType()
  local types::Array{DataType} = Helper.SUPPORTED_TYPES
  :($types[rand(1:length($types))])
end
#
# Returns a variable from existing in a code
# @param {Creature.Organism} org Organism we are mutating
# @param {Code.Pos} pos Code position
# @param {DataType} typ Type of variable we want to take
# @return {Symbol}
#
macro randVar(org, pos, typ)
  :(
    length($org.funcs[$pos.funcIdx].blocks[$pos.blockIdx].vars[$typ]) < 1 ?
    :nothing :
    $org.funcs[$pos.funcIdx].blocks[$pos.blockIdx].vars[$typ][rand(1:length($org.vars[$fn].vars[$typ]))]
  )
end
#
# Returns random value by data type. e.g.: 123 for Int8
# @param {DataType} typ Data type
# @return {Any}
#
macro getValue(typ)
  :($typ !== ASCIIString ? rand($typ) : randstring())
end
#
# Returns lines property in specified function and block
# @param {Creature.Organism} org
# @param {Code.Pos} pos
# @return {Array{Expr, 1}}
#
macro getLines(org, pos)
  :($org.funcs[$pos.fnIdx].blocks[$pos.blockIdx].lines)
end
#
# Returns chosen line in specified function and block
# @param {Creature.Organism} org
# @param {Code.Pos} pos
# @return {Array{Expr, 1}}
#
macro getLine(org, pos)
  :($org.funcs[$pos.fnIdx].blocks[$pos.blockIdx].lines[$pos.lineIdx])
end
#
# Returns chosen block of specified function
# @param {Creature.Organism} org
# @param {Code.Pos} pos
# @return {Organism.Creature.Block}
#
macro getBlock(org, pos)
  :($org.funcs[$pos.fnIdx].blocks[$pos.blockIdx])
end
#
# Returns variables of specified block of specified
# function.
# @param {Creature.Organism} org
# @param {Code.Pos} pos
# @return {Organism.Creature.Block}
#
macro getVars(org, pos)
  :($org.funcs[$pos.fnIdx].blocks[$pos.blockIdx].vars)
end