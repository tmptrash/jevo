#
# TODO: Description
# This is a part of Manager module.
# TODO: Dependencies
#
# @author DeadbraiN
#
include("ManagerRpcApi.jl")
using Debug
#
# @rpc
# Grabs world's rectangle region and returns it
# @param x Start X coordinate of region
# @param y Start Y coordinate of region
# @param width Width. 0 means all width
# @param height Height. 0 means all height
#
function getRegion(x::Integer = 1, y::Integer = 1, width::Integer = 0, height::Integer = 0)
  maxWidth  = size(_world.data)[2]
  maxHeight = size(_world.data)[1]

  if (width  === 0 || width  > maxWidth)  width  = maxWidth  end
  if (height === 0 || height > maxHeight) height = maxHeight end
  
  _world.data[y:height, x:width]
end
#
# @rpc
# Creates tasks and organisms according to Config. All tasks
# will be in _tasks field.
#
function createOrganisms()
  #
  # Inits available organisms in Tasks
  #
  for i = 1:Config.val(ORGANISM, START_AMOUNT)
    createOrganism()
  end
end
#
# @rpc
# Creates one task and organism inside this task. Created
# task will be added to _tasks array. Position may be set
# or random free position will be used.
# @param pos Position|nothing Position of the organism
# @return {OrganismTask}
#
function createOrganism(pos = nothing)
    orgTask = Manager._createOrganism(pos)
    orgTask.id
end
#
# @rpc
# Sets configuration value according to it's section and a key
# @param period Period we want to set
#
function setConfig(section::Int64, key::Int64, value::Any)
  Config.val(section, key, value)
end
#
# @rpc
# Does one mutation for specified organism
# @param organismId Unique orgaism's ID
#
function mutate(organismId)
  if (haskey(Manager._posMap, organismId))
    Mutator.mutate(Manager._posMap[organismId].script, Config.val(MUTATOR, ADD_CHANGE, probs))
    return true
  end
  false
end

#
# Creates server and returns it's ServerConnection type. It 
# uses porn number provided by "serverPort" command line
# argument or default one from Config module.
# @return Connection object
#
function _createServer()
  port = CommandLine.val(_params, Manager.PARAM_SERVER_PORT)
  port = port == "" ? Config.connection[PARAM_SERVER_PORT] : Int(port)
  con  = Server.create(ip"127.0.0.1", port)
  Event.on(con.observer, Server.EVENT_COMMAND, _onRemoteCommand)
  con
end
#
# Handler for commands obtained from all connected clients. All supported
# commands are in _rpcApi dictionary. If current command is undefinedin _rpcApi
# then, false will be returned.
#
function _onRemoteCommand(cmd::Connection.Command, ans::Connection.Answer)
  ans.data = haskey(_rpcApi, cmd.fn) ? _rpcApi[cmd.fn](cmd.args...) : false
end
#
# An API for remove clients. This manager will be a server for them.
# Only these functions may be called by clients. For calling them,
# you have to use "Client" module.
#
_rpcApi = Dict{Integer, Function}(
  RPC_GET_REGION        => getRegion,
  RPC_CREATE_ORGANISMS  => createOrganisms,
  RPC_CREATE_ORGANISM   => createOrganism,
  RPC_SET_CONFIG        => setConfig,
  RPC_MUTATE            => mutate
)