#
# Module for remote connection with Organisms World. It displays
# world's state (organisms, energy, ...) in a canvas on a window.
# Communication works through Client/Server modules. This module
# works in a simple way: first, you have to create Remote World
# object calling create() function. It returns RemoteWorld data
# object, which is used in all functions. create() doesn't start 
# displaying world. For this, you have to call display() function.
# To stop displaying, call stop().
# Displaying world is a frame based procedure. It means that,
# every period of time (see delay argument of create()) a request
# will be sent. So amount of frames per second depends on delay
# and network(requests) speed.
#
# @author DeadbraiN
#
module RemoteWorld
  import Event
  import Connection
  import Client
  import CanvasWindow
  using Config

  export create
  export display
  export stop

  using RpcApi
  #
  # Contains data of for remote host, from where we displaying
  # world's region and shows it on a canvas.
  #
  type RemoteData
    con::Client.ClientConnection
    win::CanvasWindow.Window
    resp::Function
    delay::Int
    x::Int
    y::Int
    x1::Int
    y1::Int

    RemoteData(con::Client.ClientConnection, win::CanvasWindow.Window) = new(con, win)
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
  function create(host::Base.IPAddr, port::Integer, width::Int = Config.val(:WORLD_WIDTH), height::Int = Config.val(:WORLD_HEIGHT))
    con = Client.create(host, port)
    con !== false ? RemoteData(con, CanvasWindow.create(width, height)) : false
  end
  #
  #
  # @param delay Delay between requests 
  #
  function display(rd::RemoteData, delay::Int = Config.val(:WORLD_FRAME_DELAY), x::Int = 1, y::Int = 1, x1::Int = 0, y1::Int = 0)
    rd.delay = delay
    rd.x     = x
    rd.y     = y
    rd.x1    = x1
    rd.y1    = y1
    rd.resp  = (ans::Connection.Answer) -> _onResponse(rd, ans)

    Event.on(rd.con.observer, Client.EVENT_ANSWER, rd.resp)
    Client.request(rd.con, RPC_GET_REGION, x, y, x1, y1)
  end
  #
  # Stops displaying organism's world
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
    Client.request(rd.con, RPC_GET_REGION, rd.x, rd.y, rd.x1, rd.y1)
  end
end