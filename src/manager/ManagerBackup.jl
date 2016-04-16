#
# Part of the Manager module for working with backups. It may 
# save and load application state into/from the file.
# TODO: describe index based saving format
#
# @author DeadbraiN
#
import Backup
import Creature

using Debug

export recover
export backup
#
# Recover block type. Is used for fixing julia issue:
# https://github.com/JuliaLang/julia/issues/15881. Wrapper
# for Creature.Block.
#
type RBlock
  #
  # Line index inside current RFunc's body
  #
  line::Int
  vars::Dict{DataType, Array{Symbol, 1}}
  defIndex::Int
end
#
# Recover function type. Is used for fixing julia issue:
# https://github.com/JuliaLang/julia/issues/15881. Wrapper
# for Creature.Func.
#
type RFunc
  #
  # Function index inside main RFunc
  #
  line::Int
  blocks::Array{RBlock, 1}
end
#
# Recover creature type. Is fixing julia issue:
# https://github.com/JuliaLang/julia/issues/15881. Wrapper
# for Creature.Organism type.
#
type ROrganism
  funcs::Array{RFunc, 1}
  org::Creature.Organism
end
#
# Recover Manager Data type. Is fixing julia issue:
# https://github.com/JuliaLang/julia/issues/15881. Wrapper
# for Manager.ManagerData type.
#
type ROrganismTask
  id::UInt
  organism::ROrganism
end
#
# Recover Manager Data type. Is fixing julia issue:
# https://github.com/JuliaLang/julia/issues/15881. Wrapper
# for Manager.ManagerData type.
#
type RManagerData
    world::World.Plane
    positions::Dict{Int, ROrganism}
    organisms::Dict{UInt, ROrganism}
    tasks::Array{ROrganismTask}
    params::Dict{ASCIIString, ASCIIString}
    organismId::UInt
    totalOrganisms::UInt
    minOrg::ROrganism
    maxOrg::ROrganism
    minId::UInt
    maxId::UInt
    quiet::Bool
end
#
# This function is used for recovering a manager's data from 
# backup file. It means that an application was crashed before 
# and now we have to recover it with last correct backup. Works
# in pair with backup() function.
#
function recover()
  local data = Backup.load()
  local i::Int
  local t::OrganismTask

  if data === null return false end

  for i = 1:length(data.tasks)
    t = data.tasks[i]
    t.task = Task(Creature.born(t.organism, t.id))
  end

  Manager._data.world          = data.world
  Manager._data.positions      = data.positions
  Manager._data.organisms      = data.organisms
  Manager._data.tasks          = data.tasks
  Manager._data.params         = data.params
  Manager._data.organismId     = data.organismId
  Manager._data.totalOrganisms = data.totalOrganisms
  Manager._data.minOrg         = data.minOrg
  Manager._data.maxOrg         = data.maxOrg
  Manager._data.minId          = data.minId
  Manager._data.maxId          = data.maxId

  true
end
#
# Makes a dump of Manager data and saves it into the file.
# Works in pair with recover().
#
@debuf function backup()
@bp
  local tasks::Array{OrganismTask, 1} = deepcopy(Manager._data.tasks)
  local task::Task = Task(()->0)
  local len::Int = length(tasks)
  local t::Int
  local f::Int
  local b::Int
  local func::RFunc
  local fnEx::Expr
  local ex::Expr
  local blocks::Array{RBlock, 1}
  #
  # Fix of Julia issue: https://github.com/JuliaLang/julia/issues/15881
  # This is organisms loop.
  #
  for t = 1:len
    #
    # This is organism's functions loop
    #
    fnEx = Manager._data.tasks[t].organism.funcs[1].code
    for f = 2:length(Manager._data.tasks[t].organism.funcs) # skip main func
      ex   = Manager._data.tasks[t].organism.funcs[f].code

      func = RFunc(_getFuncIndex(fnEx.args[2].args, ex), ex, blocks)
    end
    #
    # This is a small trick. We have to set all tasks in waiting
    # state for serializing into the file. Julia can't save active
    # tasks.
    #
    Manager._data.tasks[t].task = task 
  end
  Backup.save(Manager._data)
  #
  # Restore all tasks
  #
  for t = 1:len Manager._data.tasks[t].task = tasks[t].task end
end
#
# Finds specified function insode main one
# @param lines Array of lines in main function
# @param fn Expression of function
# @return Index of the fn function inside main one
#
function _getFuncIndex(lines::Array{Any, 1}, fn::Expr)
  local i::Int

  for i = 1:length(lines) if lines[i] === fn return i end end

  0
end
#
# Creates RFunc type
#
function _createFunc(org::Creature.Organism, fnIdx::Int, blocks::Array{RBlock, 1})
  local fnEx::Expr = org.funcs[1].code
  RFunc(_getFuncIndex(fnEx.args[2].args, org.funcs[fnIdx].code), blocks)
end
#
# Creates FBlock type
#
function _createBlock(org::Creature.Organism, fnIdx::Int, )

end