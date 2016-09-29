#
# Part of the Manager module for working with backups. It may
# save and load application state into/from the file.
# TODO: describe index based saving format
#
# @author DeadbraiN
#
import Backup
import Creature
import Server
import Client
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
  Helper.info(string("Recovering from backup: ", Backup.lastFile()))
  local data = Backup.load()
  local t::ManagerTypes.OrganismTask
  local curTask::Task = current_task()
  #
  # In case if we haven't recovered from backup file,
  # we have to remove it, because it's broken
  #
  if data === nothing
    if !_removeNew(man) return false end
    return Backup.lastFile() !== "" ? recover(man) : false
  end

  man.task = curTask
  for t in data.tasks
    t.organism.codeFn = Creature.eval(t.organism.code)
    bindEvents(man, t.organism)
    #
    # We must call yieldto(), because born() function parameters
    # will not be passed into the task and only last organism will
    # be run.
    #
    t.task = Task(() -> Creature.born(t.organism, man.cfg, curTask))
    yieldto(t.task)
  end
  #
  # We don't need to load\create servers and clients every
  # time on load backup. They should be created every time
  # on Manager application starts. So we have to skip loading
  # of man.cons property.
  #
  man.cfg            = data.cfg
  man.world          = data.world
  man.positions      = data.positions
  man.organisms      = data.organisms
  man.tasks          = data.tasks
  man.params         = data.params
  man.organismId     = data.organismId
  man.totalOrganisms = data.totalOrganisms
  man.quiet          = data.quiet
  #
  # We have to remove all event handlers from observers
  # after backup loading, because they may be multiplied
  # on every app running.
  #
  Event.clear(man.world.obs)

  true
end
#
# Makes a dump of Manager data and saves it into the backup file.
# Works in pair with recover().
# @return {Bool} Backup status
#
function backup(man::ManagerTypes.ManagerData)
  local manCopy::ManagerTypes.ManagerData = deepcopy(man)
  local tmpTask::Task = Task(()->true)
  local tmpFn::Function = function() end
  local task::ManagerTypes.OrganismTask
  local ret::Bool
  local org::Creature.Organism
  local tmpObs::Event.Observer = Event.create()
  #
  # We have to stop the task before it will be saved into the backup file.
  # yield() call is needed, because Julia has strange issue with yieldto()
  # or i don't understand it's logic. Anyway, it stucks without this call.
  # TODO: do we need this?
  # TODO: move this yieldto() and @if_status in separate function
  # TODO: reuse this approach in every file...
  yield()
  @if_status man.status.yps += 1
  consume(tmpTask)
  #
  # This is a small trick. We have to set all tasks in waiting
  # state for serializing into the file. Julia can't save active
  # tasks. After recover we will rerun them.
  #
  for task in manCopy.tasks
    org          = task.organism
    task.task    = tmpTask
    org.codeFn   = tmpFn
    org.observer = tmpObs
  end
  manCopy.world.obs    = tmpObs
  manCopy.dotCallback  = tmpFn
  manCopy.moveCallback = tmpFn
  manCopy.task         = tmpTask
  manCopy.cons         = ManagerTypes.Connections()
  #
  # These code lines create new backup file and remove last one
  #
  if (ret = Backup.save(manCopy))
    _removeOld(man)
    Helper.info(string("Backup has created: ", Backup.lastFile()))
  end

  ret
end
#
# Removes first last backup by date. Only last BACKUP_AMOUNT files are
# available at the moment.
# @param man Reference to manager data object
#
function _removeOld(man::ManagerTypes.ManagerData)
  local files::Array{String, 1} = Backup.getFiles(Backup.FOLDER_NAME)
  local len::Int = length(files)
  local i::Int

  if len <= man.cfg.BACKUP_AMOUNT return true end
  Helper.info("Removing old backup files...")
  for i = 1:(len - man.cfg.BACKUP_AMOUNT)
    rm(Backup.FOLDER_NAME * "/" * files[i])
  end

  true
end
#
# Removes first new backup by date. It's needed for removing broken
# backup files.
# @param man Reference to manager data object
#
function _removeNew(man::ManagerTypes.ManagerData)
  local files::Array{String, 1} = Backup.getFiles(Backup.FOLDER_NAME)
  local len::Int = length(files)
  local file::String = len > 0 ? files[len] : ""

  if len < 1 return false end
  Helper.info(string("Backup has removed: ", file))
  rm(Backup.FOLDER_NAME * "/" * file)

  true
end
