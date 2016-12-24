#
# This module is an entry point of jevo application. jevo is a
# Julia(http://julialang.org/) language based, digital organisms
# evolution simulator.It's used for study the evolutionary biology
# of self-replicating and evolving computer programs (digital
# organisms (https://en.wikipedia.org/wiki/Digital_organism)).
# This project similar to Avida(https://en.wikipedia.org/wiki/Avida),
# but works with more abstract language (Julia) instead of assembler.
# More details on blog(https://jevosite.wordpress.com/) and youtube
# (https://www.youtube.com/playlist?list=PL1NiKjXMaBimPuybPIXkVuO1MYy53XcdW)
# channel.
#
# jevo is also a client\server application. When you run one Manager
# (current file) we are talking about one Manager's instance. It's
# server and client at the same time, because other instances or remote
# terminals\visualizers applications may be connected to it. Every
# Manager manages virtual 2D world, runs virtual processor, parallel
# organisms codes and so on.
#
# You may run the manager in different ways. The simplies way is:
#   >julia src\AppSatellite.jl src\AppManager.jl
# More useful way will be the following:
#   >julia --color=yes src\AppSatellite.jl src\AppManager.jl quiet
# It colors terminal output and reduces amount of default messages.
# Also, jevo supports many command line arguments like: recover,
# about, version and so on... You may use them at the end of command
# line. For example, to get current jevo version you have to type:
#   >julia src\AppManager.jl version
#
#
# TODO: describe "recover" command line argument
#
include("global/ImportFolders.jl")

import CodeConfig.@if_profile
import Manager
import Helper
import Backup
import CommandLine
import About
@if_profile import ProfileView
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
  local args::Dict{String, String} = CommandLine.create()
  local exitCode::Int
  local command::Pair{String, Function}
  local commands::Dict{String, Function} = Dict{String, Function}(
    ARG_ABOUT   => _onAbout,
    ARG_INFO    => _onAbout,
    ARG_VERSION => _onVersion,
    ARG_RECOVER => _onRecover
  )

  for command in commands
    if CommandLine.has(args, command[1])
      exitCode = command[2]()
      if !CodeConfig.modeProfile exit(exitCode) end
      return exitCode
    end
  end

  exitCode = _onRun()
  if !CodeConfig.modeProfile exit(exitCode) end
  exitCode
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
# Application entry point. In case of profiling mode, application
# will be run in special profiling mode using ProfileView package.
# In this case fire chart will be drown at the end
#
if CodeConfig.modeProfile
  Profile.clear()
  @profile main()
  ProfileView.view()
else
  main()
end
