push!(LOAD_PATH, "$(pwd())/src")
using Manager

#data = Manager.Data
println("Server has run")
Manager.run()