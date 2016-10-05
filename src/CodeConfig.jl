#
# This is configuration file for entire application.
# It turns on or off some code parts according to below constants.
# The difference between this and Config.jl is in preprocessor.
# This config uses preprocessor for including/excluding wrapped
# by @if_xxx macroses code into the final (compiled) application.
# For example: setting showStatus config to false will physically
# remove all status related code from all sources. In this case
# it affects application performance.
#
# @author DeadbraiN
#
module CodeConfig
  export statusMode
  export statusModePeriod
  export debugMode
  export profileMode
  export profilePeriod

  export if_status
  export if_debug
  export if_profile
  #
  # Turns on/off output of real time manager status like
  # amount of organisms, IPS, RPS and so on...
  #
  const statusMode       = true
  #
  # Status showing period in seconds. Works only if
  # "showStatus" option is set to true.
  #
  const statusModePeriod = 5.0
  #
  # DEBUG mode. In this mode additional info like stack
  # traces will be available
  #
  const debugMode        = false
  #
  # Turns on profiling mode. ProfileView package is used. Turns
  # this config to on and run run-profiling.bat batch.
  #
  const profileMode      = false
  #
  # Amount of iteration, which will be done in profileMode === true
  # before profiler windows will be shown
  #
  const profileIps       = 2000
  #
  # This macro turns on specified code in case if "showStatus"
  # config is turned on.
  #
  macro if_status(ex) @static if CodeConfig.statusMode esc(ex) end end
  #
  # This macro turns on DEBUG code if debugMode is true
  #
  macro if_debug(ex) @static if CodeConfig.debugMode esc(ex) end end
  #
  # This macro turns on specified code in profiling mode
  #
  macro if_profile(ex) @static if CodeConfig.profileMode esc(ex) end end
end
