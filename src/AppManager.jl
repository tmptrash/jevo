#
# TODO: description
# TODO: describe "recover" command line argument
#
include("global/ImportFolders.jl")

import Manager
import Helper
import Backup
import CommandLine
#
# Name of the command line argument, which tells the application
# to recover itself from last backup.
#
const ARG_RECOVER = "recover"
#
# This function starts the manager, world, organisms, server etc...
# It checks "recover" argument for recovering from last backup or
# runs in a common mode.
#
function main()
  Helper.info("Starting jevo...")

  local args::Dict{String, String} = CommandLine.create()
  local man::ManagerTypes.ManagerData = Manager.create()
  local exitCode::Int
  #
  # According to returning value (exitCode) AppSatellite will run
  # this app again (1) or just quit (0).
  #
  if CommandLine.has(args, ARG_RECOVER)
    Manager.recover(man)
    exitCode = Int(!Manager.run(man, true)) # 1 - error, 0 - okay
  else
    Helper.info("Running from scratch...")
    exitCode = Int(!Manager.run(man)) # 1 - error, 0 - okay
  end
  Helper.info("Quit jevo...")
  exit(exitCode)
end
#
# Application entry point
#
main()
