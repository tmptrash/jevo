push!(LOAD_PATH, "$(pwd())/src")

import Manager
import Helper

Helper.info("Server has run")
Manager.run()