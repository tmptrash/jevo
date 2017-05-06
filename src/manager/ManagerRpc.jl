#
# This is a part of Manager module. It represents Manager's Remote API, which
# may be called from remote client or other manager. For this @rpc annotation
# is used for functions. The value, which is returned by these functions will
# be transferred to remote client (caller) as an answer. If @rpc function
# returns nothing, then response to the remove caller will not be transferred.
#
# @author DeadbraiN
#
import RpcApi
import Config
import Mutator
import World
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
# Grabs world's rectangle region and returns it. This function is optimized
# for fast transferring through network by obtaining small "Region" type
# instance. It works in a little complicated way:
# - first it normalizes coordinates. It means, that thay should be in a range 1:width
#   and 1:height of world (see Config.worldWidth/worldHright configs).
# - second, it splits obtained region into small 16x16 squares (see _calcBlocksAmount).
#   If the region isn't multiple to 16, then additional squares will be at the
#   right and at the bottom.
# - Every dot within one square may be described as 1 byte index (0..255, see
#   Region.Block.energy). This is how we store all energy dots (see RpcApi.Block.energy)
#   and organism dots (see RpcApi.Org types) within squares by index
# - empty (black) dots are skipped
# - In one RpcApi.Org type we may transfer any organism related info. It's possible
#   to add more fields to this type in future.
#
# @param man Manager data type
# @param x Start X coordinate of region
# @param y Start Y coordinate of region
# @param x1 End x. 0 means all width
# @param y1 End y. 0 means all height
#
function getRegion(man::ManagerTypes.ManagerData, x::Int = 1, y::Int = 1, x1::Int = 0, y1::Int = 0)
  x, y, x1, y1 = _normalizeRegion(man, x, y, x1, y1)

  local data::Array{UInt16, 2} = _cutRegion(man, x, y, x1, y1)
  local xBlocks::Int = _calcBlocksAmount(x, x1)
  local yBlocks::Int = _calcBlocksAmount(y, y1)
  local region::RpcApi.Region = RpcApi.Region(
    UInt8(xBlocks),
    UInt8(yBlocks),
    UInt16(x1-x+1),
    UInt16(y1-y+1),
    RpcApi.Block[],
    man.ips
  )
  local i::Int
  local xOffs::Int = 1
  local yOffs::Int = 1
  local xBlock::Int
  local yBlock::Int
  local curX::UInt16
  local curY::UInt16
  local block::RpcApi.Block
  local org::Creature.Organism
  local offs::UInt8
  local pos::Helper.Point = Helper.Point(0, 0)
  #
  # Creates all blocks
  #
  for i = 1:(xBlocks * yBlocks) push!(region.blocks, RpcApi.Block(UInt8[], RpcApi.Org[])) end
  #
  # Walks through all dots in a world and stores only energy and organisms
  #
  for curY = UInt16(y):UInt16(y1)
    pos.y = curY
    for curX = UInt16(x):UInt16(x1)
      pos.x = curX
      if _isOrganism(man, Int(curX), Int(curY)) _addOrg(man, region, curX, curY)
      elseif World.getEnergy(man.world, pos) > Dots.INDEX_EMPTY _addEnergy(man, region, curX, curY)
      end
    end
  end

  region
end
#
# @rpc
# Creates tasks and organisms according to Config. All tasks
# will be in man.tasks field.
# @param man Manager data type
#
function createOrganisms(man::ManagerTypes.ManagerData)
  local i::Int

  if man.cfg.modeQuiet < Config.MODE_QUIET_NO Helper.info("Creating organisms...") end
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
  if ManagerTypes.orgAmount(man) > man.cfg.worldMaxOrgs return nothing end
  Manager._createOrganism(man, nothing, pos)

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
# Updates quiet mode of manager. In quiet mode we don't show
# info and warning messages to the terminal.
# @param man Manager data type
# @param mode New quiet mode
#
function setQuiet(man::ManagerTypes.ManagerData, mode::Int)
  man.cfg.modeQuiet = mode
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
# @return Float64
#
function getIps(man::ManagerTypes.ManagerData)
  man.ips
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
  ManagerTypes.orgAmount(man)
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
function setEnergy(man::ManagerTypes.ManagerData, x::Int, y::Int, energy::UInt16)
  local pos::Helper.Point = Helper.Point(x, y)

  if World.getEnergy(man.world, pos) === Dots.INDEX_EMPTY
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
function setRandomEnergy(man::ManagerTypes.ManagerData, amount::Int, energy::UInt16)
  local width::Int = div(man.world.width, Helper.fastRand(5) + 1)
  local height::Int = div(man.world.height, Helper.fastRand(9))
  local xOffset::Int = div(man.world.width, Helper.fastRand(9) + 1)
  local yOffset::Int = div(man.world.height, Helper.fastRand(9) + 1)

  if man.cfg.modeQuiet <= Config.MODE_QUIET_IMPORTANT Helper.info("Creating random energy...") end
  for i::Int = 1:amount
    setEnergy(man, Helper.fastRand(width) + div(xOffset, 10), Helper.fastRand(height) + div(yOffset, 10), energy)
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
  #
  # Only array should be copied, not organisms
  #
  local tasks::Array{ManagerTypes.OrganismTask, 1} = copy(man.tasks)
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
    man.ips,
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
  local org::Creature.Organism
  #
  # Only array should be copied, not organisms
  #
  local tasks::Array{ManagerTypes.OrganismTask, 1} = copy(man.tasks)

  amount = len > amount ? amount : len
  if amount > 0
    sort!(tasks, alg = QuickSort, lt = (t1, t2) -> t1.organism.energy < t2.organism.energy)
    i = 1
    while amount > 0 && i <= len
      org = tasks[len - i + 1].organism
      if org.alive
        amount -= 1
        push!(best, _createSimpleOrganism(org.id, org))
      end
      i += 1
    end
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
  local prevColorIndex::UInt16 = org.color
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
# Creates Org type instance according to specified coordinates and organism
# in these coordinates.
# @param man Manager data type
# @param region Region of a world we are working with
# @param x X coordinate
# @param y Y coordinate
#
function _addOrg(man::ManagerTypes.ManagerData, region::RpcApi.Region, x::UInt16, y::UInt16)
  local org::Creature.Organism = man.positions[Manager._getPosId(man, Helper.Point(x, y))]
  local block::RpcApi.Block
  local offs::UInt8

  block, offs = _findBlock(man, region, x, y)
  push!(block.orgs, RpcApi.Org(offs, org.id, org.color, org.age))
end
#
# Creates energy offset in found block for specified coordinates
# @param man Manager data type
# @param region Region of a world we are working with
# @param x X coordinate
# @param y Y coordinate
#
function _addEnergy(man::ManagerTypes.ManagerData, region::RpcApi.Region, x::UInt16, y::UInt16)
  local block::RpcApi.Block
  local offs::UInt8

  block, offs = _findBlock(man, region, x, y)
  push!(block.energy, offs)
end
#
# Creates Org type instance according to specified coordinates and organism
# in these coordinates.
# @param man Manager data type
# @param region Region of a world we are working with
# @param x X coordinate
# @param y Y coordinate
# @return {Tuple{RpcApi.Region, Int, Int}}
#
function _findBlock(man::ManagerTypes.ManagerData, region::RpcApi.Region, x::UInt16, y::UInt16)
  local xBlock::Int = div(x - 1, RpcApi.BLOCK_SIZE) + 1
  local yBlock::Int = div(y - 1, RpcApi.BLOCK_SIZE) + 1
  local xOffs::Int  = xBlock * RpcApi.BLOCK_SIZE - RpcApi.BLOCK_SIZE
  local yOffs::Int  = yBlock * RpcApi.BLOCK_SIZE - RpcApi.BLOCK_SIZE

  (region.blocks[(yBlock - 1) * region.xBlocks + xBlock], UInt8((y - yOffs - 1) * RpcApi.BLOCK_SIZE + x - xOffs - 1))
end
#
# Handler of EVENT_BEFORE_RESPONSE for "fast" pooling mode. Turns
# on "fast" streaming (pooling).
# @param man Manager data type
# @param sock Socket of one ready client
#
function _onFastStreaming(man::ManagerTypes.ManagerData, sock::Base.TCPSocket, data::Array{Any, 1}, ans::Connection.Answer)
  man.cons.streamInit = false
  man.dotCallback     = (pos::Helper.Point, color::UInt16)->_onDrawEnergy(man, pos, color)
  man.moveCallback    = (pos::Helper.Point, dir::Int, color::UInt16, orgId::UInt, outOfBorder::Bool)->_onDrawOrganism(man, pos, color, dir, orgId, outOfBorder)

  Event.off(man.world.obs, World.EVENT_DOT, man.dotCallback)
  Event.off(man.world.obs, World.EVENT_MOVE, man.moveCallback)
  Event.on(man.world.obs, World.EVENT_DOT, man.dotCallback)
  Event.on(man.world.obs, World.EVENT_MOVE, man.moveCallback)
end
#
# This is a handler on world dot change. It notify remote clients
# about these changes.
# @param man Manager data type
# @param pos Dot coordinates
# @param color Dot color
#
function _onDrawEnergy(man::ManagerTypes.ManagerData, pos::Helper.Point, color::UInt16)
  local socks::Array{Base.TCPSocket, 1} = man.cons.fastServer.socks
  local off::Bool = true

  for i::Int = 1:length(socks)
    if Helper.isopen(socks[i])
      off = false
      Server.request(socks[i], FastApi.API_DOT_COLOR, UInt16(pos.x), UInt16(pos.y), color < UInt16(1) ? Dots.INDEX_EMPTY : Dots.INDEX_ENERGY)
      Event.fire(man.obs, "dotrequest", man)
    end
  end
  #
  # This is how we push all active messages to the network
  # TODO: change to yieldto() do we need this?
  yield()
  Event.fire(man.obs, "yield", man)
  #
  # All "fast" clients were disconnected
  #
  if off Event.off(man.world.obs, World.EVENT_DOT, man.dotCallback) end
  if off Event.off(man.world.obs, World.EVENT_MOVE, man.moveCallback) end
end
#
# This is a handler on world dot change. It notify remote clients
# about these changes.
# @param man Manager data type
# @param pos Dot coordinates
# @param color Dot color
#
function _onDrawOrganism(man::ManagerTypes.ManagerData, pos::Helper.Point, color::UInt16, dir::Int, orgId::UInt, outOfBorder::Bool)
  local socks::Array{Base.TCPSocket, 1} = man.cons.fastServer.socks
  local dataIndex::UInt8
  local off::Bool = true
  local hasDirection::Bool = dir !== Dots.DIRECTION_NO
  local infoBits::UInt8 = UInt8(outOfBorder)
  #
  # Encodes direction of organism to the first(unused) half byte of color.
  # e.g.: 0x000F -> 0xF000
  #
  color |= (UInt16(dir) << 12)
  for i::Int = 1:length(socks)
    if Helper.isopen(socks[i])
      off = false
      Server.request(socks[i], FastApi.API_ORG_COLOR, UInt16(pos.x), UInt16(pos.y), color, orgId, infoBits)
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
# Checks if in specified X and Y is an organism
# @param man Manager data type
# @param x X coordinate
# @param y Y coordinate
# @return {Bool}
#
function _isOrganism(man::ManagerTypes.ManagerData, x::Int, y::Int)
  haskey(man.positions, Manager._getPosId(man, Helper.Point(x, y)))
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
    org.mutationsFromStart,
    org.color,
    org.mem,
    [org.pos.x, org.pos.y],
    org.age,
    org.cloneEnergyPercent,
    org.codeSize
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
    if World.getEnergy(man.world, org.pos) > Dots.INDEX_EMPTY
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
  _decreaseOrganismEnergy(man, org, div(org.energy * man.cfg.conStepEnergySpendPercent, 100))
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
# Cuts specified region and return 2D array of it
# @param man Manager data type
# @param x Start X coordinate of region
# @param y Start Y coordinate of region
# @param x1 End x. 0 means all width
# @param y1 End y. 0 means all height
#
function _cutRegion(man::ManagerTypes.ManagerData, x::Int, y::Int, x1::Int, y1::Int)
  copy(man.world.data[y:y1, x:x1])
end
#
# Returns amount of blocks depending on amount of pixels. For example, if
# we have 17x17 pixels block (for block size of 16x16) we have to have 2x2
# blocks for storing this.
# @param x Start coordinate (may be X or Y)
# @param x1 End coordinate (may be X or Y)
# @return {Int} Blocks amount
#
function _calcBlocksAmount(x::Int, x1::Int)
  local blocks::Int = x1 - x + 1
  div(blocks, RpcApi.BLOCK_SIZE) + (blocks % RpcApi.BLOCK_SIZE > 0 ? 1 : 0)
end
#
# Checks if specified coordinates are out of world. If so, then world
# coordinates will be returned. Otherwise the same coordinates will be
# returned
# @param man Manager data type
# @param x Start X coordinate of region
# @param y Start Y coordinate of region
# @param x1 End x. 0 means all width
# @param y1 End y. 0 means all height
# @return {Tuple}
#
function _normalizeRegion(man::ManagerTypes.ManagerData, x::Int = 1, y::Int = 1, x1::Int = 0, y1::Int = 0)
  local maxWidth::Int  = size(man.world.data)[2]
  local maxHeight::Int = size(man.world.data)[1]

  if (x1 < 1 || x1 > maxWidth)  x1 = maxWidth  end
  if (y1 < 1 || y1 > maxHeight) y1 = maxHeight end
  if (x  < 1 || x  > maxWidth)  x  = 1 end
  if (y  < 1 || y  > maxHeight) y  = 1 end

  (x, y, x1, y1)
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
  setQuiet,
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
