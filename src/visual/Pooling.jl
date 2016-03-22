#
# Module for requests pooling. Communication works through Client/
# Server modules. This module works in a simple way: first, you 
# have to create Pooling data object by calling create() function.
# It returns PoolingData data object, which is used in all functions.
# create() doesn't start pooling. For this, you have to call start() 
# function. To stop pooling, call stop().
#
# @author DeadbraiN
#
module Pooling
  import Event
  import Connection
  import Client
  import Config

  export create
  export start
  export stop
  #
  # Contains data of remote host, from where we displaying
  # world's region and shows it on a canvas.
  #
  type PoolingData
    con::Client.ClientConnection
    resp::Function
    delay::Int

    RemoteData(con::Client.ClientConnection) = new(con)
  end
  #
  # Creates connection with remote host for display pixels
  # from organism's world.
  # @param host   Remote host we are connecting to
  # @param port   Remote port we are connecting to
  # @param width  Canvas width in pixels
  # @param height Canvas height in pixels
  # @return RemoteData
  #
  function create(host::Base.IPAddr, port::Integer)
    con = Client.create(host, port)
    con !== false ? RemoteData(con, CanvasWindow.create(width, height)) : false
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
  function display(rd::RemoteData, delay::Int = Config.val(:WORLD_FRAME_DELAY), x::Int = 1, y::Int = 1, x1::Int = 0, y1::Int = 0)
    rd.delay = delay
    rd.x     = x
    rd.y     = y
    rd.x1    = x1
    rd.y1    = y1
    rd.resp  = (ans::Connection.Answer) -> _onResponse(rd, ans)

    Event.on(rd.con.observer, Client.EVENT_ANSWER, rd.resp)
    Client.request(rd.con, RpcApi.RPC_GET_REGION, x, y, x1, y1)
  end
  #
  # Stops displaying organism's world. Closes the connection.
  # @param rd Remote world data object
  #
  function stop(rd::RemoteData)
    Event.off(rd.con.observer, Client.EVENT_ANSWER, rd.resp)
    Client.stop(rd.con)
    CanvasWindow.destroy(rd.win)
  end
  #
  # Handler of server answer
  # @param rd remote data for specified server
  # @param ans Answer object with region data
  #
  function _onResponse(rd::RemoteData, ans::Connection.Answer)
    region = ans.data.reg

    CanvasWindow.title(rd.win, "ips: $(ans.data.ips)")
    for x in 1:size(region)[2]
      for y in 1:size(region)[1]
        CanvasWindow.dot(rd.win, x, y, UInt32(region[y, x]))
      end
    end
    CanvasWindow.update(rd.win)
    sleep(rd.delay)
    Client.request(rd.con, RpcApi.RPC_GET_REGION, rd.x, rd.y, rd.x1, rd.y1)
  end
end