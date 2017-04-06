#
# Just for testing Julia and C++/cocos2dx
#
# @author DeadbraiN
#
module RemoteWorldJson
  import Event
  import Connection
  import Creature
  import Client
  import RpcApi
  import FastApi
  import Config
  import Helper
  import Dots
  import JSON

  export create
  export start
  export stop

  export RemoteDataRT
  #
  # Amount of records (objects) in one JSON file
  #
  const AMOUNT_OF_RECORDS = 10000
  #
  # Name of the folder for JSON files
  #
  const JSON_FOLDER = "jsons"
  #
  # Contains data of for remote host, from where we displaying
  # world's region and shows it on a canvas.
  #
  type RemoteDataRT
    #
    # Required fields
    #
    cmdCon::Client.ClientConnection
    poolingCon::Client.ClientConnection
    width::UInt16
    height::UInt16
    fileIndex::Int
    diffs::Array{Any,1}
    #
    # Lazy loading fields
    #
    poolingBeforeCb::Function
    cmdAfterCb::Function
    ts::Float64
    poolingRequests::Int
    oldRequests::Int
    ips::Float64

    RemoteDataRT(
      cmdCon::Client.ClientConnection,
      poolingCon::Client.ClientConnection,
      width::UInt16,
      height::UInt16,
      fileIndex::Int,
      diffs::Array{Any, 1}
    ) = new(cmdCon, poolingCon, width, height, fileIndex, diffs)
  end
  #
  # Creates connection with remote host for display pixels from remote world.
  # @param cfg Global config type
  # @param host Remote host we are connecting to
  # @param cmdPort Remote port for commands
  # @param poolingPort Remote port for pooling requests
  # @return {RemoteDataRT}
  #
  function create(cfg::Config.ConfigData, host::Base.IPAddr, cmdPort::Int, poolingPort::Int)
    if !isdir(JSON_FOLDER) mkdir(JSON_FOLDER) end

    RemoteDataRT(
      Client.create(host, cmdPort),
      Client.create(host, poolingPort, true),
      UInt16(cfg.worldWidth),
      UInt16(cfg.worldHeight),
      0,
      Any[]
    )
  end
  #
  # Start displaying remote plane. It handles requests from remote
  # server with dots diffs. Response of first request will be all dots
  # of remote plane. All other requests will be runned from remove
  # server back to this client.
  # @param rd Remote world data object. See create()
  #
  function start(rd::RemoteDataRT)
    local color::Dots.Color

    rd.poolingBeforeCb = (sock::Base.TCPSocket, data::Array{Any, 1}, ans::Connection.Answer) -> _onDot(rd, data)
    rd.cmdAfterCb      = (ans::Connection.Answer) -> _onRegion(rd, ans)
    rd.ts              = time()
    rd.poolingRequests = 0
    rd.oldRequests     = 0

    Event.on(rd.poolingCon.observer, Connection.EVENT_BEFORE_RESPONSE, rd.poolingBeforeCb)
    Event.on(rd.cmdCon.observer, Connection.EVENT_AFTER_REQUEST, rd.cmdAfterCb)
    Client.request(rd.cmdCon, RpcApi.RPC_SET_WORLD_STREAMING)
  end
  #
  # Stops displaying organism's world. Closes the connection.
  # @param rd Remote world data object
  #
  function stop(rd::RemoteDataRT)
    Event.off(rd.poolingCon.observer, Connection.EVENT_BEFORE_RESPONSE, rd.poolingBeforeCb)
    Event.off(rd.cmdCon.observer, Connection.EVENT_AFTER_REQUEST, rd.cmdAfterCb)
    Client.stop(rd.cmdCon)
    Client.stop(rd.poolingCon)
  end
  #
  # Handler of remote server pooling request. It may contain two types
  # of data:
  #    x::Uint16, y::UInt16, color::UInt16, ips::UInt16 or
  #    ips::UInt16
  # @param rd Remote Data object
  # @param data Command related data
  #
  function _onDot(rd::RemoteDataRT, data::Array{Any, 1})
    local paramAmount::Int = length(data)
    if time() - rd.ts > 1.0
      rd.ts = time()
      rd.oldRequests = rd.poolingRequests
      rd.poolingRequests = 0
    end
    rd.poolingRequests += 1
    # TODO: it's better to check type of request by FastApi.API_XXX constants
    if paramAmount === 5 _onOrganismDot(rd, data)
    elseif paramAmount === 3 _onEnergyDot(rd, data)
    end
  end
  #
  # Request for drawing organism dot
  # @param rd Remote Data object
  # @param data Command related data
  #
  function _onOrganismDot(rd::RemoteDataRT, data::Array{Any, 1})
    local x::UInt16       = UInt16(data[1])
    local y::UInt16       = UInt16(data[2])
    local nibbles::UInt16 = UInt16(data[3])
    local infoBits::UInt8 = UInt8(data[5])
    local color::UInt16   = nibbles & 0x0fff # last 3 nibbles are color
    local dir::Int        = nibbles >> 12    # first nibble is direction
    local outOfBorder::Bool = infoBits & 0b1 > 0
    local pixelDiff::Dict

    local orgId::UInt = UInt(data[4]) # is an organism id

    local sourceX::UInt16 = x;
    local sourceY::UInt16 = y;

    if color === Dots.INDEX_EMPTY
      pixelDiff = Dict("id" => orgId, "sx" => sourceX, "sy" => sourceY, "dx" => x, "dy" => y, "c" => color, "a" => "remove")
      push!(rd.diffs, pixelDiff)
    elseif dir === Dots.DIRECTION_NO
      pixelDiff = Dict("id" => orgId, "sx" => sourceX, "sy" => sourceY, "dx" => x, "dy" => y, "c" => color, "a" => "add")
      push!(rd.diffs, pixelDiff)
    # TODO: this scenario is not valid at the moment
    #elseif dir === Dots.DIRECTION_NO
    #  pixelDiff = Dict("id" => orgId, "sx" => sourceX, "sy" => sourceY, "dx" => x, "dy" => y, "c" => color, "a" => "color")
    #  push!(rd.diffs, pixelDiff)
    else
      if     dir === Dots.DIRECTION_UP    sourceY = y + 0x0001
      elseif dir === Dots.DIRECTION_RIGHT sourceX = x - 0x0001
      elseif dir === Dots.DIRECTION_DOWN  sourceY = y - 0x0001
      elseif dir === Dots.DIRECTION_LEFT  sourceX = x + 0x0001
      end

      pixelDiff = Dict("id" => orgId, "sx" => sourceX, "sy" => sourceY, "dx" => x, "dy" => y, "a" => "move", "c" => color)
      push!(rd.diffs, pixelDiff)
    end

    if length(rd.diffs) > AMOUNT_OF_RECORDS
      local file::String = string(JSON_FOLDER, "/", lpad(rd.fileIndex, 4, "0"), ".json")
      Helper.save(JSON.json(rd.diffs), file, true)
      rd.diffs = []
      rd.fileIndex += 1
    end
  end

  #
  # Request for drawing energy dot. If we are here, then new energy block was created
  # @param rd Remote Data object
  # @param data Command related data
  #
  function _onEnergyDot(rd::RemoteDataRT, data::Array{Any, 1})

    local x::UInt16       = UInt16(data[1])
    local y::UInt16       = UInt16(data[2])
    local color::UInt16   = UInt16(data[3])

    local pixelDiff = Dict("id" => 0, "sx" => x, "sy" => y, "dx" => x, "dy" => y, "c" => color, "a" => "add")
    push!(rd.diffs, pixelDiff)

    if length(rd.diffs) > AMOUNT_OF_RECORDS
      local file::String = string(JSON_FOLDER, "/", lpad(rd.fileIndex, 4, "0"), ".json")
      Helper.save(JSON.json(rd.diffs), file, true)
      rd.diffs = []
      rd.fileIndex += 1
    end

  end

  #
  # Handler of RpcApi.RPC_SET_WORLD_STREAMING request
  # @param data Answer object with region data
  #
  function _onRegion(rd::RemoteDataRT, ans::Connection.Answer)
    local region::RpcApi.Region = ans.data
    local blockIdx::Int
    local block::RpcApi.Block
    local offs::UInt8
    local org::RpcApi.Org
    local xOffs::UInt16
    local yOffs::UInt16

    keyFrameRegion = []

    for blockIdx = 0:length(region.blocks) - 1
      block = region.blocks[blockIdx + 1]
      yOffs = div(blockIdx, region.xBlocks) * RpcApi.BLOCK_SIZE
      xOffs = blockIdx % region.xBlocks * RpcApi.BLOCK_SIZE
      for offs in block.energy

        local x::UInt16       = xOffs + UInt16(offs % RpcApi.BLOCK_SIZE + 1)
        local y::UInt16       = yOffs + UInt16(div(offs, RpcApi.BLOCK_SIZE) + 1)

        pixel = Dict("id" => 0, "x" => x, "y" => y, "c" =>  UInt16(Dots.INDEX_ENERGY))
        push!(keyFrameRegion, pixel)
      end
      for org in block.orgs

        local x::UInt16       = xOffs + UInt16(org.offs % RpcApi.BLOCK_SIZE + 1)
        local y::UInt16       = yOffs + UInt16(div(org.offs, RpcApi.BLOCK_SIZE) + 1)

        pixel = Dict("id" => org.id, "x" => x, "y" => y, "c" =>  org.color)
        push!(keyFrameRegion, pixel)
      end
    end

    keyFrame = Dict("region" => keyFrameRegion,
                    "width" => region.width,
                    "height" => region.height)

    local fileName::String = string(JSON_FOLDER, "/keyframe.json")
    Helper.save(JSON.json(keyFrame), fileName, true)

    #
    # This command means "turn on server pooling"
    #
    Client.request(rd.poolingCon, UInt8(FastApi.API_UINT8), UInt8(0))
  end

end
