#
# Implements Real Time (RT) remote world showing. It have to track only
# differences in remote organism's world and show them in a canvas
# of a window. This is why it's different from AppRemoteWorld app.
# Second difference is requests direction - from server to client,
# but not otherwise (like in AppRemoteWorld).
#
# @author DeadbraiN
#
include("ImportFolders.jl")
import RemoteWorldRT
#
# Analog of main() in C lang
#
function main()
  # TODO: should be get from command line parameter or it's local default config
  if (rw = RemoteWorldRT.create(ip"127.0.0.1", 2000)) === false quit() end
  RemoteWorldRT.start(rw)
end
#
# Application entry point
#
main()
