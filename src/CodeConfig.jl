#
# This is configuration file for entire application.
# It turns on or off some code parts according to settings.
#
# @author DeadbraiN
#
module CodeConfig
  export if_status
  #
  # Turns on/off output of real time manager status like
  # amount of organisms, IPS, RPS and so on...
  #
  const showStatus       = false
  #
  # Status showing period in seconds. Works only if
  # "showStatus" option is set to true.
  #
  const showStatusPeriod = 5.0
  #
  # This macro turns on specified code in case if "showStatus"
  # config is turned on.
  #
  macro if_status(ex)
    @static if CodeConfig.showStatus esc(ex) end
  end
end
