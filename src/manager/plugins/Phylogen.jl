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
  import Helper
  import Creature
  import Event
  import Backup
  import ManagerTypes.ManagerData
  import ManagerTypes.Plugin

  export init
  #
  # Default postfix of phylogenetic tree files
  #
  const PHYLO_FILE_POSTFIX = "-jevo-phylo.json"
  #
  # Default name of the folder for phylogenetic tree JSON files
  #
  const PHYLO_FOLDER_NAME = "phylogen"
  #
  # Name of the current module
  #
  const MODULE_NAME = string(Phylogen)
  #
  # Describes one mutation of organism. Mutated organism - it's
  # original (clonned) organism + mutations.
  #
  type PhylogenMutation
    #
    # Mutated organism
    #
    org::Creature.Organism
    #
    # Amount of real mutations applied to original organism
    #
    mutations::Int
  end
  #
  # Describes all mutations of organism. Organism and mutations
  # should be separate copies from original organisms.
  #
  type PhylogenOrganism
    #
    # Organism object after birth
    #
    org::Creature.Organism
    #
    # Array of organisms based on org, but with mutations. This
    # is something like it's future versions.
    #
    mutations::Array{PhylogenMutation, 1}
  end
  #
  # Contains Phylogenetic tree of organisms. These data will
  # be used for Phylogenetic tree visualization.
  #
  type PhylogenData <: Plugin
    #
    # Map of organism copies. It's important to have full copy without
    # meta information about their code (funcs field should be empty).
    # Key is organism's unique id.
    #
    organisms::Dict{UInt, PhylogenOrganism}
    #
    # Array of relations. Relation it's two organism ids, that links
    # them together. For example parent and child organism ids. These
    # data will be used for phylogenetic graph creation.
    #
    relations::Array{UInt, 1}
    #
    # Set of killed organism ids. By killed, i mean organisms, who
    # were killed before they were saved to JSON file. We have to
    # store them in killedOrganisms, because JSON will have releation
    # to undefined (killed) organism and graph wisualizer will fail
    #
    killedIds::Set{UInt}
    #
    # Organisms, who were killed before they will be stored in JSON file.
    # See killedIds for details
    #
    killedOrganisms::Dict{UInt, PhylogenOrganism}
  end
  #
  # Module initializer
  #
  function init(man::ManagerData)
    #
    # We havr to add ourself to plugins map
    #
    man.plugins[MODULE_NAME] = PhylogenData(Dict{UInt, PhylogenOrganism}(), [], Set{UInt}(), Dict{UInt, PhylogenOrganism}())
    #
    # All event handlers should be binded here
    #
    Event.on(man.obs, "backup", _save)
    Event.on(man.obs, "backup", _clear)
    Event.on(man.obs, "killorganism", _delOrganism)
    Event.on(man.obs, "bornorganism", _addOrganism)
    Event.on(man.obs, "mutations", _addMutations)
    Event.on(man.obs, "clone", _addRelation)

  end
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
  function _addOrganism(man::ManagerData, org::Creature.Organism)
    local orgCopy::Creature.Organism = _copyOrganism(man, org)

    if haskey(man.plugins[MODULE_NAME].organisms, org.id)
      Helper.error(string("Phylogen: Dublicate organism id: ", org.id))
    end
    man.plugins[MODULE_NAME].organisms[org.id] = PhylogenOrganism(orgCopy, [])
  end
  #
  # Opposite to addOrganism() function. Removes one organism
  # from phylogenetic tree pool. Should be called if one organism
  # has died in a world.
  # @param man Manager related data object
  # @param org Organism we have to add to the pool
  #
  function _delOrganism(man::ManagerData, org::Creature.Organism)
    #
    # We have unsaved relation for this organism, so we have to
    # store it in separate dictionary
    #
    if in(org.id, man.plugins[MODULE_NAME].killedIds)
      man.plugins[MODULE_NAME].killedOrganisms[org.id] = man.plugins[MODULE_NAME].organisms[org.id]
    end
    delete!(man.plugins[MODULE_NAME].organisms, org.id)
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
  function _addMutations(man::ManagerData, org::Creature.Organism, amount::Int)
    local orgs::Dict{UInt, PhylogenOrganism} = man.plugins[MODULE_NAME].organisms
    if !haskey(orgs, org.id)
      Helper.error(string("Phylogen: Unknown organism id: ", org.id))
      return nothing
    end
    local orgCopy::Creature.Organism = _copyOrganism(man, org)

    push!(orgs[org.id].mutations, PhylogenMutation(orgCopy, amount))
  end
  #
  # Adds relation (link) between parent and child organisms. Should be
  # called every time, when clonning or crossover is called.
  # @param man Manager related data object
  # @param parentId Unique id of parent organism
  # @param childId Unique id of child organism
  #
  function _addRelation(man::ManagerData, parentId::UInt, childId::UInt)
    local data::PhylogenData = man.plugins[MODULE_NAME]

    push!(data.relations, parentId)
    push!(data.relations, childId)
    push!(data.killedIds, parentId)
    push!(data.killedIds, childId)
  end
  #
  # Clears phylogenetic tree arrays to start new portion of data. Only
  # relations may be cleared, because organisms pool should be actual
  # all the time.
  # @param man Manager related data object
  #
  function _clear(man::ManagerData)
    man.plugins[MODULE_NAME].relations = [];
    man.plugins[MODULE_NAME].killedIds = Set{UInt}();
    man.plugins[MODULE_NAME].killedOrganisms = Dict{UInt, PhylogenOrganism}()
  end
  #
  # Saves JSON data to the file on HDD.
  # @param man Manager related data object
  #
  function _save(man::ManagerData)
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
    local relations::Array{UInt, 1} = man.plugins[MODULE_NAME].relations
    local nodes::Array{String, 1} = []
    local edges::Array{String, 1} = []

    json = "{\"elements\":{\"nodes\":["
    _fillBy(man.plugins[MODULE_NAME].organisms, nodes)
    _fillBy(man.plugins[MODULE_NAME].killedOrganisms, nodes)
    json *= join(nodes, ",")
    json *= "]"

    for i = 1:2:length(relations) push!(edges, string("{\"data\":{\"source\":\"", relations[i],"\",\"target\":\"", relations[i+1], "\"}}")) end
    if length(edges) < 1 return json end
    json *= ",\"edges\":["
    json *= join(edges, ",")
    json *= "]}}"

    json
  end
  #
  # Fills "nodes" array by "organisms" data
  # @param organisms
  # @param nodes
  # TODO: add mutations data here
  function _fillBy(orgs::Dict{UInt, PhylogenOrganism}, nodes::Array{String, 1})
    local org::PhylogenOrganism
    local id::UInt

    for (id, org) in orgs
      push!(nodes, string(
        "{\"data\":{\"id\": \"", id,
        "\",\"code\":\"", replace(replace(string(org.org.code), "\n", "\\n"), "\"", "\\\""),
        "\"}}"))
    end
  end
  #
  # Makes full organism copy, but removes all meta information.
  # @param man Manager data object
  # @param org Organism we have to copy
  # @return {Organism}
  #
  function _copyOrganism(man::ManagerData, org::Creature.Organism)
    local orgCopy::Creature.Organism = Creature.create(org, man.cfg, org.id, org.pos)

    orgCopy.funcs  = []
    orgCopy.codeFn = Helper.emptyFn
    Event.clear(orgCopy.observer)

    orgCopy
  end
end
