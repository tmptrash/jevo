push!(LOAD_PATH, pwd())
include("RemoteWorld.jl")
rw = RemoteWorld.create(ip"127.0.0.1", 2000)
RemoteWorld.display(rw)