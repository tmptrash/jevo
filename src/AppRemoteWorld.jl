#
# TODO:
#
include("ImportFolders.jl")
import RemoteWorld
#
# Analog of main() in C language
#
function main()
  local rw::RemoteWorld.RemoteData = RemoteWorld.create(ip"127.0.0.1", 2000)
  if rw === false quit() end
  RemoteWorld.start(rw)
end
#
# Application entry point
#
main()