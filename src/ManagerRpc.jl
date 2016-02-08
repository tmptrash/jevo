#
# TODO: Description
# This is a part of Manager module.
# TODO: Dependencies
#
# @author DeadbraiN
# TODO: describe annotations: @rpc (RPC function)
#
using RpcApi
#
# @rpc
# Grabs world's rectangle region and returns it
# @param x Start X coordinate of region
# @param y Start Y coordinate of region
# @param x1 End x. 0 means all width
# @param y1 End y. 0 means all height
#
function getRegion(x::Int = 1, y::Int = 1, x1::Int = 0, y1::Int = 0)
  maxWidth  = size(_world.data)[2]
  maxHeight = size(_world.data)[1]

  if (x1 < 1 || x1 > maxWidth)  x1 = maxWidth  end
  if (y1 < 1 || y1 > maxHeight) y1 = maxHeight end
  if (x  < 1 || x  > maxWidth)  x  = 1 end
  if (y  < 1 || y  > maxHeight) y  = 1 end 
  
  RpcApi.Region(_world.data[y:y1, x:x1], Config.val(:WORLD_IPS))
end
#
# @rpc
# Creates tasks and organisms according to Config. All tasks
# will be in _tasks field.
#
function createOrganisms()
  local i::Int
  #
  # Inits available organisms in Tasks
  #
  for i = 1:Config.val(:ORGANISM_START_AMOUNT) createOrganism() end

  true
end
#
# @rpc
# Creates one task and organism inside this task. Created
# task will be added to _tasks array. Position may be set
# or random free position will be used.
# @param pos Position|nothing Position of the organism
# @return {Int} Organism id or false if organisms limit is riched
#
function createOrganism(pos = nothing)
  if length(_tasks) > Config.val(:WORLD_MAX_ORGANISMS) return false end
  orgTask = Manager._createOrganism(nothing, pos)
  orgTask === false ? false : orgTask.id
end
#
# @rpc
# Sets configuration value according to it's section and a key
# @param Unique config symbol
# @param value Custom value
#
function setConfig(name::Symbol, value::Any)
  Config.val(name, value)
end
#
# @rpc
# Gets configuration value according to it's section and a key
# @param name config symbol
# @return {Any|null} value or null if invalid section or key
#
function getConfig(name::Symbol)
  Config.val(name)
end
#
# @rpc
# Does one mutation for specified organism
# @param organismId Unique orgaism's ID
#
function mutate(organismId::UInt)
  if (haskey(Manager._map, organismId))
    Mutator.mutate(Manager._map[organismId])
    return true
  end
  false
end
#
# @rpc
# Returns current IPS (Iterations Per Second) value
# @return Int
#
function getIps()
  Config.val(:WORLD_IPS)
end
#
# @rpc
# Returns an organism by it's unique id
# @param id
# @return Creature.Organism or false if no organism with this id
# TODO: remake to organism id, not position related id
function getOrganism(id::UInt)
  if !haskey(Manager._map, id) return false end
  
  org = Manager._map[id]
  return RpcApi.SimpleOrganism(
    id,
    org.mutationProbabilities,
    org.code,
    org.mutationsOnClone,
    org.mutationPeriod,
    org.mutationAmount,
    org.energy,
    org.mem,
    [org.pos.x, org.pos.y]
  )
end
#
# @rpc
# Returns amount of organisms in a world. Died organisms are
# not calculated.
# @return {Int}
#
function getAmount()
  length(_tasks)
end
#
# @rpc
# Returns organism's list in specified range or all ovailable. from
# and to indexes are not unique ids. This is just indexes in _tasks
# list.
# @param from Start index in _tasks list
# @param to   End index in _tasks list. 0 - means last item
# @return {Array{SimpleOrganism}}
#
function getOrganisms(from::Int = 1, to::Int = 0)
  local orgs::Array{RpcApi.SimpleOrganism, 1} = Array{RpcApi.SimpleOrganism, 1}()
  local len::Int = length(_tasks)
  local i::Int

  from = from < 1 || from > len ? 1 : from
  to   = to === 0 ? len : to

  for i=from:to push!(orgs, getOrganism(_tasks[i].id)) end

  orgs
end
#
# @rpc
# Sets specified amount of energy into the point with x,y coordinates
# @param x X coordinate
# @param y Y coordinate
# @param energy Amount of energy
#
function setEnergy(x::Int, y::Int, energy::UInt32)
  local pos::Helper.Point = Helper.Point(x, y)

  if World.getEnergy(Manager._world, pos) === UInt32(0)
    World.setEnergy(Manager._world, pos, energy)
  end
end
#
# @rpc
# Sets custom amount of energy points randomly by world
# @param amount Amount of energy points
# @param energy Amount of energy within one point
#
function setEnergyRandom(amount::Int, energy::UInt32)
  local i::Int

  for i = 1:amount
    setEnergy(rand(1:Manager._world.width), rand(1:Manager._world.height), energy)
  end
end
#
# @rpc
# Calls Garbage Collector in current process
#
function debugGc()
  Base.gc_enable(true)
  Base.gc()
  true
end

#
# Creates server and returns it's ServerConnection type. It 
# uses porn number provided by "serverPort" command line
# argument or default one from Config module.
# @return Connection object
#
function _createServer()
  port = CommandLine.val(_params, Manager.PARAM_SERVER_PORT)
  port = port == "" ? Config.val(:CONNECTION_SERVER_PORT) : Int(port)
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
  RPC_GET_CONFIG        => getConfig,
  RPC_MUTATE            => mutate,
  RPC_GET_IPS           => getIps,
  RPC_GET_ORGANISM      => getOrganism,
  RPC_GET_AMOUNT        => getAmount,
  RPC_GET_ORGANISMS     => getOrganisms,
  RPC_SET_ENERGY        => setEnergy,
  RPC_SET_ENERGY_RND    => setEnergyRandom,
  RPC_DEBUG_GC          => debugGc
)