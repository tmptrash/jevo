#
# This is configuration file for entire application.
# It turns on or off some code parts according to below constants.
# The difference between this and Config.jl is in preprocessor.
# This config uses preprocessor for including/excluding wrapped
# by @if_xxx macroses code into the final (compiled) application.
# For example: setting showStatus config to false will physically
# remove all status related code from all sources. In this case
# it affects application performance.
# It's possible to use command line parameters to turn on or off
# these configuration. For example, we may run jevo with
# ccStatusMode:true command line parameter and it will be set to
# true. Parameter without value means true value. For example:
# >julia src\AppManager.jl ccStatusMode # means ccStatusMode:true
#
# @author DeadbraiN
#
module CodeConfig
  import CommandLine

  export modeStatus
  export modeStatusPeriod
  export modeDebug
  export modeTest
  export modeProfile
  export profilePeriod

  export if_status
  export if_debug
  export if_test
  export if_profile
  #
  # This function checks if specified command is activated. Activated
  # means set up in command line agrument. It means, that user run
  # jevo in special mode (status, test,...)
  # @param cmd Name of the command
  # @param defValue Default value if command is not set
  # @return {Any}
  #
  function _cmdActivated(cmd::String, defValue::Any)
    local hasCommand::Bool = CommandLine.has(_cmdLine, cmd)
    local cmdValue::Any = CommandLine.val(_cmdLine, cmd)
    #
    # We have only command without value
    #
    if hasCommand
      if isempty(cmdValue) return true end
      if cmdValue == "true" return true end
      if cmdValue == "false" return false end
      if !isnull(tryparse(Int, cmdValue)) return parse(Int, cmdValue) end
      if !isnull(tryparse(Float64, cmdValue)) return parse(Float64, cmdValue) end
      return cmdValue # String
    end

    defValue
  end
  #
  # Internal command line object, which is used for configuring
  # application states from command line. You may run Manager
  # application with ccStatusMode and if_status() macro will be
  # activated.
  #
  const _cmdLine          = CommandLine.create()
  #
  # Turns on/off output of real time manager status like
  # amount of organisms, IPS, RPS and so on...
  #
  const modeStatus        = _cmdActivated("modeStatus", true)
  #
  # Status showing period in seconds. Works only if
  # "showStatus" option is set to true.
  #
  const modeStatusPeriod  = _cmdActivated("modeStatusPeriod", 5.0)
  #
  # DEBUG mode. In this mode additional info like stack
  # traces will be available
  #
  const modeDebug         = _cmdActivated("modeDebug", false)
  #
  # In this mode we may run a Manager in special "iteration" mode. It
  # means, that we may run one iteration per call. It's helpfull for
  # testing of different aspects of Manager (e.g.: energy decrease)
  #
  const modeTest          = _cmdActivated("modeTest", false)
  #
  # Turns on profiling mode. ProfileView package is used. Turns
  # this config to on and run run-profiling.bat batch.
  #
  const modeProfile       = _cmdActivated("modeProfile", false)
  #
  # Amount of iteration, which will be done in modeProfile === true
  # before profiler windows will be shown
  #
  const modeProfilePeriod = _cmdActivated("modeProfilePeriod", 2000)
  #
  # This macro turns on specified code in case if "showStatus"
  # config is turned on.
  #
  macro if_status(ex) @static if CodeConfig.modeStatus esc(ex) end end
  #
  # This macro turns on DEBUG code if modeDebug is true
  #
  macro if_debug(ex) @static if CodeConfig.modeDebug esc(ex) end end
  #
  # This macro turns on special test mode, which is called "iterational".
  # In this mode we may run Manager for special amount of iterations like a task.
  #
  macro if_test(ex) @static if CodeConfig.modeTest esc(ex) end end
  #
  # This macro turns on specified code in profiling mode
  #
  macro if_profile(ex) @static if CodeConfig.modeProfile esc(ex) end end
end
