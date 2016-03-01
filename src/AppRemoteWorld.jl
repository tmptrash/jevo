#
# TODO:
#
include("ImportFolders.jl")

import RemoteWorld

if (rw = RemoteWorld.create(ip"127.0.0.1", 2000)) === false quit() end
RemoteWorld.display(rw)