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
  export showStatus
  export showStatusPeriod
  export if_status
  #
  # Turns on/off output of real time manager status like
  # amount of organisms, IPS, RPS and so on...
  #
  const showStatus       = true
  #
  # Status showing period in seconds. Works only if
  # "showStatus" option is set to true.
  #
  const showStatusPeriod = 5.0
  #
  # This macro turns on specified code in case if "showStatus"
  # config is turned on.
  #
  macro if_status(ex) @static if CodeConfig.showStatus esc(ex) end end
end
