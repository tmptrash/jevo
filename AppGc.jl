push!(LOAD_PATH, pwd())

import GcModule

tasks = GcModule.MyType[]
GcModule.start(tasks)

#tasks = nothing
#gc()
#println("end")
#whos()
