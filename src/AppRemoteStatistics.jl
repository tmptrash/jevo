#
# TODO:
#
include("ImportFolders.jl")
import RemoteStatistics
#
# Analog of main() in C language
#
function main()
  local cfg::Config.ConfigData = Config.create()

  # TODO: ip should be in config
  if Config.isEmpty(cfg) || (rs = RemoteStatistics.create(ip"127.0.0.1", 2000, Config.val(cfg, :STAT_WIDTH), Config.val(cfg, :STAT_HEIGHT))) === false quit() end
  RemoteStatistics.start(rs, Config.val(cfg, :STAT_FRAME_DELAY))
end
#
# Application entry point
#
main()
