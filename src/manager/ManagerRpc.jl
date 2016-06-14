#
# TODO: Description
# This is a part of Manager module.
# TODO: Dependencies
# TODO: describe annotations: @rpc (RPC function)
# TODO: add console message for all commands
#
# @author DeadbraiN
#
import RpcApi
import Config
import Mutator
import World
import CommandLine
import Event
import FastApi
import Server
import Connection
import ManagerTypes

using Debug
#
# Sides positions of near instance(server), which is connected
# to the current one.
#
const _SIDE_LEFT  = "LEFT"
const _SIDE_RIGHT = "RIGHT"
const _SIDE_UP    = "UP"
const _SIDE_DOWN  = "DOWN"
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
  Helper.info("Creating organisms...")
  #
  # Inits available organisms in Tasks
  #
  for i::Int = 1:Config.val(:ORGANISM_START_AMOUNT) createOrganism() end
  null
end
#
# @rpc
# Creates one task and organism inside this task. Created
# task will be added to Manager._data.tasks array. Position
# may be set or random free position will be used.
# @param pos Position|nothing Position of the organism
# @return {Int} Organism id or false if organisms limit is riched
# TODO: change the constructor to support Position() without
# TODO: parameters for optimization. We have to remove nothing
function createOrganism(pos::Helper.Point = Helper.Point(0, 0))
  if length(Manager._data.tasks) > Config.val(:WORLD_MAX_ORGANISMS) return nothing end
  orgTask = Manager._createOrganism(nothing, pos)
  orgTask === false ? false : orgTask.id
  null
end
#
# @rpc
# Sets configuration value according to it's section and a key
# @param Unique config symbol
# @param value Custom value
#
function setConfig(name::Symbol, value::Any)
  Config.val(name, value)
  null
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
# Updates quite mode of manager. In quite mode we don't show
# info and warning messages to the terminal.
# @param mode New quite mode
#
function setQuite(mode::Bool)
  Manager._data.quiet = mode
  null
end
#
# @rpc
# Does one mutation for specified organism
# @param organismId Unique orgaism's ID
# @param amount Amount of mutations
#
function mutate(organismId::UInt, amount::Int = 1)
  if !haskey(Manager._data.organisms, organismId) return false end
  Mutator.mutate(Manager._data.organisms[organismId], amount)
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
# @param organismId
# @return Creature.Organism or false if no organism with this id
# TODO: remake to organism id, not position related id
function getOrganism(organismId::UInt)
  if !haskey(Manager._data.organisms, organismId) return false end
  _createSimpleOrganism(organismId, Manager._data.organisms[organismId])
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

  for i = from:to push!(orgs, getOrganism(Manager._data.tasks[i].id)) end

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
  null
end
#
# @rpc
# Sets custom amount of energy points randomly by world
# @param amount Amount of energy points
# @param energy Amount of energy within one point
#
function setRandomEnergy(amount::Int = Config.val(:WORLD_START_ENERGY_BLOCKS), energy::UInt32 = Config.val(:WORLD_START_ENERGY_AMOUNT))
  Helper.info("Creating random energy...")
  for i::Int = 1:amount
    setEnergy(rand(1:Manager._data.world.width), rand(1:Manager._data.world.height), energy)
  end
  null
end
#
# @rpc
# Makes a backup of currect app instance
#
function doBackup()
  Manager.backup()
  null
end
#
# @rpc
# Returns world statistics
#
function getStatistics()
  RpcApi.Statistics(
    length(Manager._data.organisms),
    Config.val(:WORLD_IPS),
    Manager._data.totalOrganisms,
    Manager._data.world.width,
    Manager._data.world.height,
    Config.format(),
    _createSimpleOrganism(Manager._data.minId, Manager._data.minOrg),
    _createSimpleOrganism(Manager._data.maxId, Manager._data.maxOrg)
  )
end
#
# @rpc
# Returns best organisms (with maximum energy)
# @param amount amount of best organisms
# @return {Array{RpcApi.SimpleOrganism, 1}}
#
function getBest(amount::Int)
  local best::Array{RpcApi.SimpleOrganism, 1} = []
  local i::Int
  local len::Int = length(Manager._data.tasks)

  amount = getAmount() > amount ? amount : getAmount()
  sort!(Manager._data.tasks, alg = QuickSort, lt = (t1, t2) -> t1.organism.energy < t2.organism.energy)
  for i = 1:amount
    if istaskdone(Manager._data.tasks[len - i + 1].task) continue end
    push!(best, _createSimpleOrganism(Manager._data.tasks[len - i + 1].id, Manager._data.tasks[len - i + 1].organism))
  end

  best
end
#
# @rpc
# TODO:
function setLeftWorld()
  null
end
#
# @rpc
# TODO:
function setRightWorld()
  null
end
#
# @rpc
# TODO:
function setUpWorld()
  null
end
#
# @rpc
# TODO:
function setDownWorld()
  null
end
#
# @rpc
# Inits/Starts/Stops world streaming. It streams only differences to the
# clients. It adds/removes worlds change event handler and every time,
# when some world change occures, it makes a request to all streamed
# clients. First client should initialize streaming by calling this RPC
# function with state === STREAMING_INIT. In this case it should
# return Region() data with all dots in a world. After that server should
# wait next call of this RPC function with state === STREAMING_ON.
# It means that the client is ready for streaming. When all clients are
# ready we set Manager._cons.streamRun flag to true and all organisms
# will be run. If at least one client is waiting(state === STREAMING_INIT)
# then server should wait (skip running organisms).
# @param sock Client's socket
# @param state Streaming state (on,off,init)
# TODO: rewrite this description
function setStreaming(sock::Base.TCPSocket)
  local socks::Array{Base.TCPSocket, 1} = Manager._cons.fastServer.socks
  local on::Int = 0

  for i::Int = 1:length(socks)
    if Helper.isopen(socks[i]) on += 1 end
  end
  #
  # Only one "fast" client is supported at the moment
  #
  if on > 1 return false end

  Manager._cons.streamInit = true
  getRegion()
end

#
# Handler of EVENT_BEFORE_RESPONSE for "fast" pooling mode. Turns
# on "fast" streaming (pooling).
# @param sock Socket of one ready client
#
function _onFastStreaming(sock::Base.TCPSocket, data::Array{Any, 1}, ans::Connection.Answer)
  println(data)
  Manager._cons.streamInit = false
  Event.off(Manager._data.world.obs, World.EVENT_DOT, _onWorldDot)
  if !Event.has(Manager._data.world.obs, World.EVENT_DOT, _onWorldDot)
    Event.on(Manager._data.world.obs, World.EVENT_DOT, _onWorldDot)
  end
end
#
# This is a handler on world dot change. It notify remote clients
# about these changes.
# @param pos Dot coordinates
# @param color Dot color
#
function _onWorldDot(pos::Helper.Point, color::UInt32)
  local socks::Array{Base.TCPSocket, 1} = Manager._cons.fastServer.socks
  local ips::UInt16 = UInt16(Config.val(:WORLD_IPS))
  local x::UInt16 = UInt16(pos.x)
  local y::UInt16 = UInt16(pos.y)
  local dataIndex::UInt8 = UInt8(FastApi.API_DOT_COLOR_IPS)
  local off::Bool = true

  for i::Int = 1:length(socks)
    if Helper.isopen(socks[i])
      off = false
      Server.request(socks[i], dataIndex, x, y, color, ips)
    end
  end
  #
  # All "fast" clients were disconnected
  #
  if off Event.off(Manager._data.world.obs, World.EVENT_DOT, _onWorldDot) end
end
#
# Assembles RpcApi.SimpleOrganism type from wider Creature.Organism
# @return {RpcApi.SimpleOrganism}
#
function _createSimpleOrganism(id::UInt, org::Creature.Organism)
  RpcApi.SimpleOrganism(
    id,
    org.code,
    org.mutationProbabilities,
    org.mutationsOnClone,
    org.mutationPeriod,
    org.mutationAmount,
    org.energy,
    org.color,
    org.mem,
    [org.pos.x, org.pos.y],
    org.codeSize
  )
end
#
# Creates client and returns it's ClientConnection type. It
# uses port number provided by "XXXport" command line
# argument or default one from Config module.
# @param side Server side ("LEFT", "RIGHT",...)
# @return ClientConnection object
#
function _createClient(side::ASCIIString)
  local con::Client.ClientConnection
  local serverPort::Int = _getPort(getfield(Manager, symbol("ARG_", side, "_SERVER_PORT")), symbol("CONNECTION_", side, "_SERVER_PORT"))
  local serverIp::IPv4  = _getIp(getfield(Manager, symbol("ARG_", side, "_SERVER_IP")), symbol("CONNECTION_", side, "_SERVER_IP"))
  local thisPort::Int   = _getPort(Manager.ARG_SERVER_PORT, :CONNECTION_SERVER_PORT)
  local thisIp::IPv4    = _getIp(Manager.ARG_SERVER_IP, :CONNECTION_SERVER_IP)

  if serverPort === thisPort && serverIp === thisIp
    Helper.error(string("Error creating Client for ", side, " server. Remote port and IP are similar to current. Port: ", thisPort, ", IP: ", thisIp))
    # TODO: is zero based address + port correct?
    con = Client.create(IPv4(0), 0)
  elseif serverPort === 0
    # TODO: is zero based address + port correct?
    con = Client.create(IPv4(0), 0)
  else
    con = Client.create(serverIp, serverPort)
  end
  if Client.isOk(con)
    Event.on(con.observer, Client.EVENT_AFTER_REQUEST, (ans::Connection.Answer)->_onAfterResponse(side, ans))
    Event.on(con.observer, Client.EVENT_BEFORE_RESPONSE, (data::Connection.Command, ans::Connection.Answer)->_onBeforeResponse(side, data, ans))
  end
  con
end
#
# Creates all available server\instance connections data objects
# and returns them. They are: self server, left, right, up, and
# down clients.
# @return Manager.Connections object
#
function _createConnections()
  Manager.Connections(
    _createServer(),
    _createServer(true),
    _createClient(_SIDE_LEFT),
    _createClient(_SIDE_RIGHT),
    _createClient(_SIDE_UP),
    _createClient(_SIDE_DOWN),
    Dict{UInt, Creature.Organism}(),
    false
  )
end
#
# Handler of answer from remote server(instance) as a result on
# our request to it. ans.id contains success code, ans.data contains
# organism unique id.
# @param side Side name of answering server
# @param ans Answer data object
#
function _onAfterResponse(side::ASCIIString, ans::Connection.Answer)
  local org::Creature.Organism = Manager._cons.frozen[ans.data]

  delete!(Manager._cons.frozen, ans.data)
  if ans.id !== RpcApi.RPC_ORG_STEP_OK
    if World.getEnergy(Manager._data.world, org.pos) > UInt32(0)
      pos = World.getNearFreePos(Manager._data.world, org.pos)
      #
      # If there is no free space, we have to kill this frozen organism
      #
      if pos === false return false end
      org.pos = pos
    end
    Manager._createOrganism(org, org.pos, true)
  end

  true
end
#
# Handler of input request from remote server to current client.
# Should fill answer data structure.
# @param side Remote server side
# @param data Input comand object
# @param ans Answer data object we have to fill
#
function _onBeforeResponse(side::ASCIIString, data::Connection.Command, ans::Connection.Answer)
  local org::Creature.Organism
  local pos::Helper.Point
  #
  # This request means, that one organism wants to step outside
  # of it's current Manager/instance into this one. We have
  # to send OK response, which means, that we obtained an organism
  # and added him into the organisms pool. data.args[1] contains
  # organism. We also have to decrease organism's energy, because
  # moving between instances it's network performance issue.
  #
  org      = data.args[1]
  ans.data = org.id
  pos      = org.pos
  if     data.fn === RpcApi.RPC_ORG_STEP_RIGHT && side === _SIDE_LEFT  pos.x = 1
  elseif data.fn === RpcApi.RPC_ORG_STEP_LEFT  && side === _SIDE_RIGHT pos.x = Manager._data.world.width
  elseif data.fn === RpcApi.RPC_ORG_STEP_DOWN  && side === _SIDE_UP    pos.y = 1
  elseif data.fn === RpcApi.RPC_ORG_STEP_UP    && side === _SIDE_DOWN  pos.y = Manager._data.world.height
  end
  #
  # Something on a way of organism or maximum amount of organisms
  # were reached. So he can't move there at the moment.
  #
  if !Manager._isFree(pos) || length(Manager._data.tasks) > Config.val(:WORLD_MAX_ORGANISMS)
    ans.id = RpcApi.RPC_ORG_STEP_FAIL
    return false
  end
  #
  # Everything is okay, let's add an organism to the pool
  #
  Manager._createOrganism(org, org.pos, true)
  org.energy -= div(org.energy * Config.val(:CONNECTION_STEP_ENERGY_PERCENT), 100)
  ans.id = RpcApi.RPC_ORG_STEP_OK

  true
end
#
# Handler for commands obtained from all connected clients. All supported
# commands are in _rpcApi array. If current command is undefinedin _rpcApi
# then, false will be returned.
# TODO: describe arguments!
function _onClientCommand(sock::Base.TCPSocket, cmd::Connection.Command, ans::Connection.Answer)
  if cmd.fn > length(_rpcApi) return nothing end
  #
  # Only streaming mode needs socket as first parameter. because we
  # have to know destination client we are working with.
  #
  if cmd.fn === RpcApi.RPC_SET_WORLD_STREAMING
    ans.data = _rpcApi[cmd.fn](sock, cmd.args...)
  else
    ans.data = _rpcApi[cmd.fn](cmd.args...)
  end

  nothing
end
#
# Creates server and returns it's ServerConnection type. It
# uses port number provided by "port" command line
# argument or default one from Config module. It also may
# create "fast" server, which uses special "fast" mode for
# pooling. In this case IP address is the same, but port
# is different.
# @param fast Switcher for fast server creation
# @return Server.ServerConnection object
#
function _createServer(fast::Bool = false)
  local con::Server.ServerConnection = Server.create(
    _getIp(Manager.ARG_SERVER_IP, :CONNECTION_SERVER_IP),
    _getPort(fast ? Manager.ARG_FAST_SERVER_PORT : Manager.ARG_SERVER_PORT, fast ? :CONNECTION_FAST_SERVER_PORT : :CONNECTION_SERVER_PORT),
    fast
  )
  Event.on(con.observer, Server.EVENT_BEFORE_RESPONSE, fast ? _onFastStreaming : _onClientCommand)

  con
end
#
# An API for remove clients. This manager will be a server for them.
# Only these functions may be called by clients. For calling them,
# you have to use "Client" module.
#
const _rpcApi = Function[
  getRegion,
  createOrganisms,
  createOrganism,
  setConfig,
  getConfig,
  setQuite,
  mutate,
  getIps,
  getOrganism,
  getAmount,
  getOrganisms,
  setEnergy,
  setRandomEnergy,
  doBackup,
  getStatistics,
  getBest,
  setLeftWorld,
  setRightWorld,
  setUpWorld,
  setDownWorld,
  setStreaming
]
