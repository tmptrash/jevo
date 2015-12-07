#
# This module is a RPC remote API. It contains Manager RPC
# functions identifiers. They are used for Remote Procedure Calls
# from any other processes. See Connection.Command type for details.
#
# @author DeadbraiN
#
module RpcApi
  export RPC_GET_REGION
  export RPC_CREATE_ORGANISMS
  export RPC_CREATE_ORGANISM
  export RPC_SET_CONFIG
  export RPC_MUTATE
  export RPC_GET_IPS
  export RPC_GET_ORGANISM
  
  export Region
  #
  # Describes 2D region in a world
  #
  type Region
    reg::Array{UInt32, 2}
    ips::UInt
  end
  #
  # RPC API unique identifiers. Only these functions may be called
  # remotely on the server.
  #
  const RPC_GET_REGION        = 1
  const RPC_CREATE_ORGANISMS  = 2
  const RPC_CREATE_ORGANISM   = 3
  const RPC_SET_CONFIG        = 4
  const RPC_MUTATE            = 5
  const RPC_GET_IPS           = 6
  const RPC_GET_ORGANISM      = 7
end