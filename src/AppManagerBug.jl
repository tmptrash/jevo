include("ImportFolders.jl")

import Manager
import Helper
import Backup
import CommandLine
import ProfileView
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
  local args = CommandLine.create()

  if CommandLine.has(args, ARG_RECOVER)
    Helper.info(string("Recovering from backup: ", Backup.lastFile()))
    if Manager.recover()
      Manager.run(true)
      return true
    end
  end
  Helper.info("Running from scratch...")
  Manager.run()

  return true
end
#
# Application entry point
#
Profile.clear()
@profile main()
ProfileView.view()
