#
# Part of the Manager module for working with backups. It may 
# save and load application state into/from the file.
# TODO: describe index based saving format
#
# @author DeadbraiN
#
import Backup
import Creature

export recover
export backup
#
# This function is used for recovering a manager's data from 
# backup file. It means that an application was crashed before 
# and now we have to recover it with last correct backup. Works
# in pair with backup() function.
# @return {Bool} recover status
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
# @return {Bool} Backup status
#
function backup()
  local tasks::Array{OrganismTask, 1} = deepcopy(Manager._data.tasks)
  local task::Task = Task(()->0)
  local len::Int = length(tasks)
  local t::Int
  #
  # This is a small trick. We have to set all tasks in waiting
  # state for serializing into the file. Julia can't save active
  # tasks. After storing we have to restore all tasks.
  #
  for t = 1:len Manager._data.tasks[t].task = task end
  Backup.save(Manager._data)
  _removeOld()
  for t = 1:len Manager._data.tasks[t].task = tasks[t].task end
  Helper.info(string("Backup has created: ", Backup.lastFile()))

  true
end
#
# Removes old backup files, because they are big.
#
function _removeOld()
  local files::Array{ASCIIString, 1} = Backup.getFiles(Backup.FOLDER_NAME)
  local len::Int = length(files)
  local i::Int

  if len <= Config.val(:BACKUP_AMOUNT) return true end
  for i = 1:(len - Config.val(:BACKUP_AMOUNT))
    rm(Backup.FOLDER_NAME * "/" * files[i])
  end

  true
end