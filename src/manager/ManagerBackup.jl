#
# Part of the Manager module for working with backups. It may 
# save and load application state into/from the file.
#
# @author DeadbraiN
#
import Backup
import Creature
#
# This function is used for recovering a manager's data from 
# backup file. It means that an application was crashed before 
# and now we have to recover it with last correct backup. Works
# in pair with backup() function.
#
function recover()
  local data::Manager.ManagerData = Backup.load()
  local i::Int
  local t::OrganismTask

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
end
#
# Makes a dump of Manager data and saves it into the file.
# Works in pair with recover().
#
function backup()
  local tasks::Array{OrganismTask, 1} = deepcopy(Manager._data.tasks)
  local task::Task = Task(()->0)
  local i::Int
  #
  # This is a small trick. We have to set all tasks in waiting
  # state for serializing into the file. Julia can't save active
  # tasks.
  #
  for i = 1:length(Manager._data.tasks) Manager._data.tasks[i].task = task end
  Backup.save(Manager._data)
  for i = 1:length(tasks) Manager._data.tasks[i].task = tasks[i].task end
end