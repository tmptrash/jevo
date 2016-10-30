#
# TODO:
#
include("global/ImportFolders.jl")
import RemoteWorld
#
# Analog of main() in C language
#
function main()
  local cfg::Config.ConfigData = Config.create()

  if Config.isEmpty(cfg) || (rw = RemoteWorld.create(ip"127.0.0.1", 2000, cfg.WORLD_WIDTH, cfg.WORLD_HEIGHT)) === false quit() end
  RemoteWorld.start(rw, cfg.WORLD_FRAME_DELAY)
end
#
# Application entry point
#
main()
