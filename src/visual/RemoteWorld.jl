#
# Module for remote connection with Organisms World. It displays
# world's state (organisms, energy, ...) in a canvas on a window.
# Communication works through Pooling module. This module works
# in a simple way: first, you have to create Remote World object
# calling create() function. It returns RemoteWorld data object,
# which is used in all functions. create() doesn't start displaying
# world. For this, you have to call start() function. To stop
# displaying, call stop(). Displaying world is a frame based
# procedure. It means that, every period of time (see delay
# argument of create()) a request will be sent. So amount of
# frames per second depends on delay and network(requests) speed.
#
# @author DeadbraiN
#
module RemoteWorld
  import Event
  import CanvasWindow
  import Pooling
  import Connection
  import RpcApi
  import Config

  export create
  export start
  export stop

  export RemoteData
  #
  # Contains data of for remote host, from where we displaying
  # world's region and shows it on a canvas.
  #
  type RemoteData
    pd::Pooling.PoolingData
    win::CanvasWindow.Window
    reqCb::Function
    resCb::Function
    x::Int
    y::Int
    x1::Int
    y1::Int
    ts::Float64

    RemoteData(pd::Pooling.PoolingData, win::CanvasWindow.Window) = new(pd, win)
  end
  #
  # Creates connection with remote host for display pixels
  # from organism's world.
  # @param host   Remote host we are connecting to
  # @param port   Remote port we are connecting to
  # @param width  Canvas width in pixels
  # @param height Canvas height in pixels
  # @return {RemoteData|false}
  # TODO: return value should be same type
  function create(host::Base.IPAddr, port::Integer, width::Int = Config.val(:WORLD_WIDTH), height::Int = Config.val(:WORLD_HEIGHT))
    pd = Pooling.create(host, port)
    pd !== false ? RemoteData(pd, CanvasWindow.create(width, height)) : false
  end
  #
  # Start displaying remote area. It makes requests to remote
  # server, which answers/retuns us frames of pixels of size (x,y)-(x1,y1).
  # @param rd Remote world data object. See create()
  # @param delay Delay between requests
  # @param x Left top X coordinate
  # @param y Left top Y coordinate
  # @param x1 Right down X coordinate
  # @param y1 Right down Y coordinate
  #
  function start(rd::RemoteData, delay::Int = Config.val(:WORLD_FRAME_DELAY), x::Int = 1, y::Int = 1, x1::Int = 0, y1::Int = 0)
    rd.x     = x
    rd.y     = y
    rd.x1    = x1
    rd.y1    = y1
    rd.reqCb = (pd::Pooling.PoolingData) -> _onBeforeRequest(rd)
    rd.resCb = (pd::Pooling.PoolingData, ans::Connection.Answer) -> _onAfterResponse(rd, ans)

    Event.on(rd.pd.obs, Pooling.EVENT_BEFORE_REQUEST, rd.reqCb)
    Event.on(rd.pd.obs, Pooling.EVENT_AFTER_RESPONSE, rd.resCb)

    Pooling.start(rd.pd, delay)
  end
  #
  # Stops displaying organism's world. Closes the connection.
  # @param rd Remote world data object
  #
  function stop(rd::RemoteData)
    Event.off(rd.pd.obs, Pooling.EVENT_BEFORE_REQUEST, rd.reqCb)
    Event.off(rd.pd.obs, Pooling.EVENT_AFTER_RESPONSE, rd.resCb)
    Pooling.stop(rd.pd)
    CanvasWindow.destroy(rd.win)
  end
  #
  # This function adds arguments to every request to the server.
  # @param rd RemoteData object
  #
  function _onBeforeRequest(rd::RemoteData)
    rd.pd.args = [RpcApi.RPC_GET_REGION, rd.x, rd.y, rd.x1, rd.y1]
    rd.ts = time()
  end
  #
  # Handler of server answer
  # @param rd remote data for specified server
  # @param ans Answer object with region data
  #
  function _onAfterResponse(rd::RemoteData, ans::Connection.Answer)
    local region = ans.data.reg

    CanvasWindow.title(rd.win, string("ips: ", ans.data.ips, " - rtime: ", round(time() - rd.ts, 2)))
    for x in 1:size(region)[2]
      for y in 1:size(region)[1]
        CanvasWindow.dot(rd.win, x, y, UInt32(region[y, x]))
      end
    end
    CanvasWindow.update(rd.win)
  end
end
