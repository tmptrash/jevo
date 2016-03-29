#
# Helper module for Remote Terminal application. It
# contains shorthands (macroses) for more simple 
# remote server configuring and requests. 
#
# @author DeadbraiN
# TODO: add somehow REPL help tips for these functions
module Terminal
  import RpcApi
  import Config
  import Client
  import Connection
  import Creature

  export init
  export termGetRegion
  # implement all of this
  # const RPC_CREATE_ORGANISMS  = 2
  # const RPC_CREATE_ORGANISM   = 3
  # const RPC_SET_CONFIG        = 4
  # const RPC_GET_CONFIG        = 5
  # const RPC_MUTATE            = 6
  # const RPC_GET_IPS           = 7
  # const RPC_GET_ORGANISM      = 8
  # const RPC_GET_AMOUNT        = 9
  # const RPC_GET_ORGANISMS     = 10
  # const RPC_SET_ENERGY        = 11
  # const RPC_SET_ENERGY_RND    = 12
  # const RPC_BACKUP            = 13
  # const RPC_GET_STATISTICS    = 14
  # const RPC_DEBUG_GC          = 15
  #
  # Contains connection object for shorthands
  #
  type TerminalData
  	con::Client.ClientConnection
  	TerminalData() = new()
  end
  #
  # This function should be called first before any macros
  # will be called. It sets connection object as a global.
  # @param con Connection object
  #
  function init(con::Client.ClientConnection)
  	_termData.con = con
  end
  #
  # Shorthand for RpcApi.RPC_GET_REGION
  # @param x Start X coordinate of region
  # @param y Start Y coordinate of region
  # @param x1 End x. 0 means all width
  # @param y1 End y. 0 means all height
  #
  function termGetRegion(x::Int = 1, y::Int = 1, x1::Int = 0, y1::Int = 0)
  	Client.request(_termData.con, RpcApi.RPC_GET_REGION, x, y, x1, y1)
  end
  #
  # This object is created only for passing connection
  # data to macroses.
  #
  global _termData = TerminalData()
end