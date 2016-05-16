#
# Types definition module. Will be included in many Manager
# related files/modules as shared object. This module should
# contain only shared object like types and may be something
# more...
#
# @author DeadbraiN
#
module ManagerTypes
  import Creature

  export OrganismTask
  #
  # One task related to one organism
  #
  type OrganismTask
    #
    # Organism unique id
    #
    id::UInt
    #
    # Task object. With it we may use green
    #
    task::Task
    #
    # One organism
    #
    organism::Creature.Organism
  end
end
