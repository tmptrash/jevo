#
# Types definition module. Will be included in many Manager
# related files/modules as shared object. This module should
# contain only shared object like types and may be something
# more...
#
# @author DeadbraiN
# TODO: do we need this module at all?!
module ManagerTypes
  import Creature
  import Server
  import Client
  import Config
  import World
  import Event

  export Plugin
  export ManagerData
  export OrganismTask
  export Connections

  export orgAmount
  #
  # Abstraction for plugin type. All plugins should be inherited
  # from this type like this:
  #
  # type MyPlugin <: Plugin ... end
  #
  abstract Plugin
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
  # organisms (which are transfserring from current Manager to
  # another one by network). "streaming" flag means, that streaming
  # mode is on or off. Here streaming is a world dots streaming.
  #
  type Connections
    streamInit::Bool
    server    ::Server.ServerConnection
    fastServer::Server.ServerConnection
    left      ::Client.ClientConnection
    right     ::Client.ClientConnection
    up        ::Client.ClientConnection
    down      ::Client.ClientConnection
    frozen    ::Dict{UInt, Creature.Organism}
    Connections() = new()
    Connections(
      streamInit::Bool,
      server    ::Server.ServerConnection,
      fastServer::Server.ServerConnection,
      left      ::Client.ClientConnection,
      right     ::Client.ClientConnection,
      up        ::Client.ClientConnection,
      down      ::Client.ClientConnection,
      frozen    ::Dict{UInt, Creature.Organism}
    ) = new(streamInit, server, fastServer, left, right, up, down, frozen)
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
    params::Dict{String, String}
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
    # If true, then minimum terminal messages will be posted
    #
    quiet::Bool
    #
    # Callback, which is called when at least one dot in a
    # world has changed it's color
    #
    dotCallback::Function
    #
    # Callback, which is called when one dot in a
    # world has changed it's position (moves from one
    # position to another).
    #
    moveCallback::Function
    #
    # Manager's task (main task)
    #
    task::Task
    #
    # Energy of maximum energetic organism
    #
    maxEnergy::Int
    #
    # Amount of iterations per second
    #
    ips::Float64
    #
    # Stack of killed organism id's
    #
    killed::Array{Int, 1}
    #
    # All available(compiled) Manager's plugins. Key is a plugin string
    # name (filename). Value - plugin related data type.
    #
    plugins::Dict{String, Plugin}
    #
    # Manager observer
    #
    obs::Event.Observer
    #
    # Manager connections (with other managers, terminals, visualizer etc...)
    #
    cons::Connections
    #
    # Short constructor
    #
    ManagerData(
      cfg::Config.ConfigData,
      world::World.Plane,
      positions::Dict{Int, Creature.Organism},
      organisms::Dict{UInt, Creature.Organism},
      tasks::Array{OrganismTask, 1},
      params::Dict{String, String},
      organismId::UInt,
      totalOrganisms::UInt,
      quiet::Bool,
      dotCallback::Function,
      moveCallback::Function,
      task::Task,
      maxEnergy::Int,
      ips::Float64,
      killed::Array{Int, 1},
      plugins::Dict{String, Plugin},
      obs::Event.Observer
    ) = new(
      cfg,
      world,
      positions,
      organisms,
      tasks,
      params,
      organismId,
      totalOrganisms,
      quiet,
      dotCallback,
      moveCallback,
      task,
      maxEnergy,
      ips,
      killed,
      plugins,
      obs
    )
  end

  #
  # Returns amount of alive organisms at the moment. This function is Here
  # and not in Manager module, because it's used in different other modules.
  # In case if you need some function, which work with manager's data and is
  # called only within Manager module and it's sub modules you have to add
  # it there.
  # @return {Int}
  #
  function orgAmount(man::ManagerTypes.ManagerData)
    length(man.tasks) - length(man.killed)
  end
end
