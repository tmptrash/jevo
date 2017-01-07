#
# Creates phylogenetic tree of organisms data. This data will
# be stored in JSON files partially. One part is an application reload.
# This approach will create small and separate JSON files for
# later visualization.
#
# @author DeadbraiN
#
import CodeConfig
import Creature
import ManagerTypes
#
# Adds one organism to organisms pool. Creates it's copy without
# functions meta information.
# @param man Manager related data object
# @param org Organism we have to add to the pool
#
function _phyloAddOrganism(man::ManagerTypes.ManagerData, org::Creature.Organism)
  local orgCopy::Creature.Organism = Creature.create(org, man.cfg, org.id, org.pos)
  #
  # This this how we clear functions meta infomation
  #
  orgCopy.funcs = []
  push!(man.phylogen.organisms, orgCopy)
end
#
# Adds relation (link) between parent and child organisms
# @param man Manager related data object
# @param parentId Unique id of parent organism
# @param childId Unique id of child organism
#
function _phyloAddRelation(man::ManagerTypes.ManagerData, parentId::UInt, childId::UInt)
  push!(man.phylogen.relations, parentId)
  push!(man.phylogen.relations, childId)
end
#
# Clears phylogenetic tree arrays to start new portion of data
# @param man Manager related data object
#
function _phyloClear(man::ManagerTypes.ManagerData)
  man.phylogen.organisms = [];
  man.phylogen.relations = [];
end
#
# Converts phylogenetic tree arrays to JSONs
# @param man Manager related data object
#
function _phyloToJson(man::ManagerTypes.ManagerData)
  local org::Creature.Organism

  for org in man.phylogen.organisms
    
  end
end
