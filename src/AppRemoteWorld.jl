#
# TODO:
#
include("ImportFolders.jl")
import RemoteWorld
#
# Analog of main() in C language
#
function main()
  if (rw = RemoteWorld.create(ip"127.0.0.1", 2000)) === false quit() end
  RemoteWorld.start(rw)
end
#
# Application entry point
#
main()