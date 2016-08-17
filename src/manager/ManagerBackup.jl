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
# Is used for storing organism datas in backup file
#
type TmpOrganism
  t::Task
  o::Event.Observer
end
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
  # TODO: what about type here?
  local data = Backup.load()
  local i::Int
  local t::ManagerTypes.OrganismTask
  local curTask::Task = current_task()

  if data === null return false end

  for t in data.tasks
    t.organism.codeFn  = Creature.eval(t.organism.code)
    bindEvents(man, t.organism)
    t.task = Task(() -> Creature.born(t.organism, man.cfg, curTask))
    #
    # This is how we pass an organism and config type instances inside organism's code
    # TODO: change it to yieldto(t.task)
    consume(t.task)
    consume(t.task, (t.organism, man.cfg))
  end
  man.task = curTask
  man.minOrg.codeFn  = Creature.eval(man.minOrg.code)
  man.maxOrg.codeFn  = Creature.eval(man.maxOrg.code)
  #
  # We don't need to load\create servers and clients every
  # time on load backup. They should be created every time
  # on Manager application starts. So we have to skip loading
  # of man.cons property.
  #
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
  local tasks::Array{TmpOrganism, 1} = map((t)->TmpOrganism(t.task, t.organism.observer), man.tasks)
  local cons::ManagerTypes.Connections = man.cons
  local curTask::Task = current_task()
  local len::Int = length(tasks)
  local tmpTask::Task = Task(()->true)
  local tmpFn::Function = function() end
  local task::ManagerTypes.OrganismTask
  local ret::Bool
  local org::Creature.Organism
  local dotCb::Function = man.dotCallback
  local tmpObs::Event.Observer = Event.create()
  #
  # We have to stop the task before it will be saved into the backup file.
  # yield() call is needed, because Julia has strange issue with yieldto()
  # or i don't understand it's logic. Anyway, it stucks without this call.
  #
  yield()
  yieldto(tmpTask)
  #
  # This is a small trick. We have to set all tasks in waiting
  # state for serializing into the file. Julia can't save active
  # tasks. After storing we have to restore all tasks.
  #
  for task in man.tasks
    org          = task.organism
    task.task    = tmpTask
    org.codeFn   = tmpFn
    org.observer = tmpObs
  end
  man.minOrg.codeFn   = tmpFn
  man.minOrg.observer = tmpObs
  man.maxOrg.codeFn   = tmpFn
  man.maxOrg.observer = tmpObs
  man.task            = tmpTask
  man.cons            = ManagerTypes.Connections()
  man.dotCallback     = tmpFn
  #
  # These code lines create new backup file and remove last one
  #
  ret = Backup.save(man)
  _removeOld(man)
  #
  # Reverts workable state back
  #
  for t = 1:len
    task         = man.tasks[t]
    task.task    = tasks[t].t
    org          = task.organism
    org.observer = tasks[t].o
    org.codeFn   = Creature.eval(org.code)
    bindEvents(man, org)
  end

  man.cons = cons
  man.task = curTask
  man.minOrg.codeFn  = Creature.eval(man.minOrg.code)
  man.maxOrg.codeFn  = Creature.eval(man.maxOrg.code)
  man.dotCallback    = dotCb
  if ret Helper.info(string("Backup has created: ", Backup.lastFile())) end

  ret
end
#
# Removes old backup files, because they are big.
# @param man Manager data type
#
function _removeOld(man::ManagerTypes.ManagerData)
  local files::Array{ASCIIString, 1} = Backup.getFiles(Backup.FOLDER_NAME)
  local len::Int = length(files)
  local i::Int

  if len <= man.cfg.BACKUP_AMOUNT return true end
  for i = 1:(len - man.cfg.BACKUP_AMOUNT)
    rm(Backup.FOLDER_NAME * "/" * files[i])
  end

  true
end
