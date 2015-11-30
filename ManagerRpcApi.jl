#
# This file is a part of ManagerRpc.jl. It contains Manager RPC
# functions identifiers. They are used for Remote Procedure Calls
# from any other processes. See Connection.Command type for details.
#
# @author DeadbraiN
#
const RPC_GET_REGION        = 0
const RPC_CREATE_ORGANISMS  = 1
const RPC_CREATE_ORGANISM   = 2
const RPC_SET_CONFIG        = 3
const RPC_MUTATE            = 4