#
# Part of the Manager module for working with backups. It may
# save and load application state into/from the file.
# TODO: describe index based saving format
#
# @author DeadbraiN
#
import Backup
import Creature
import ManagerTypes

export recover
export backup
#
# This function is used for recovering a manager's data from
# backup file. It means that an application was crashed before
# and now we have to recover it with last correct backup. Works
# in pair with backup() function.
# @param man Manager data type
# @return {Bool} recover status
#
function recover(man::ManagerTypes.ManagerData)
  # TODO: what about type here?
  local data = Backup.load()
  local i::Int
  local t::ManagerTypes.OrganismTask

  if data === null return false end

  for i = 1:length(data.tasks)
    t = data.tasks[i]
    t.task = Task(Creature.born)
    #
    # This is how we pass an organism and config type instances inside organism's code
    #
    consume(t.task)
    consume(t.task, (t.organism, man.cfg))
  end

  man.world          = data.world
  man.positions      = data.positions
  man.organisms      = data.organisms
  man.tasks          = data.tasks
  man.params         = data.params
  man.organismId     = data.organismId
  man.totalOrganisms = data.totalOrganisms
  man.minOrg         = data.minOrg
  man.maxOrg         = data.maxOrg
  man.minId          = data.minId
  man.maxId          = data.maxId
  #
  # We have to remove all event handlers from observers
  # after backup loading, because they may be multiplied
  # on every app running.
  #
  Event.clear(man.world.obs)

  true
end
#
# Makes a dump of Manager data and saves it into the file.
# Works in pair with recover().
# @return {Bool} Backup status
#
function backup(man::ManagerTypes.ManagerData)
  local tasks::Array{ManagerTypes.OrganismTask, 1} = deepcopy(man.tasks)
  local task::Task = Task(()->0)
  local len::Int = length(tasks)
  local t::Int
  #
  # This is a small trick. We have to set all tasks in waiting
  # state for serializing into the file. Julia can't save active
  # tasks. After storing we have to restore all tasks.
  #
  for t = 1:len man.tasks[t].task = task end
  Backup.save(man)
  _removeOld(man)
  for t = 1:len man.tasks[t].task = tasks[t].task end
  Helper.info(string("Backup has created: ", Backup.lastFile()))

  true
end
#
# Removes old backup files, because they are big.
# @param man Manager data type
#
function _removeOld(man::ManagerTypes.ManagerData)
  local files::Array{ASCIIString, 1} = Backup.getFiles(Backup.FOLDER_NAME)
  local len::Int = length(files)
  local i::Int

  if len <= Config.val(man.cfg, :BACKUP_AMOUNT) return true end
  for i = 1:(len - Config.val(man.cfg, :BACKUP_AMOUNT))
    rm(Backup.FOLDER_NAME * "/" * files[i])
  end

  true
end
