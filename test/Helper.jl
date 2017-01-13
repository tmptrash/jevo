#
# Unit tests helper
#
# @author DeadbraiN
#
import Creature
import Helper

const IP      = ip"127.0.0.1"
const PORT    = Config.create().conServerPort
const TIMEOUT = 30

#
# Erases current types and set them to newTypes
# @param newTypes New types array
# @return Types array before changing
#
function changeTypes(newTypes = DataType[])
  local types = deepcopy(Helper.SUPPORTED_TYPES)
  empty!(Helper.SUPPORTED_TYPES)
  for i=1:length(newTypes) push!(Helper.SUPPORTED_TYPES, newTypes[i]) end
  types
end
#
# Resets types to oldTypes array. oldTypes should be obtained
# by calling changeTypes() function
# @param oldTypes Values returned by changeTypes()
#
function resetTypes(oldTypes)
  empty!(Helper.SUPPORTED_TYPES)
  for i=1:length(oldTypes) push!(Helper.SUPPORTED_TYPES, oldTypes[i]) end
end
#
# Waits for timeout or function fn() to return true. Between
# waitings, it runs yield() function.
#
function wait(fn::Function)
  i = 0
  t = Timer((t)->(yield(); if (i+=1) > TIMEOUT || fn() close(t) end), 0.0, 0.2)
  while isopen(t) yield() end
end
#
# Adds all available variables into specified position
#
function addVars(org::Creature.Organism, lines::Array{Int, 1}, pos::Helper.CodePos)
  Helper.getSupportedTypes(function (t)
    var = Symbol("var_", org.symbolId += 1)
    push!(org.funcs[pos.fnIdx].blocks[pos.blockIdx].vars[t], var)
    insert!(Helper.getLines(org.code, lines), 1, :(local $(var)::$t=$(t !== String ? rand(t) : randstring())))
  end)
end
#
# Adds one variable by type
#
function addVar(org::Creature.Organism, lines::Array{Int, 1}, pos::Helper.CodePos, typ::DataType)
  var = Symbol("var_", org.symbolId += 1)
  push!(org.funcs[pos.fnIdx].blocks[pos.blockIdx].vars[typ], var)
  insert!(Helper.getLines(org.code, lines), pos.lineIdx, :(local $(var)::$(typ)=$(typ !== String ? rand(typ) : randstring())))
end
