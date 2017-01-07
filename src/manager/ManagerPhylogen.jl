#
# Creates phylogenetic tree of organisms data. This data will
# be stored in JSON files partially. One part is an application reload.
# This approach will create small and separate JSON files for
# later visualization.
#
# @author DeadbraiN
#
import CodeConfig
import CodeConfig.@if_debug
import Helper
import Creature.Organism
import Creature
import ManagerTypes.ManagerData
import ManagerTypes.PhylogenOrganism
import ManagerTypes.PhylogenMutation
#
# Adds one organism to phylogenetic organisms pool. Creates it's
# copy without functions meta information. Mutations array will
# be empty. We have to call this method every time when new organism
# will be created.
# @param man Manager related data object
# @param org Organism we have to add to the pool
#
function _phyloAddOrganism(man::ManagerData, org::Organism)
  local orgCopy::Organism = _phyloCopyOrganism(man, org)
  if haskey(man.phylogen.organisms, orgCopy.id)
    Helper.error(string("Phylogen: Dublicate organism id: ", orgCopy.id))
  end
  man.phylogen.organisms[orgCopy.id] = PhylogenOrganism(orgCopy, [])
end
#
# Adds specified amount of mutations to organism. org parameter
# should be passed after all mutations are applied to him
# @param man Manager related data object
# @param org Organism we have to add to the pool
# param amount Amount of real mutations
#
function _phyloAddMutations(man::ManagerData, org::Organism, amount::Int)
  local orgs::Dict{UInt, PhylogenOrganism} = man.phylogen.organisms
  if !haskey(orgs, org.id)
    Helper.error(string("Phylogen: Unknown organism id: ", org.id))
    return nothing
  end
  local orgCopy::Organism = _phyloCopyOrganism(man, org)

  push!(orgs[org.id].mutations, PhylogenMutation(orgCopy, amount))
end
#
# Adds relation (link) between parent and child organisms
# @param man Manager related data object
# @param parentId Unique id of parent organism
# @param childId Unique id of child organism
#
function _phyloAddRelation(man::ManagerData, parentId::UInt, childId::UInt)
  push!(man.phylogen.relations, parentId)
  push!(man.phylogen.relations, childId)
end
#
# Clears phylogenetic tree arrays to start new portion of data
# @param man Manager related data object
#
function _phyloClear(man::ManagerData)
  man.phylogen.organisms = Dict{UInt, PhylogenOrganism}();
  man.phylogen.relations = [];
end
#
# Saves JSON data to the file
# @param man Manager related data object
# @param json JSON string data to save
#
function _phyloSave(man::ManagerData)
  _phyloToFile(_phyloToJson(man), "graph.json")
end
#
# Converts phylogenetic tree arrays to JSONs. Example:
# {
#   nodes: [{id:UInt},...],
#   edges: [{from: UInt, to: UInt},...]
# }
#
# @param man Manager related data object
#
function _phyloToJson(man::ManagerData)
  local org::PhylogenOrganism
  local i::Int
  local json::String
  local relations::Array{UInt, 1} = man.phylogen.relations
  local arr::Array{String, 1} = []

  json = "{nodes: ["
  for org in man.phylogen.organisms
    push!(arr, string("{id: ", org.id, "}"))
  end
  json *= join(arr, ",")
  json *= "], edges: ["

  arr = []
  for i = 1:2:length(man.phylogen.relations)
    push!(arr, string("{from: ", relations[i],", to: ", relations[i+1], "}"))
  end
  json *= join(arr, ",")
  json *= "]}"

  json
end
#
# Makes full organism copy, but removes all functions
# meta information.
# @param man Manager data object
# @param org Organism we have to copy
# @return {Organism}
#
function _phyloCopyOrganism(man::ManagerData, org::Organism)
  local orgCopy::Organism = Creature.create(org, man.cfg, org.id, org.pos)

  orgCopy.funcs  = []
  orgCopy.codeFn = Helper.emptyFn
  Event.clear(orgCopy.observer)

  orgCopy
end
#
# Appends native values to the file.
# @param data String data to save
# @param file File name, we want append to
# @return {Bool} saving result
#
function _phyloToFile(data::String, file::String)
  local io  = null
  local ret = true

  try
    io = open(file, "w")
    write(io, data)
    close(io)
  catch(e)
    warn("ManagerPhylogen._phyloToFile(): $e")
    @if_debug showerror(STDOUT, e, catch_backtrace())
    ret = false
  finally
    if io !== null close(io) end
  end

  ret
end
