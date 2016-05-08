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
  export termCreateOrganisms
  export termCreateOrganism
  export termSetConfig
  export termGetConfig
  export termSetQuite
  export termMutate
  export termGetIps
  export termGetOrganism
  export termGetAmount
  export termGetOrganisms
  export termSetEnergy
  export termSetRandomEnergy
  export termBackup
  export termGetStatistics
  export termGetBest
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
  # Shorthand for RpcApi.RPC_GET_REGION. See ManagerRpc.getRegion
  # for details
  #
  function termGetRegion(x::Int = 1, y::Int = 1, x1::Int = 0, y1::Int = 0)
    Client.request(_termData.con, RpcApi.RPC_GET_REGION, x, y, x1, y1)
  end
  #
  # Shorthand for RpcApi.RPC_CREATE_ORGANISMS. See
  # ManagerRpc.createOrganisms for details
  #
  function termCreateOrganisms()
    Client.request(_termData.con, RpcApi.RPC_CREATE_ORGANISMS)
  end
  #
  # Shorthand for RpcApi.RPC_CREATE_ORGANISM. See
  # ManagerRpc.createOrganism for details
  #
  function termCreateOrganism(pos::Helper.Point = Helper.Point(0, 0))
    Client.request(_termData.con, RpcApi.RPC_CREATE_ORGANISM, pos)
  end
  #
  # Shorthand for RpcApi.RPC_SET_CONFIG. See
  # ManagerRpc.setConfig for details
  #
  function termSetConfig(name::Symbol, value::Any)
    Client.request(_termData.con, RpcApi.RPC_SET_CONFIG, name, value)
  end
  #
  # Shorthand for RpcApi.RPC_GET_CONFIG. See
  # ManagerRpc.getConfig for details
  #
  function termGetConfig(name::Symbol)
    Client.request(_termData.con, RpcApi.RPC_GET_CONFIG, name)
  end
  #
  # Shorthand for RpcApi.RPC_SET_QUITE. See
  # ManagerRpc.setQuite for details
  #
  function termSetQuite(mode::Bool = true)
    Client.request(_termData.con, RpcApi.RPC_SET_QUITE, mode)
  end
  #
  # Shorthand for RpcApi.RPC_MUTATE. See
  # ManagerRpc.mutate for details
  #
  function termMutate(orgId::UInt, amount::Int = 1)
    Client.request(_termData.con, RpcApi.RPC_MUTATE, orgId, amount)
  end
  #
  # Shorthand for RpcApi.RPC_GET_IPS. See
  # ManagerRpc.getIps for details
  #
  function termGetIps()
    Client.request(_termData.con, RpcApi.RPC_GET_IPS)
  end
  #
  # Shorthand for RpcApi.RPC_GET_ORGANISM. See
  # ManagerRpc.getOrganism for details
  #
  function termGetOrganism(id::UInt)
    Client.request(_termData.con, RpcApi.RPC_GET_ORGANISM, id)
  end
  #
  # Shorthand for RpcApi.RPC_GET_AMOUNT. See
  # ManagerRpc.getAmount for details
  #
  function termGetAmount()
    Client.request(_termData.con, RpcApi.RPC_GET_AMOUNT)
  end
  #
  # Shorthand for RpcApi.RPC_GET_ORGANISMS. See
  # ManagerRpc.getOrganisms for details
  #
  function termGetOrganisms()
    Client.request(_termData.con, RpcApi.RPC_GET_ORGANISMS)
  end
  #
  # Shorthand for RpcApi.RPC_SET_ENERGY. See
  # ManagerRpc.setEnergy for details
  #
  function termSetEnergy(x::Int, y::Int, energy::UInt32)
    Client.request(_termData.con, RpcApi.RPC_SET_ENERGY, x, y, energy)
  end
  #
  # Shorthand for RpcApi.RPC_SET_ENERGY_RND. See
  # ManagerRpc.setEnergy for details
  #
  function termSetRandomEnergy(amount::Int = Config.val(:WORLD_START_ENERGY_BLOCKS), energy::UInt32 = Config.val(:WORLD_START_ENERGY_AMOUNT))
    Client.request(_termData.con, RpcApi.RPC_SET_ENERGY_RND, amount, energy)
  end
  #
  # Shorthand for RpcApi.RPC_BACKUP. See
  # ManagerRpc.setEnergy for details
  #
  function termBackup()
    Client.request(_termData.con, RpcApi.RPC_BACKUP)
  end
  #
  # Shorthand for RpcApi.RPC_GET_STATISTICS. See
  # ManagerRpc.getStatistics for details
  #
  function termGetStatistics()
    Client.request(_termData.con, RpcApi.RPC_GET_STATISTICS)
  end
  #
  # Returns best organisms (with maximum energy). See
  # ManagerRpc.getBest for details
  #
  function termGetBest(amount::Int)
    Client.request(_termData.con, RpcApi.RPC_GET_BEST, amount)
  end
  #
  # This object is created only for passing connection
  # data to macroses.
  #
  global _termData = TerminalData()
end
