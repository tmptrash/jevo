# TODO: this file should be removed
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
# >julia src\AppManager.jl modeStatus # means modeStatus:true
#
# @author DeadbraiN
#
module CodeConfig
  import CommandLine

  export modeStatusPeriod
  #
  # This function checks if specified command is activated. Activated
  # means set up in command line agrument. It means, that user run
  # jevo in special mode (status, test,...)
  # @param cmd Name of the command
  # @param defValue Default value if command is not set
  # @return {Any}
  # TODO: remove this!!!
  function _cmdActivated(cmd::String, defValue::Any)
    local hasCommand::Bool = CommandLine.has(_cmdLine, cmd)
    local cmdValue::Any = CommandLine.val(_cmdLine, cmd)
    #
    # We have only command without value
    #
    if hasCommand
      if isempty(cmdValue) return true end                                        # Bool
      if cmdValue == "true" return true end                                       # Bool
      if cmdValue == "false" return false end                                     # Bool
      if !isnull(tryparse(Int, cmdValue)) return parse(Int, cmdValue) end         # Int
      if !isnull(tryparse(Float64, cmdValue)) return parse(Float64, cmdValue) end # Float64
      if cmdValue[1] === '[' return parse.(split(cmdValue[2:end-1], ",")) end     # Array{Int,1}
      return cmdValue                                                             # String
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
  # Status showing period in seconds. Works only if
  # "showStatus" option is set to true.
  #
  const modeStatusPeriod  = _cmdActivated("modeStatusPeriod", 5.0)
end
