#
# TODO: description
# TODO: describe "recover" command line argument
#
include("global/ImportFolders.jl")

import Manager
import Helper
import Backup
import CommandLine
import About
#
# Name of the command line argument, which tells the application
# to recover itself from last backup.
# TODO: command line commands should be moved to separate module
const ARG_RECOVER = "recover"
const ARG_ABOUT   = "about"
const ARG_INFO    = "info"
const ARG_VERSION = "version"
#
# This function starts the manager, world, organisms, server etc...
# It checks "recover" argument for recovering from last backup or
# runs in a common mode.
#
function main()
  local commands::Dict{String, Function} = Dict{String, Function}(
    ARG_ABOUT   => _onAbout,
    ARG_INFO    => _onAbout,
    ARG_VERSION => _onVersion,
    ARG_RECOVER => _onRecover
  )
  local args::Dict{String, String} = CommandLine.create()
  local exitCode::Int
  local command::Pair{String, Function}

  for command in commands
    if CommandLine.has(args, command[1])
      exitCode = command[2]()
      exit(exitCode)
    end
  end

  exitCode = _onRun()
  exit(exitCode)
end
#
# Just returns about info
#
function _onAbout()
  Helper.info(About.description())
  0
end
#
# Returns jevo version
#
function _onVersion()
  Helper.info(About.version())
  0
end
#
# Runs jevo application, but before recovers itself from
# last backup file in "backup" folder.
#
function _onRecover()
  local man::ManagerTypes.ManagerData
  local exitCode::Int

  Helper.info("Start jevo...")
  man = Manager.create()
  Manager.recover(man)
  exitCode = Int(!Manager.run(man, true)) # 1 - error, 0 - okay
  Helper.info("Quit jevo...")

  exitCode
end
#
# Handles running by "default". Runs jevo application, starts
# Manager and evolution of digital organisms
#
function _onRun()
  local exitCode::Int

  Helper.info("Start jevo...")
  Helper.info("Running from scratch...")
  exitCode = Int(!Manager.run(Manager.create())) # 1 - error, 0 - okay
  Helper.info("Quit jevo...")

  exitCode
end
#
# Application entry point
#
main()
