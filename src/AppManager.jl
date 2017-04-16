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
#   >julia --color=yes src\AppSatellite.jl src\AppManager.jl modeQuiet
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

import Config.@if_profile
import Config.@if_not_profile
import Config
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
      @if_profile return exitCode
      exit(exitCode)
    end
  end

  exitCode = _onRun()
  @if_profile return exitCode
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
  local cfg::Config.ConfigData = Config.create(false)

  if cfg.modeQuiet < Config.MODE_QUIET_NO Helper.info("Starting jevo...") end
  man = Manager.create(cfg)
  Manager.recover(man)
  #
  # Overrides recovered config by command line arguments
  #
  man.cfg.cmdLineArgs = CommandLine.create()
  man.cfg = Config.merge(man.cfg)
  exitCode = Int(!Manager.run(man, true)) # 1 - error, 0 - okay
  if man.cfg.modeQuiet < Config.MODE_QUIET_NO Helper.info("Quit jevo...") end

  exitCode
end
#
# Handles running by "default". Runs jevo application, starts
# Manager and evolution of digital organisms
#
function _onRun()
  local man::ManagerTypes.ManagerData
  local exitCode::Int
  local cfg::Config.ConfigData = Config.create(false)

  man = Manager.create(cfg)
  if man.cfg.modeQuiet < Config.MODE_QUIET_NO Helper.info("Starting jevo...") end
  if man.cfg.modeQuiet < Config.MODE_QUIET_NO Helper.info("Running from scratch...") end
  exitCode = Int(!Manager.run(Manager.create())) # 1 - error, 0 - okay
  if man.cfg.modeQuiet < Config.MODE_QUIET_NO Helper.info("Quit jevo...") end

  exitCode
end
#
# Application entry point. In case of profiling mode, application
# will be run in special profiling mode using ProfileView package.
# In this case fire chart will be drown at the end
#
@if_profile Profile.clear()
@if_profile @profile main()
@if_profile ProfileView.view()
@if_not_profile main()
