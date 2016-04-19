#
# Unit tests helper
#
# @author DeadbraiN
#
const IP      = ip"127.0.0.1"
const PORT    = Config.val(:CONNECTION_SERVER_PORT)
const TIMEOUT = 30

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
function addVars(org::Creature.Organism, lines::Array{Int, 1}, pos::Helper.Pos)
  Helper.getSupportedTypes(function (t)
    var = symbol("var_", org.symbolId += 1)
    push!(org.funcs[pos.fnIdx].blocks[pos.blockIdx].vars[t], var)
    insert!(Helper.getLines(org.code, lines), 1, :(local $(var)::$t=$(t !== ASCIIString ? rand(t) : randstring())))
  end)
end
#
# Adds one variable by type
#
function addVar(org::Creature.Organism, lines::Array{Int, 1}, pos::Helper.Pos, typ::DataType)
  var = symbol("var_", org.symbolId += 1)
  push!(org.funcs[pos.fnIdx].blocks[pos.blockIdx].vars[typ], var)
  insert!(Helper.getLines(org.code, lines), pos.lineIdx, :(local $(var)::$(typ)=$(typ !== ASCIIString ? rand(typ) : randstring())))
end