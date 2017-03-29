#
# Just for testing Julia and C++/cocos2dx
#
# @author DeadbraiN
#
module RemoteWorldJson
  import Event
  import Connection
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
      fileIndex::Int,
      diffs::Array{Any, 1}
    ) = new(cmdCon, poolingCon, fileIndex, diffs)
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
    if time() - rd.ts > 1.0
      rd.ts = time()
      rd.oldRequests = rd.poolingRequests
      rd.poolingRequests = 0
      #OpenGlWindow.title(rd.win, string("ips: ", round(rd.ips), ", rps: ", rd.oldRequests))
      #OpenGlWindow.update(rd.win)
    end
    rd.poolingRequests += 1
    #
    # if only one item in data array, then it's IPS. if more then it's a dot.
    # First byte of color is a direction (see DIRECTION_XXX constants). In this
    # case we have to "move" specified dot to new location and clear previous
    # position by empty color.
    #
    if length(data) > 1
      local nibbles::UInt16 = UInt16(data[3])
      local color::UInt16   = nibbles & 0x0fff # last 3 nibbles are color
      local dir::Int        = nibbles >> 12    # first nibble is direction
      local x::UInt16       = UInt16(data[1])
      local y::UInt16       = UInt16(data[2])
      #
      # This is moving of the dot. We have to draw empty dot
      # on previous dot position and colored dot on new position.
      #
      local sourceX::UInt16 = x;
      local sourceY::UInt16 = y;

      if dir !== Dots.DIRECTION_NO
        if     dir === Dots.DIRECTION_UP    sourceY = y + UInt16(1)
        elseif dir === Dots.DIRECTION_RIGHT sourceX = x - UInt16(1)
        elseif dir === Dots.DIRECTION_DOWN  sourceY = y - UInt16(1)
        else                                sourceX = x + UInt16(1)
        end
      end

      local pixelDiff = Dict("sx" => sourceX, "sy" => sourceY, "dx" => x, "dy" => y, "c" => color)
      push!(rd.diffs, pixelDiff)

      if length(rd.diffs) > AMOUNT_OF_RECORDS
        local file::String = string(JSON_FOLDER, "/", lpad(rd.fileIndex, 4, "0"), ".json")
        Helper.save(JSON.json(rd.diffs), file, true)
        rd.diffs = []
        rd.fileIndex += 1
      end
    else
      rd.ips = data[1]
    end
  end
  #
  # Handler of RpcApi.RPC_SET_WORLD_STREAMING request
  # @param data Answer object with region data
  #
  function _onRegion(rd::RemoteDataRT, ans::Connection.Answer)
    if ans.data === false Helper.error("Only one viewer is supported"); return nothing end
    local region::Array{UInt16, 2} = ans.data.reg

    # Store each pixel to key frame
    keyFrameRegion = []
    for x::Int in 1:size(region)[2]
      for y::Int in 1:size(region)[1]
        local color::UInt16 = UInt16(region[y, x])
        if (color != 0)
          pixel = Dict("x" => x, "y" => y, "c" =>  color)
          push!(keyFrameRegion, pixel)
        end
      end
    end

    keyFrame = Dict("region" => keyFrameRegion,
                    "width" => size(region)[2],
                    "height" => size(region)[1])

    local fileName::String = string(JSON_FOLDER, "/keyframe.json")
    Helper.save(JSON.json(keyFrame), fileName, true)

    #
    # This command means "turn on server pooling"
    #
    Client.request(rd.poolingCon, UInt8(FastApi.API_UINT8), UInt8(0))
  end
end
