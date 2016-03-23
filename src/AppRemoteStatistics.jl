#
# TODO:
#
include("ImportFolders.jl")
import RemoteStatistics
#
# Analog of main() in C language
#
function main()
  # TODO: ip should be in config
  if (rs = RemoteStatistics.create(ip"127.0.0.1", 2000)) === false quit() end
  RemoteStatistics.start(rs)
end
#
# Application entry point
#
main()