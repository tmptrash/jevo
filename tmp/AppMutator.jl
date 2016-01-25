push!(LOAD_PATH, "$(pwd())/src")
using Mutator
using Creature

local o::Organism = create()