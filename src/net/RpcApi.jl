#
# This module is a RPC remote API. It contains Manager RPC
# functions identifiers. They are used for Remote Procedure Calls
# from any other processes. See Connection.Command type for details.
# It'salso important, that this module should contain only native
# Julia definition. It shouldn't contain other modules.
#
# @author DeadbraiN
#
module RpcApi
  export RPC_GET_REGION
  export RPC_CREATE_ORGANISMS
  export RPC_CREATE_ORGANISM
  export RPC_SET_CONFIG
  export RPC_GET_CONFIG
  export RPC_SET_QUITE
  export RPC_MUTATE
  export RPC_GET_IPS
  export RPC_GET_ORGANISM
  export RPC_GET_AMOUNT
  export RPC_GET_ORGANISMS
  export RPC_SET_ENERGY
  export RPC_SET_ENERGY_RND
  export RPC_BACKUP
  export RPC_GET_STATISTICS
  
  export Region
  export SimpleOrganism
  #
  # Describes 2D region in a world
  #
  type Region
    reg::Array{UInt32, 2}
    ips::Int
  end
  #
  # This is an analog of Creature.Organism type. It's used for 
  # transporting more simple version of organism data through
  # network.
  #
  type SimpleOrganism
    #
    # Unique organism id
    #
    id::UInt
    #
    # @inheritable
    # Code of organism. Array of atomic string blocks on Julia language.
    #
    code::Expr
    #
    # @inheritable
    # Mutations probability. Add, change, delete. e.g.: [1,10,2]
    # means, that "add" mutation will be 10 times rare then "change"
    # and 2 times rare then "delete" mutations.
    #
    mutationProbabilities::Array{Int, 1}
    #
    # @inheritable
    # Amount of mutations, which will be applied to arganism after
    # clonning.
    #
    mutationsOnClone::Int
    #
    # @inheritable
    # Amount of iterations within organism's life loop, after that we 
    # do mutations according to MUTATE_AMOUNT config amount. If 0, then
    # mutations will be disabled.
    #
    mutationPeriod::Int
    #
    # @inheritable
    # Value, which will be used like amount of mutations per 
    # MUTATE_AFTER_TIMES iterations. 0 is a possible value if
    # we want to disable mutations.
    #
    mutationAmount::Int
    #
    # Organism's energy. If it's zero, then organism is die.
    # It can't be more then ORGANISM_MAX_ENERGY configuration.
    #
    energy::Int
    #
    # Organism's personal memory. Is used in any possible way.
    #
    mem::Dict{Int16, Int16}
    #
    # Organism's position in a 2D world. Starts from (1,1) 
    # ends with (WORLD_WIDTH, WORLD_HEIGHT) configurations.
    #
    pos::Array{Int, 1}
    #
    # Organism code size in lines
    #
    codeSize::Int
  end
  #
  # Structure of world statistics
  #
  type Statistics
    #
    # Amount of alive organisms
    #
    orgAmount::Int
    #
    # Iterations(cicles) per second
    #
    ips::Int
    #
    # Total amount of organisms: alive+dead
    #
    orgTotalAmount::Int
    #
    # Width of the world
    #
    worldWidth::Int
    #
    # Height of the world
    #
    worldHeight::Int
    #
    # Global configuration in string representation
    #
    cfg::Array{ASCIIString, 1}
    #
    # An organism with minimum energy
    #
    minOrg::SimpleOrganism
    #
    # An organism with maximum energy
    #
    maxOrg::SimpleOrganism
  end
  #
  # RPC API unique identifiers. Only these functions may be called
  # remotely on the server.
  #
  const RPC_GET_REGION        = 1
  const RPC_CREATE_ORGANISMS  = 2
  const RPC_CREATE_ORGANISM   = 3
  const RPC_SET_CONFIG        = 4
  const RPC_GET_CONFIG        = 5
  const RPC_SET_QUITE         = 6
  const RPC_MUTATE            = 7
  const RPC_GET_IPS           = 8
  const RPC_GET_ORGANISM      = 9
  const RPC_GET_AMOUNT        = 10
  const RPC_GET_ORGANISMS     = 11
  const RPC_SET_ENERGY        = 12
  const RPC_SET_ENERGY_RND    = 13
  const RPC_BACKUP            = 14
  const RPC_GET_STATISTICS    = 15
  const RPC_GET_BEST          = 16
end