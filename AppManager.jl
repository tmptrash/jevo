push!(LOAD_PATH, pwd())
include("Manager.jl")
println("Server has run")
Manager.run()