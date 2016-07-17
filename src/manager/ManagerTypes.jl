#
# Types definition module. Will be included in many Manager
# related files/modules as shared object. This module should
# contain only shared object like types and may be something
# more...
#
# @author DeadbraiN
# TODO: do we need this at all?!!
module ManagerTypes
  import Creature
  import Server
  import Client
  import Config
  import World

  export OrganismTask
  export Connections
  export ManagerData
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
  #
  # Current Manager connection objects. They are: server and
  # all four clients. "frozen" field is used for storing "frozen"
  # organisms (which are transferring from current Manager to
  # another one by network). "streaming" flag means, that streaming
  # mode is on or off. Here streaming is a world dots streaming.
  #
  type Connections
    server    ::Server.ServerConnection
    fastServer::Server.ServerConnection
    left      ::Client.ClientConnection
    right     ::Client.ClientConnection
    up        ::Client.ClientConnection
    down      ::Client.ClientConnection
    frozen    ::Dict{UInt, Creature.Organism}
    streamInit::Bool
  end
  #
  # Manager's related type. Contains world, command line parameters,
  # organisms map and so on... If some fields will be changed, don't
  # forget to change them in recover() function.
  #
  type ManagerData
    #
    # Application wide configuration
    #
    cfg::Config.ConfigData
    #
    # Instance of the world
    #
    world::World.Plane
    #
    # Positions map, which stores positions of all organisms. Is used
    # for fast access to the organism by it's coordinates.
    #
    positions::Dict{Int, Creature.Organism}
    #
    # Map of organisms by id
    #
    organisms::Dict{UInt, Creature.Organism}
    #
    # All available organism's tasks
    #
    tasks::Array{OrganismTask, 1}
    #
    # Parameters passed through command line
    #
    params::Dict{ASCIIString, ASCIIString}
    #
    # Unique id of organism. It's increased every time, when new
    # organism will be created
    #
    organismId::UInt
    #
    # Total amount of organisms: alive + dead
    #
    totalOrganisms::UInt
    #
    # Organism with minimum amount of energy
    #
    minOrg::Creature.Organism
    #
    # Organism with maximum amount of energy
    #
    maxOrg::Creature.Organism
    #
    # Id of organism with minimum amount of energy
    #
    minId::UInt
    #
    # Id of organism with maximum amount of energy
    #
    maxId::UInt
    #
    # If true, then minimum terminal messages will be posted
    #
    quiet::Bool
    #
    # Manager connections (with other managers, terminals, visualizer etc...)
    #
    cons::Connections
    #
    # Callback, which is called when at least one dot in a
    # world has changed it's color
    #
    dotCallback::Function
  end
end
