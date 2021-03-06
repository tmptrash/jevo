#
# Very similar to RemoteWorld module, but works in Real Time. In
# this case RT - means Real Time. It listens remote server and
# shows only differences in remote world, but not all plane.
# It uses canvas within a window for showing dots. This module works
# in a simple way: first, you have to create RemoteWorldRT object
# calling create() function. This object, used in all functions.
# create() doesn't start displaying world. For this, you have to
# call start() function. To stop displaying, call stop(). Speed
# of showing depends on network speed.
#
# @author DeadbraiN
# TODO: describe two clients here (slow and fast)
module RemoteWorldRT
  import Event
  import OpenGlWindow
  import Connection
  import Creature
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
  # Contains data of for remote host, from where we displaying
  # world's region and shows it on a canvas.
  #
  type RemoteDataRT
    #
    # Required fields
    #
    cmdCon::Client.ClientConnection
    poolingCon::Client.ClientConnection
    win::OpenGlWindow.Window
    width::UInt16
    height::UInt16
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
      win::OpenGlWindow.Window,
      width::UInt16,
      height::UInt16
    ) = new(cmdCon, poolingCon, win, width, height)
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
    RemoteDataRT(
      Client.create(host, cmdPort),
      Client.create(host, poolingPort, true),
      OpenGlWindow.create(cfg.worldWidth, cfg.worldHeight, cfg.worldZoom),
      UInt16(cfg.worldWidth),
      UInt16(cfg.worldHeight)
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
    #
    # This is how we redefine colors for world's objects
    #
    for color in Dots.COLORS OpenGlWindow.setColor(Int(color.index), color.rgb...) end

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
    OpenGlWindow.destroy(rd.win)
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
      OpenGlWindow.title(rd.win, string("ips: ", round(rd.ips), ", rps: ", rd.oldRequests))
      OpenGlWindow.update(rd.win)
    end
    rd.poolingRequests += 1
    # TODO: it's better to check type of request by FastApi.API_XXX constants
    if paramAmount === 5 _onOrganismDot(rd, data)
    elseif paramAmount === 3 _onEnergyDot(rd, data)
    elseif paramAmount === 1 _onIps(rd, data)
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
    #
    # This is moving of the dot. We have to draw empty dot
    # on previous dot position and colored dot on new position.
    # This code also knows about moving of organisms out of border
    # in a cyclical mode
    #
    # TIP!!!
    # - local orgId::UInt = UInt(data[4]) # is an organism id
    # - if color === Dots.INDEX_EMPTY, then organism has died
    # - if dir === Dots.DIRECTION_NO, then organism changes it's color, but stay on the same position
    # - if color !== Dots.INDEX_EMPTY && dir === Dots.DIRECTION_NO, then organism has born
    #
    if dir === Dots.DIRECTION_UP
      if outOfBorder OpenGlWindow.dot(rd.win, x, rd.height, Dots.INDEX_EMPTY)
      else OpenGlWindow.dot(rd.win, x, y + 0x0001, Dots.INDEX_EMPTY)
      end
    elseif dir === Dots.DIRECTION_RIGHT
      if outOfBorder OpenGlWindow.dot(rd.win, 0x0001, y, Dots.INDEX_EMPTY)
      else OpenGlWindow.dot(rd.win, x - 0x0001, y, Dots.INDEX_EMPTY)
      end
    elseif dir === Dots.DIRECTION_DOWN
      if outOfBorder OpenGlWindow.dot(rd.win, x, 0x0001, Dots.INDEX_EMPTY)
      else OpenGlWindow.dot(rd.win, x, y - 0x0001, Dots.INDEX_EMPTY)
      end
    elseif dir === Dots.DIRECTION_LEFT
      if outOfBorder OpenGlWindow.dot(rd.win, rd.width, y, Dots.INDEX_EMPTY)
      else OpenGlWindow.dot(rd.win, x + 0x0001, y, Dots.INDEX_EMPTY)
      end
    elseif dir === Dots.DIRECTION_NO
      #println("x: ", x, ", y: ", y, ", id: ", UInt(data[4]), ", c: ", color)
      OpenGlWindow.dot(rd.win, x, y, Dots.INDEX_EMPTY)
    end
    OpenGlWindow.dot(rd.win, x, y, color)
    OpenGlWindow.update(rd.win)
  end
  #
  # Request for drawing energy dot. If we are here, then new energy block was created
  # @param rd Remote Data object
  # @param data Command related data
  #
  function _onEnergyDot(rd::RemoteDataRT, data::Array{Any, 1})
    OpenGlWindow.dot(rd.win, UInt16(data[1]), UInt16(data[2]), UInt16(data[3]))
    OpenGlWindow.update(rd.win)
  end
  #
  # Request for drawing ips valus
  # @param rd Remote Data object
  # @param data Command related data
  #
  function _onIps(rd::RemoteDataRT, data::Array{Any, 1})
    rd.ips = data[1]
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

    for blockIdx = 0:length(region.blocks) - 1
      block = region.blocks[blockIdx + 1]
      yOffs = div(blockIdx, region.xBlocks) * RpcApi.BLOCK_SIZE
      xOffs = blockIdx % region.xBlocks * RpcApi.BLOCK_SIZE
      for offs in block.energy
        OpenGlWindow.dot(rd.win, xOffs + UInt16(offs % RpcApi.BLOCK_SIZE + 1), yOffs + UInt16(div(offs, RpcApi.BLOCK_SIZE) + 1), UInt16(Dots.INDEX_ENERGY))
      end
      for org in block.orgs
        OpenGlWindow.dot(rd.win, xOffs + UInt16(org.offs % RpcApi.BLOCK_SIZE + 1), yOffs + UInt16(div(org.offs, RpcApi.BLOCK_SIZE) + 1), org.color)
      end
    end
    #
    # This command means "turn on server pooling"
    #
    Client.request(rd.poolingCon, UInt8(FastApi.API_UINT8), UInt8(0))
  end
end
