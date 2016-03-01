push!(LOAD_PATH, "$(pwd())/src")
push!(LOAD_PATH, "$(pwd())/src/util")
push!(LOAD_PATH, "$(pwd())/src/manager")
push!(LOAD_PATH, "$(pwd())/src/net")
push!(LOAD_PATH, "$(pwd())/src/organism")
push!(LOAD_PATH, "$(pwd())/src/visual")

import Manager
import Helper

Helper.info("Server has run")
Manager.run()