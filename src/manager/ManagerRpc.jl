#
# TODO: Description
# This is a part of Manager module.
# TODO: Dependencies
#
# @author DeadbraiN
# TODO: describe annotations: @rpc (RPC function)
#
import RpcApi
#
# @rpc
# Grabs world's rectangle region and returns it
# @param x Start X coordinate of region
# @param y Start Y coordinate of region
# @param x1 End x. 0 means all width
# @param y1 End y. 0 means all height
#
function getRegion(x::Int = 1, y::Int = 1, x1::Int = 0, y1::Int = 0)
  maxWidth  = size(Manager._data.world.data)[2]
  maxHeight = size(Manager._data.world.data)[1]

  if (x1 < 1 || x1 > maxWidth)  x1 = maxWidth  end
  if (y1 < 1 || y1 > maxHeight) y1 = maxHeight end
  if (x  < 1 || x  > maxWidth)  x  = 1 end
  if (y  < 1 || y  > maxHeight) y  = 1 end 
  
  RpcApi.Region(Manager._data.world.data[y:y1, x:x1], Config.val(:WORLD_IPS))
end
#
# @rpc
# Creates tasks and organisms according to Config. All tasks
# will be in Manager._data.tasks field.
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
# task will be added to Manager._data.tasks array. Position 
# may be set or random free position will be used.
# @param pos Position|nothing Position of the organism
# @return {Int} Organism id or false if organisms limit is riched
#
function createOrganism(pos = nothing)
  if length(Manager._data.tasks) > Config.val(:WORLD_MAX_ORGANISMS) return false end
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
# @param amount Amount of mutations
#
function mutate(organismId::UInt, amount::Int = 1)
  if (haskey(Manager._data.organisms, organismId))
    return Mutator.mutate(Manager._data.organisms[organismId], amount)
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
  if !haskey(Manager._data.organisms, id) return false end
  
  org = Manager._data.organisms[id]
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
  length(Manager._data.tasks)
end
#
# @rpc
# Returns organism's list in specified range or all ovailable. from
# and to indexes are not unique ids. This is just indexes in Manager._data.tasks
# list.
# @param from Start index in Manager._data.tasks list
# @param to   End index in Manager._data.tasks list. 0 - means last item
# @return {Array{SimpleOrganism}}
#
function getOrganisms(from::Int = 1, to::Int = 0)
  local orgs::Array{RpcApi.SimpleOrganism, 1} = Array{RpcApi.SimpleOrganism, 1}()
  local len::Int = length(Manager._data.tasks)
  local i::Int

  from = from < 1 || from > len ? 1 : from
  to   = to === 0 ? len : to

  for i=from:to push!(orgs, getOrganism(Manager._data.tasks[i].id)) end

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

  if World.getEnergy(Manager._data.world, pos) === UInt32(0)
    World.setEnergy(Manager._data.world, pos, energy)
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
    setEnergy(rand(1:Manager._data.world.width), rand(1:Manager._data.world.height), energy)
  end
end
#
# @rpc
# Makes a backup of currect app instance
#
function doBackup()
  Manager.backup()
end
#
# @rpc
# Returns world statistics
#
function getStatistics()
  RpcApi.Statistics(
    length(Manager._data.organisms),
    Config.val(:WORLD_IPS),
    # TODO
    100,
    [300, 200],
    ["test-config: 123", "second-cfg: 234"],
    # TODO
    RpcApi.SimpleOrganism(
      UInt(1),
      [1],
      :(function f() 1 end),
      1,
      1,
      1,
      100,
      Dict{Int16, Int16}(),
      [100, 150]
    ),
    # TODO:
    RpcApi.SimpleOrganism(
      UInt(2),
      [2],
      :(function f() 2 end),
      2,
      2,
      2,
      100,
      Dict{Int16, Int16}(),
      [200, 150]
    )
  )
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
  port = CommandLine.val(Manager._data.params, Manager.PARAM_SERVER_PORT)
  port = port == "" ? Config.val(:CONNECTION_SERVER_PORT) : Int(port)
  # TODO: ip should be in config
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
  RpcApi.RPC_GET_REGION        => getRegion,
  RpcApi.RPC_CREATE_ORGANISMS  => createOrganisms,
  RpcApi.RPC_CREATE_ORGANISM   => createOrganism,
  RpcApi.RPC_SET_CONFIG        => setConfig,
  RpcApi.RPC_GET_CONFIG        => getConfig,
  RpcApi.RPC_MUTATE            => mutate,
  RpcApi.RPC_GET_IPS           => getIps,
  RpcApi.RPC_GET_ORGANISM      => getOrganism,
  RpcApi.RPC_GET_AMOUNT        => getAmount,
  RpcApi.RPC_GET_ORGANISMS     => getOrganisms,
  RpcApi.RPC_SET_ENERGY        => setEnergy,
  RpcApi.RPC_SET_ENERGY_RND    => setEnergyRandom,
  RpcApi.RPC_BACKUP            => doBackup,
  RpcApi.RPC_GET_STATISTICS    => getStatistics,
  RpcApi.RPC_DEBUG_GC          => debugGc
)