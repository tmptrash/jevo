#
# Part of the Manager module for working with backups. It may
# save and load application state into/from the file.
#
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
import Helper

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
  if man.cfg.modeQuiet < Config.MODE_QUIET_NO Helper.info(string("Recovering from backup: ", Backup.lastFile())) end
  local data = Backup.load()
  local task::ManagerTypes.OrganismTask
  #
  # In case if we haven't recovered from backup file,
  # we have to remove it, because it's broken
  #
  if data === nothing
    if !_removeNew(man) return false end
    return Backup.lastFile() !== "" ? recover(man) : false
  end
  #
  # Main task reference should be set before the loop, because
  # it may be used inside organism tasks
  #
  man.task = current_task()
  for task in man.tasks
    task.organism.codeFn = Creature.eval(task.organism.code)
    #
    # This line prevents observers to be shared between organisms
    # Every organism should have it's own observer's instance
    #
    task.organism.observer = Event.create()
    bindEvents(man, task.organism)
    #
    # We must call yieldto(), because born() function parameters
    # will not be passed into the task and only last organism will
    # be run.
    #
    Manager._updateOrgTask(man, task)
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
  man.maxEnergy      = data.maxEnergy
  man.plugins        = data.plugins
  man.killed         = data.killed
  #
  # We don't need to store amount of eval() calls
  # between app runs
  #
  data.cfg.orgEvals = 0
  #
  # We have to remove all event handlers from observers
  # after backup loading, because they may be multiplied
  # on every app running.
  #
  man.world.obs = Event.create()

  true
end
#
# Makes a dump of Manager data and saves it into the backup file.
# Works in pair with recover().
# @return {Bool} Backup status
#
function backup(man::ManagerTypes.ManagerData)
  local manCopy::ManagerTypes.ManagerData = deepcopy(man)
  local tmpTask::Task = Task(Helper.emptyFn)
  local task::ManagerTypes.OrganismTask
  local ret::Bool
  local org::Creature.Organism
  local posPair::Pair{Int, Creature.Organism}
  local orgPair::Pair{UInt, Creature.Organism}
  #
  # We have to stop the task before it will be saved into the backup file.
  # yield() call is needed, because Julia has strange issue with yieldto()
  # or i don't understand it's logic. Anyway, it stucks without this call.
  # TODO: do we need this?
  # TODO: move this yieldto() and fire() in separate function
  # TODO: reuse this approach in every file...
  yield()
  Event.fire(man.obs, "yield", man)
  consume(tmpTask)
  #
  # This is a small trick. We have to set all tasks in "done"
  # state for serializing into the file. Julia can't save active
  # tasks. After recover we will rerun them. It also can't save
  # anonymous functions, so we have to have some empty function
  # as a part of current Manager module (Helper.emptyFn()).
  #
  for task in manCopy.tasks
    org          = task.organism
    task.task    = tmpTask
    org.codeFn   = Helper.emptyFn
    org.observer = Event.create()
  end
  for posPair in manCopy.positions
    org          = posPair[2]
    org.codeFn   = Helper.emptyFn
    org.observer = Event.create()
  end
  for orgPair in manCopy.organisms
    org          = orgPair[2]
    org.codeFn   = Helper.emptyFn
    org.observer = Event.create()
  end
  manCopy.world.obs    = Event.create()
  manCopy.dotCallback  = Helper.emptyFn
  manCopy.moveCallback = Helper.emptyFn
  manCopy.task         = tmpTask
  manCopy.cons         = ManagerTypes.Connections()
  #
  # Before saving backup file, we need to make sure that backup folder is in place.
  # Otherwise - create one.
  #
  Backup.folder()
  #
  # These code lines create new backup file and remove last one
  #
  if (ret = Backup.save(manCopy))
    _removeOld(man)
    if man.cfg.modeQuiet < Config.MODE_QUIET_NO Helper.info(string("Backup has created: ", Backup.lastFile())) end
  end
  Event.fire(man.obs, "backup", man)

  ret
end
#
# Removes first last backup by date. Only last backupAmount files are
# available at the moment.
# @param man Reference to manager data object
#
function _removeOld(man::ManagerTypes.ManagerData)
  local files::Array{String, 1} = Backup.getFiles(Backup.FOLDER_NAME)
  local len::Int = length(files)
  local i::Int

  if len <= man.cfg.backupAmount return true end
  if man.cfg.modeQuiet < Config.MODE_QUIET_NO Helper.info("Removing old backup files...") end
  for i = 1:(len - man.cfg.backupAmount)
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
  if man.cfg.modeQuiet < Config.MODE_QUIET_NO Helper.info(string("Backup has removed: ", file)) end
  rm(Backup.FOLDER_NAME * "/" * file)

  true
end
