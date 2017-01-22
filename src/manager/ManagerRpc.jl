#
# This is a part of Manager module.
# TODO: Description
# TODO: Dependencies
# TODO: describe annotations: @rpc (RPC function)
# TODO: add console message for all commands
# TODO: describe returning nothing in @rpc functions
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
import Helper
import Connection
import ManagerTypes
import Dots
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
# @param man Manager data type
# @param x Start X coordinate of region
# @param y Start Y coordinate of region
# @param x1 End x. 0 means all width
# @param y1 End y. 0 means all height
#
function getRegion(man::ManagerTypes.ManagerData, x::Int = 1, y::Int = 1, x1::Int = 0, y1::Int = 0)
  local data::Array{UInt32, 2}
  local pos::Helper.Point = Helper.Point(0, 0)

  maxWidth  = size(man.world.data)[2]
  maxHeight = size(man.world.data)[1]

  if (x1 < 1 || x1 > maxWidth)  x1 = maxWidth  end
  if (y1 < 1 || y1 > maxHeight) y1 = maxHeight end
  if (x  < 1 || x  > maxWidth)  x  = 1 end
  if (y  < 1 || y  > maxHeight) y  = 1 end

  data = deepcopy(man.world.data[y:y1, x:x1])
  for x in 1:size(data)[2]
    for y in 1:size(data)[1]
      pos.x = x
      pos.y = y
      data[y, x] = _getColorIndex(man, pos, data[y, x])
    end
  end

  RpcApi.Region(data, man.cfg.worldIps)
end
#
# @rpc
# Creates tasks and organisms according to Config. All tasks
# will be in man.tasks field.
# @param man Manager data type
#
function createOrganisms(man::ManagerTypes.ManagerData)
  local i::Int

  Helper.info("Creating organisms...")
  man.totalOrganisms      = 0
  # TODO: for system with many managers id should be unique between them
  man.organismId          = UInt(1)
  man.cfg.orgErrors = 0
  for i = 1:man.cfg.orgStartAmount createOrganism(man) end

  nothing
end
#
# @rpc
# Creates one task and organism inside this task. Created
# task will be added to man.tasks array. Position
# may be set or random free position will be used.
# @param man Manager data type
# @param pos Position|nothing Position of the organism
# @return {Int} Organism id or false if organisms limit is riched
#
function createOrganism(man::ManagerTypes.ManagerData, pos::Helper.Point = Helper.Point(0, 0))
  if length(man.tasks) > man.cfg.worldMaxOrgs return nothing end
  orgTask = Manager._createOrganism(man, nothing, pos)
  orgTask === false ? false : orgTask.id

  nothing
end
#
# @rpc
# Sets configuration value according to it's section and a key
# @param man Manager data type
# @param Unique config symbol
# @param value Custom value
#
function setConfig(man::ManagerTypes.ManagerData, name::Symbol, value::Any)
  setfield!(man.cfg, name, value)
  nothing
end
#
# @rpc
# Gets configuration value according to it's section and a key
# @param man Manager data type
# @param name config symbol
# @return {Any|nothing} value or nothing if invalid section or key
#
function getConfig(man::ManagerTypes.ManagerData, name::Symbol)
  getfield(man.cfg, name)
end
#
# @rpc
# Updates quite mode of manager. In quite mode we don't show
# info and warning messages to the terminal.
# @param man Manager data type
# @param mode New quite mode
#
function setQuite(man::ManagerTypes.ManagerData, mode::Bool)
  man.quiet = mode
  nothing
end
#
# @rpc
# Does one mutation for specified organism
# @param man Manager data type
# @param organismId Unique orgaism's ID
# @param percent Mutations percent from code size
#
function mutate(man::ManagerTypes.ManagerData, organismId::UInt, percent::Float64)
  if !haskey(man.organisms, organismId) return false end
  Mutator.mutate(man.cfg, man.organisms[organismId], percent)
end
#
# @rpc
# Returns current IPS (Iterations Per Second) value
# @param man Manager data type
# @return Int
#
function getIps(man::ManagerTypes.ManagerData)
  man.cfg.worldIps
end
#
# @rpc
# Returns an organism by it's unique id
# @param man Manager data type
# @param orgId Unique organism's id
# @return Creature.Organism or false if no organism with this id
#
function getOrganism(man::ManagerTypes.ManagerData, orgId::UInt)
  if !haskey(man.organisms, orgId) return false end
  _createSimpleOrganism(orgId, man.organisms[orgId])
end
#
# @rpc
# Returns amount of organisms in a world. Died organisms are
# not calculated.
# @param man Manager data type
# @return {Int}
#
function getAmount(man::ManagerTypes.ManagerData)
  length(man.tasks)
end
#
# @rpc
# Returns organism's list in specified range or all ovailable. from
# and to indexes are not unique ids. This is just indexes in man.tasks
# list.
# @param man Manager data type
# @param from Start index in man.tasks list
# @param to   End index in man.tasks list. 0 - means last item
# @return {Array{SimpleOrganism}}
#
function getOrganisms(man::ManagerTypes.ManagerData, from::Int = 1, to::Int = 0)
  local orgs::Array{RpcApi.SimpleOrganism, 1} = Array{RpcApi.SimpleOrganism, 1}()
  local len::Int = length(man.tasks)
  local i::Int

  from = from < 1 || from > len ? 1 : from
  to   = to < 1 || to > len ? len : to

  for i = from:to push!(orgs, _createSimpleOrganism(man.tasks[i].id, man.tasks[i].organism)) end

  orgs
end
#
# @rpc
# Sets specified amount of energy into the point with x,y coordinates
# @param man Manager data type
# @param x X coordinate
# @param y Y coordinate
# @param energy Amount of energy
#
function setEnergy(man::ManagerTypes.ManagerData, x::Int, y::Int, energy::UInt32)
  local pos::Helper.Point = Helper.Point(x, y)

  if World.getEnergy(man.world, pos) === UInt32(0)
    World.setEnergy(man.world, pos, energy)
  end

  nothing
end
#
# @rpc
# Sets custom amount of energy points randomly by world
# @param man Manager data type
# @param amount Amount of energy points
# @param energy Amount of energy within one point
#
function setRandomEnergy(man::ManagerTypes.ManagerData, amount::Int, energy::UInt32)
  local width::Int = div(man.world.width, Helper.fastRand(5) + 1)
  local height::Int = div(man.world.height, Helper.fastRand(9))
  local xOffset::Int = div(man.world.width, Helper.fastRand(9) + 1)
  local yOffset::Int = div(man.world.height, Helper.fastRand(9) + 1)

  Helper.info("Creating random energy...")
  for i::Int = 1:amount
    setEnergy(man, Helper.fastRand(width) + xOffset, Helper.fastRand(height) + yOffset, energy)
  end

  nothing
end
#
# @rpc
# Makes a backup of currect app instance
# @param man Manager data type
#
function doBackup(man::ManagerTypes.ManagerData)
  # TODO: JBackup should be used
  Manager.backup(man)
  nothing
end
#
# @rpc
# Returns world statistics
# @param man Manager data type
#
function getStatistics(man::ManagerTypes.ManagerData)
  local tasks::Array{ManagerTypes.OrganismTask, 1} = man.tasks
  local moreThenOne::Bool = length(tasks) > 1
  local minOrg::Creature.Organism
  local maxOrg::Creature.Organism

  if moreThenOne
    @inbounds sort!(tasks, alg = QuickSort, lt = (t1::ManagerTypes.OrganismTask, t2::ManagerTypes.OrganismTask) -> t1.organism.energy < t2.organism.energy)
    minOrg = tasks[1].organism
    maxOrg = tasks[end].organism
  end

  RpcApi.Statistics(
    length(man.organisms),
    man.cfg.worldIps,
    man.totalOrganisms,
    man.world.width,
    man.world.height,
    Config.format(man.cfg),
    _createSimpleOrganism(moreThenOne ? minOrg.id : UInt(0), moreThenOne ? minOrg : Creature.create(man.cfg)),
    _createSimpleOrganism(moreThenOne ? maxOrg.id : UInt(0), moreThenOne ? maxOrg : Creature.create(man.cfg))
  )
end
#
# @rpc
# Returns best organisms (with maximum energy)
# @param man Manager data type
# @param amount amount of best organisms
# @return {Array{RpcApi.SimpleOrganism, 1}}
#
function getBest(man::ManagerTypes.ManagerData, amount::Int)
  local best::Array{RpcApi.SimpleOrganism, 1} = []
  local i::Int
  local len::Int = getAmount(man)
  local tasks::Array{ManagerTypes.OrganismTask, 1} = man.tasks

  amount = len > amount ? amount : len
  if amount > 0
    sort!(tasks, alg = QuickSort, lt = (t1, t2) -> t1.organism.energy < t2.organism.energy)
    for i = 1:amount push!(best, _createSimpleOrganism(tasks[len - i + 1].id, tasks[len - i + 1].organism)) end
  end

  best
end
#
# @rpc
# TODO:
function setLeftWorld(man::ManagerTypes.ManagerData)
end
nothing
#
# @rpc
# TODO:
function setRightWorld(man::ManagerTypes.ManagerData)
  nothing
end
#
# @rpc
# TODO:
function setUpWorld(man::ManagerTypes.ManagerData)
  nothing
end
#
# @rpc
# TODO:
function setDownWorld(man::ManagerTypes.ManagerData)
  nothing
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
# ready we set man.cons.streamRun flag to true and all organisms
# will be run. If at least one client is waiting(state === STREAMING_INIT)
# then server should wait (skip running organisms).
# @param man Manager data type
# TODO: rewrite this description
function setStreaming(man::ManagerTypes.ManagerData)
  local socks::Array{Base.TCPSocket, 1} = man.cons.fastServer.socks
  local on::Int = 0

  for i::Int = 1:length(socks)
    if Helper.isopen(socks[i]) on += 1 end
  end
  #
  # Only one "fast" client is supported at the moment
  #
  if on > 1 return false end

  man.cons.streamInit = true
  getRegion(man)
end
#
# @rpc
# Changes organism color to specified. This is how we can mark
# organism visually to have a possibility to find it on a screen
# and do some observations. For returning original color back,
# you have to call this function again with previous color index.
# See return string value for previous color index
# @param man Manager data type
# @return {String} Message of color change operation. Is everything
# is okay, then message with original organism color will be returned
#
function markOrganism(man::ManagerTypes.ManagerData, orgId::UInt32, colorIndex::Int)
  if !haskey(man.organisms, orgId) return "Invalid organism id: 0x$(hex(orgId))" end
  local org::Creature.Organism = man.organisms[orgId]
  local prevColorIndex::Int = org.color
  #
  # Organism should be alive and color index should be in valid range
  #
  if org.energy < 1 return "Organism 0x$(hex(orgId)) has died" end
  if colorIndex < Dots.INDEX_EMPTY || colorIndex > Dots.INDEX_MAX_ORG_COLOR
    return "Invalid color $colorIndex. Should be in range: $(Dots.INDEX_EMPTY):$(Dots.INDEX_MAX_ORG_COLOR)"
  end
  org.color = colorIndex

  "Organism 0x$(hex(orgId)) marked by $colorIndex color. Previous color was $prevColorIndex"
end

#
# Handler of EVENT_BEFORE_RESPONSE for "fast" pooling mode. Turns
# on "fast" streaming (pooling).
# @param man Manager data type
# @param sock Socket of one ready client
#
function _onFastStreaming(man::ManagerTypes.ManagerData, sock::Base.TCPSocket, data::Array{Any, 1}, ans::Connection.Answer)
  man.cons.streamInit = false
  man.dotCallback     = (pos::Helper.Point, color::UInt32)->_onDot(man, pos, color)
  man.moveCallback    = (pos::Helper.Point, dir::Int, color::UInt32)->_onDot(man, pos, color, dir)
  Event.off(man.world.obs, World.EVENT_DOT, man.dotCallback)
  if !Event.has(man.world.obs, World.EVENT_DOT, man.dotCallback)
    Event.on(man.world.obs, World.EVENT_DOT, man.dotCallback)
  end
  Event.off(man.world.obs, World.EVENT_MOVE, man.moveCallback)
  if !Event.has(man.world.obs, World.EVENT_MOVE, man.moveCallback)
    Event.on(man.world.obs, World.EVENT_MOVE, man.moveCallback)
  end
end
#
# This is a handler on world dot change. It notify remote clients
# about these changes.
# @param man Manager data type
# @param pos Dot coordinates
# @param color Dot color
#
function _onDot(man::ManagerTypes.ManagerData, pos::Helper.Point, color::UInt32, dir::Int = Dots.DIRECTION_NO)
  local socks::Array{Base.TCPSocket, 1} = man.cons.fastServer.socks
  local ips::UInt16 = UInt16(man.cfg.worldIps)
  local x::UInt16 = UInt16(pos.x)
  local y::UInt16 = UInt16(pos.y)
  local dataIndex::UInt8 = UInt8(FastApi.API_DOT_COLOR)
  local off::Bool = true
  #
  # This is how we get color index of a dot
  #
  color = _getColorIndex(man, pos, color)
  #
  # Encodes direction to the first(unused) byte of color
  #
  if dir !== Dots.DIRECTION_NO
    color |= (UInt32(dir) << 24)
  end
  for i::Int = 1:length(socks)
    if Helper.isopen(socks[i])
      off = false
      Server.request(socks[i], dataIndex, x, y, color)
      Event.fire(man.obs, "dotrequest", man)
    end
  end
  #
  # This is how we push all active messages to the network
  # TODO: change to yieldto() do we need this?
  yield()
  Event.fire(man.obs, "stepyield", man)
  #
  # All "fast" clients were disconnected
  #
  if off Event.off(man.world.obs, World.EVENT_DOT, man.dotCallback) end
  if off Event.off(man.world.obs, World.EVENT_MOVE, man.moveCallback) end
end
#
# Converts color to it's index. This index is used for Visualizer
# to draw colored dot
# @param man Manager data type
# @param pos Dot coordinates
# @param color  Dot color
# @return {UInt32} Color index
#
function _getColorIndex(man::ManagerTypes.ManagerData, pos::Helper.Point, color::UInt32)
  local posId::Int = Manager._getPosId(man, pos)
  local isOrganism::Bool = haskey(man.positions, posId)

  if color !== UInt32(Dots.INDEX_EMPTY)
    color = UInt32(isOrganism ? man.positions[posId].color : Dots.INDEX_ENERGY)
  end

  color
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
    org.mutationsOnClonePercent,
    org.mutationPeriod,
    org.mutationPercent,
    org.energy,
    org.color,
    org.mem,
    [org.pos.x, org.pos.y],
    org.age,
    org.cloneEnergyPercent,
    org.codeSize,
    org.energyDecreasePercent
  )
end
#
# Creates client and returns it's ClientConnection type. It
# uses port number provided by "XXXport" command line
# argument or default one from Config module.
# @param man Manager data type
# @param side Server side ("LEFT", "RIGHT",...)
# @return ClientConnection object
#
function _createClient(man::ManagerTypes.ManagerData, side::String)
  local con::Client.ClientConnection
  local serverPort::Int = _getPort(man, getfield(Manager, Symbol("ARG_", side, "_SERVER_PORT")), Symbol("con", ucfirst(lowercase(side)), "ServerPort"))
  local serverIp::IPv4  = _getIp(man, getfield(Manager, Symbol("ARG_", side, "_SERVER_IP")), Symbol("con", ucfirst(lowercase(side)), "ServerIp"))
  local thisPort::Int   = _getPort(man, Manager.ARG_SERVER_PORT, :conServerPort)
  local thisIp::IPv4    = _getIp(man, Manager.ARG_SERVER_IP, :conServerIp)

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
    Event.on(con.observer, Connection.EVENT_AFTER_REQUEST, (ans::Connection.Answer)->_onAfterResponse(man, side, ans))
    Event.on(con.observer, Connection.EVENT_BEFORE_RESPONSE, (data::Connection.Command, ans::Connection.Answer)->_onBeforeResponse(man, side, data, ans))
  end
  con
end
#
# Creates all available server\instance connections data objects
# and returns them. They are: self server, left, right, up, and
# down clients.
# @param man Manager data type
# @return Manager.Connections object
#
function _createConnections(man::ManagerTypes.ManagerData)
  ManagerTypes.Connections(
    false,
    _createServer(man),
    _createServer(man, true),
    _createClient(man, _SIDE_LEFT),
    _createClient(man, _SIDE_RIGHT),
    _createClient(man, _SIDE_UP),
    _createClient(man, _SIDE_DOWN),
    Dict{UInt, Creature.Organism}()
  )
end
#
# Handler of answer from remote server(instance) as a result on
# our request to it. ans.id contains success code, ans.data contains
# organism unique id.
# @param man Manager data type
# @param side Side name of answering server
# @param ans Answer data object
#
function _onAfterResponse(man::ManagerTypes.ManagerData, side::String, ans::Connection.Answer)
  local org::Creature.Organism = man.cons.frozen[ans.data]
  local pos::Helper.Point

  delete!(man.cons.frozen, ans.data)
  if ans.id !== RpcApi.RPC_ORG_STEP_OK
    if World.getEnergy(man.world, org.pos) > UInt32(0)
      pos = World.getNearFreePos(man.world, org.pos)
      #
      # If there is no free space, we have to kill this frozen organism
      #
      if pos === false return false end
      org.pos = pos
    end
    Manager._createOrganism(man, org, org.pos, true)
  end

  true
end
#
# Handler of input request from remote server to current client.
# Should fill answer data structure.
# @param man Manager data type
# @param side Remote server side
# @param data Input comand object
# @param ans Answer data object we have to fill
#
function _onBeforeResponse(man::ManagerTypes.ManagerData, side::String, data::Connection.Command, ans::Connection.Answer)
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
  elseif data.fn === RpcApi.RPC_ORG_STEP_LEFT  && side === _SIDE_RIGHT pos.x = man.world.width
  elseif data.fn === RpcApi.RPC_ORG_STEP_DOWN  && side === _SIDE_UP    pos.y = 1
  elseif data.fn === RpcApi.RPC_ORG_STEP_UP    && side === _SIDE_DOWN  pos.y = man.world.height
  end
  #
  # Something on a way of organism or maximum amount of organisms
  # were reached. So he can't move there at the moment.
  #
  if !Manager._isFree(man, pos) || length(man.tasks) > man.cfg.worldMaxOrgs
    ans.id = RpcApi.RPC_ORG_STEP_FAIL
    return false
  end
  #
  # Everything is okay, let's add an organism to the pool
  #
  Manager._createOrganism(man, org, org.pos, true)
  org.energy -= div(org.energy * man.cfg.conStepEnergySpendPercent, 100)
  if org.energy < 1 _killOrganism(man, findfirst((t) -> t.organism === org, man.tasks)) end
  ans.id = RpcApi.RPC_ORG_STEP_OK

  true
end
#
# Handler for commands obtained from all connected clients. All supported
# commands are in _rpcApi array. If current command is undefinedin _rpcApi
# then, false will be returned.
# TODO: describe arguments!
function _onClientCommand(man::ManagerTypes.ManagerData, sock::Base.TCPSocket, cmd::Connection.Command, ans::Connection.Answer)
  if cmd.fn > length(_rpcApi) || cmd.fn < 1 return nothing end
  #
  # Only streaming mode needs socket as first parameter. because we
  # have to know destination client we are working with.
  #
  ans.data = _rpcApi[cmd.fn](man, cmd.args...)

  nothing
end
#
# Creates server and returns it's ServerConnection type. It
# uses port number provided by "port" command line
# argument or default one from Config module. It also may
# create "fast" server, which uses special "fast" mode for
# pooling. In this case IP address is the same, but port
# is different.
# @param man Manager data type
# @param fast Switcher for fast server creation
# @return Server.ServerConnection object
#
function _createServer(man::ManagerTypes.ManagerData, fast::Bool = false)
  local con::Server.ServerConnection = Server.create(
    _getIp(man, Manager.ARG_SERVER_IP, :conServerIp),
    _getPort(man, fast ? Manager.ARG_FAST_SERVER_PORT : Manager.ARG_SERVER_PORT, fast ? :conFastServerPort : :conServerPort),
    fast
  )
  local fn::Function = fast ?
    (sock::Base.TCPSocket, data::Array{Any, 1}, ans::Connection.Answer)->_onFastStreaming(man, sock, data, ans) :
    (sock::Base.TCPSocket, cmd::Connection.Command, ans::Connection.Answer)->_onClientCommand(man, sock, cmd, ans)

  Event.on(con.observer, Connection.EVENT_BEFORE_RESPONSE, fn)

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
  setStreaming,
  markOrganism
]
