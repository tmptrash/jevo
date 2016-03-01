push!(LOAD_PATH, "$(pwd())/src")
include("RemoteWorld.jl")
push!(LOAD_PATH, "$(pwd())/src/util")
push!(LOAD_PATH, "$(pwd())/src/manager")
push!(LOAD_PATH, "$(pwd())/src/net")
push!(LOAD_PATH, "$(pwd())/src/organism")
push!(LOAD_PATH, "$(pwd())/src/visual")

if (rw = RemoteWorld.create(ip"127.0.0.1", 2000)) === false quit() end
RemoteWorld.display(rw)
