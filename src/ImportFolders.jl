#
# This file contains a list of folders, which we have 
# to add to include search path. After that we may use 
# import ModuleName. This file should be included from
# root directory. e.g.: in AppXXX.jl files...
#
# @author DeadbraiN
#
push!(LOAD_PATH, "$(pwd())/src")
push!(LOAD_PATH, "$(pwd())/src/util")
push!(LOAD_PATH, "$(pwd())/src/manager")
push!(LOAD_PATH, "$(pwd())/src/net")
push!(LOAD_PATH, "$(pwd())/src/organism")
push!(LOAD_PATH, "$(pwd())/src/visual")
push!(LOAD_PATH, "$(pwd())/test")