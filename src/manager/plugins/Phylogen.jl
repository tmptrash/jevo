#
# Creates phylogenetic tree of organisms data sets. These data sets will
# be stored in JSON files on HDD. One data set is stored after application
# reloaded. This approach will create small and separate JSON files for
# later visualization. Format of JSON:
#
# {
#   nodes: [{id: Number, org: String, mutations: [{org: String, amount: Number},...]},...],
#   edges: [{from:Number, to:Number},...]
# }
#
# where:
#   - id        - Organism unique id
#   - org       - Organism object in string representation
#   - mutations - All mutations of organism within his life
#     - org     - Same like org above
#     - amount  - Amount of mutations per one mutation session
#   - from      - Relation source organism id
#   - to        - Relation destination organism id
#
# @author DeadbraiN
#
module Phylogen
  import CodeConfig
  import CodeConfig.@if_debug
  import Creature.Organism
  import Helper
  import Creature
  import Event
  import Backup
  import ManagerTypes.ManagerData
  import ManagerTypes.PhylogenOrganism
  import ManagerTypes.PhylogenMutation

  export createFolder
  export addOrganism
  export delOrganism
  export addMutations
  export addRelation
  export clear
  export save
  #
  # Default postfix of phylogenetic tree files
  #
  const PHYLO_FILE_POSTFIX = "-jevo-phylo.json"
  #
  # Default name of the folder for phylogenetic tree JSON files
  #
  const PHYLO_FOLDER_NAME = "phylogen"
  #
  # Adds one organism to phylogenetic organisms pool. Creates it's
  # copy without meta information. Mutations array will be empty.
  # We have to call this method every time when new organism in a
  # world will be created. One organism in phylogenetic tree is a
  # node with relations. Every related node is a child or parent
  # organism.
  # @param man Manager related data object
  # @param org Organism we have to add to the pool
  #
  function addOrganism(man::ManagerData, org::Organism)
    local orgCopy::Organism = _copyOrganism(man, org)

    if haskey(man.phylogen.organisms, org.id)
      Helper.error(string("Phylogen: Dublicate organism id: ", org.id))
    end
    man.phylogen.organisms[org.id] = PhylogenOrganism(orgCopy, [])
  end
  #
  # Opposite to addOrganism() function. Removes one organism
  # from phylogenetic tree pool. Should be called if one organism
  # has died in a world.
  # @param man Manager related data object
  # @param org Organism we have to add to the pool
  #
  function delOrganism(man::ManagerData, org::Organism)
    delete!(man.phylogen.organisms, org.id)
  end
  #
  # Adds specified amount of mutations to organism. org parameter
  # should be passed after all mutations are applied to him. Mutations
  # are not a nodes in a tree. They are additional information of
  # node (organism).
  # @param man Manager related data object
  # @param org Organism we have to add to the pool
  # param amount Amount of real mutations
  #
  function addMutations(man::ManagerData, org::Organism, amount::Int)
    local orgs::Dict{UInt, PhylogenOrganism} = man.phylogen.organisms
    if !haskey(orgs, org.id)
      Helper.error(string("Phylogen: Unknown organism id: ", org.id))
      return nothing
    end
    local orgCopy::Organism = _copyOrganism(man, org)

    push!(orgs[org.id].mutations, PhylogenMutation(orgCopy, amount))
  end
  #
  # Adds relation (link) between parent and child organisms. Should be
  # called every time, when clonning or crossover is called.
  # @param man Manager related data object
  # @param parentId Unique id of parent organism
  # @param childId Unique id of child organism
  #
  function addRelation(man::ManagerData, parentId::UInt, childId::UInt)
    push!(man.phylogen.relations, parentId)
    push!(man.phylogen.relations, childId)
  end
  #
  # Clears phylogenetic tree arrays to start new portion of data. Only
  # relations may be cleared, because organisms pool should be actual
  # all the time.
  # @param man Manager related data object
  #
  function clear(man::ManagerData)
    man.phylogen.relations = [];
  end
  #
  # Saves JSON data to the file on HDD.
  # @param man Manager related data object
  #
  function save(man::ManagerData)
      Backup.save(_toJson(man), PHYLO_FOLDER_NAME, PHYLO_FILE_POSTFIX, true)
  end
  #
  # Converts phylogenetic tree arrays to JSON.
  # @param man Manager related data object
  #
  function _toJson(man::ManagerData)
    local org::PhylogenOrganism
    local i::Int
    local id::UInt
    local json::String
    local relations::Array{UInt, 1} = man.phylogen.relations
    local organisms::Dict{UInt, PhylogenOrganism} = man.phylogen.organisms
    local arr::Array{String, 1}

    arr = []
    json = "{\"nodes\": ["
    # TODO: add mutations data here
    for (id, org) in organisms push!(arr, string("{\"id\": ", id, ", \"label\": \"", id, "\"}")) end
    json *= join(arr, ",")
    json *= "], \"edges\": ["

    arr = []
    for i = 1:2:length(relations) push!(arr, string("{\"from\": ", relations[i],", \"to\": ", relations[i+1], "}")) end
    json *= join(arr, ",")
    json *= "]}"

    json
  end
  #
  # Makes full organism copy, but removes all meta information.
  # @param man Manager data object
  # @param org Organism we have to copy
  # @return {Organism}
  #
  function _copyOrganism(man::ManagerData, org::Organism)
    local orgCopy::Organism = Creature.create(org, man.cfg, org.id, org.pos)

    orgCopy.funcs  = []
    orgCopy.codeFn = Helper.emptyFn
    Event.clear(orgCopy.observer)

    orgCopy
  end
end
