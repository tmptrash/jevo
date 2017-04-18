#
# Unit tests helper
#
# @author DeadbraiN
#
import Creature
import Helper
import Config
import ManagerTypes
import Manager

const IP      = ip"127.0.0.1"
const PORT    = Config.create().conServerPort
const TIMEOUT = 30

#
# Just a helper type for Manager tests
#
type TestManagerData
  cfg::Config.ConfigData
  man::ManagerTypes.ManagerData
  task::Task
  orgs::Vector{Creature.Organism}
end
#
# Creates data instance of TestManagerData: creates Manager
# instance, creates organisms with specified positions, creates
# Manager in separate task and creates default configuration.
#
function create(positions::Vector{Helper.Point}, configs::Dict{Symbol, Any} = Dict{Symbol, Any}())
  local cfg::Config.ConfigData      = Config.create()
  cfg.orgRainMutationPeriod         = 0
  cfg.orgStartAmount                = 0
  cfg.orgStartEnergy                = 100
  cfg.orgEnergySpendPeriod          = 2
  cfg.orgClonePeriod                = 0
  cfg.worldWidth                    = 10
  cfg.worldHeight                   = 10
  cfg.worldMinOrgs                  = 0
  cfg.worldStartEnergyDots          = 0
  cfg.worldEnergyCheckPercent       = 0.1
  cfg.worldEnergyCheckPeriod        = 10000
  cfg.orgEvals                      = 100000
  #
  # Config update
  #
  for i in configs setfield!(cfg, i[1], i[2]) end

  local man::ManagerTypes.ManagerData   = Manager.create(cfg)
  local task::Task                      = Task(() -> Manager.run(man))
  local orgs::Vector{Creature.Organism} = []

  for i = 1:length(positions)
    Manager.createOrganism(man, positions[i])
    push!(orgs, man.positions[Manager._getPosId(man, positions[i])])
  end
  man.task = task

  TestManagerData(cfg, man, task, orgs)
end
#
# Adds code line to specified organism
# @param data Data type, returned by _create() function
# @param codePart Symbol, which represents specific dode part like: plus, eatUp or myX...
# @param org Organism we are adding to
# @param pos Poition in organism code (optional)
#
function code(data::TestManagerData, codePart::Symbol, org::Creature.Organism, pos::Helper.CodePos = Helper.CodePos(0,0,0))
  local cp::Code.CodePart
  #
  # This is how we find real CodePart() type
  #
  for cp in Code.CODE_PARTS if string(cp.fn) == string("Code.", codePart) break end end
  #
  # Position is not set, we have to add to the end of code to the main function
  #
  if pos.fnIdx < 1 pos = Helper.CodePos(1,1,length(org.code.args[2].args)) end
  Mutator._onAdd(data.cfg, org, pos, cp)
  updateCode(org)
end
#
# Returns initial value of first Float64 variable in main function
# @param org Organism to check
# @return {Float64} Value
#
function val(org::Creature.Organism)
  Helper.getArg(org.code, [2,1,1,2])
end
#
# compiles code of organism according to org.code expression
# @param org Organism we are working with
#
function updateCode(org::Creature.Organism)
  org.codeFn = Creature.eval(org.code)
end
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
