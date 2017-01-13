#
# Implements Real Time (RT) remote world showing. It have to track only
# differences in remote organism's world and show them in a canvas
# of a window. This is why it's different from AppRemoteWorld app.
# Second difference is requests direction - from server to client,
# but not otherwise (like in AppRemoteWorld).
#
# @author DeadbraiN
#
include("global/ImportFolders.jl")
import RemoteWorldRT
#
# Analog of main() in C lang
#
function main()
  local cfg::Config.ConfigData = Config.create()

  if Config.isEmpty(cfg) quit() end
  # TODO: should be get from command line parameter or it's local default config
  rw = RemoteWorldRT.create(cfg, cfg.conServerIp, cfg.conServerPort, cfg.conFastServerPort)
  RemoteWorldRT.start(rw)
end
#
# Application entry point
#
main()
