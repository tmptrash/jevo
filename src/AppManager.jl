#
# TODO: description
# TODO: describe "recover" command line argument
#
include("ImportFolders.jl")

import Manager
import Helper
import Backup
import CommandLine
#
# This function starts the manager, world, organisms, server etc...
# It checks "recover" argument for recovering from last backup or
# runs in a common mode.
#
function main()
  args = CommandLine.create()

  if CommandLine.has(args, Manager.RECOVER_ARG)
    Helper.info(string("Recovering from last backup: ", Backup.lastFile()))
    Manager.recover()
  end
  Manager.run()
end
#
# Application entry point
#
main()