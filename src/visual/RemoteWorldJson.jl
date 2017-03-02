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
    json::Array{String,1}
    dotsAmount::Int
    fileIndex::Int
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
      json::Array{String,1},
      dotsAmount::Int,
      fileIndex::Int
    ) = new(cmdCon, poolingCon, json, dotsAmount, fileIndex)
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
      String[],
      0,
      0
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
  #    x::Uint16, y::UInt16, color::UInt32, ips::UInt16 or
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
      local color::UInt32 = UInt32(data[3])
      local dir::Int = color & 0xff000000 >> 24
      local x::Int = Int(data[1])
      local y::Int = Int(data[2])
      #
      # This is moving of the dot. We have to draw empty dot
      # on previous dot position and colored dot on new position.
      #
      if dir !== Dots.DIRECTION_NO
        if     dir === Dots.DIRECTION_UP    _dot(rd, x, y + 1, UInt32(Dots.INDEX_EMPTY))
        elseif dir === Dots.DIRECTION_RIGHT _dot(rd, x - 1, y, UInt32(Dots.INDEX_EMPTY))
        elseif dir === Dots.DIRECTION_DOWN  _dot(rd, x, y - 1, UInt32(Dots.INDEX_EMPTY))
        else                                _dot(rd, x + 1, y, UInt32(Dots.INDEX_EMPTY))
        end
      end
      _dot(rd, x, y, color << 8 >> 8) # clear first byte with direction
      #OpenGlWindow.update(rd.win)
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
    local region::Array{UInt32, 2} = ans.data.reg

    #OpenGlWindow.title(rd.win, string("ips: ", round(ans.data.ips), ", rps: 0"))
    for x::Int in 1:size(region)[2]
      for y::Int in 1:size(region)[1]
        _dot(rd, x, y, UInt32(region[y, x]))
      end
    end
    #OpenGlWindow.update(rd.win)
    #
    # This command means "turn on server pooling"
    #
    Client.request(rd.poolingCon, UInt8(FastApi.API_UINT8), UInt8(0))
  end
  #
  # Saves pixels to JSON string file
  #
  function _toJson(rd::RemoteDataRT)
    local file::String = string(JSON_FOLDER, "/", lpad(rd.fileIndex, 4, "0"), ".json")

    Helper.save(string("[{", join(rd.json, "},{"), "}]"), file, true)
    rd.json = []
  end
  #
  # Adds one dot to the JSON string
  #
  function _dot(rd::RemoteDataRT, x::Int, y::Int, color::UInt32)
    push!(rd.json, string("x:", x, ",y:", y, ",c:", color))
    rd.dotsAmount += 1

    if rd.dotsAmount > AMOUNT_OF_RECORDS
      _toJson(rd)
      rd.dotsAmount = 0
      rd.fileIndex += 1
    end
  end
end
