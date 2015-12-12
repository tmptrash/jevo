push!(LOAD_PATH, pwd())
using Manager

#data = Manager.Data
println("Server has run")
Manager.run()