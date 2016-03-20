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
# Name of the command line argument, which tells the application
# to recover itself from last backup.
#
const RECOVER_ARG = "recover"
#
# Application entry point starting here
#
args = CommandLine.create()

if CommandLine.has(args, RECOVER_ARG)
  Helper.info(string("Recovering from last backup: ", Backup.lastFile()))
  Manager.recover()
else
  Manager.run()
end