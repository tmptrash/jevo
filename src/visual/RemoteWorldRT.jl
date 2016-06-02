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
#
module RemoteWorldRT
  import Event
  import CanvasWindow
  import Connection
  import Client
  import RpcApi
  import Config
  import Helper

  using Debug

  export create
  export start
  export stop

  export RemoteDataRT
  #
  # Contains data of for remote host, from where we displaying
  # world's region and shows it on a canvas.
  #
  type RemoteDataRT
    con::Client.ClientConnection
    win::CanvasWindow.Window
    beforeCb::Function
    afterCb::Function

    RemoteDataRT(con::Client.ClientConnection, win::CanvasWindow.Window) = new(con, win)
  end
  #
  # Creates connection with remote host for display pixels from remote world.
  # @param host Remote host we are connecting to
  # @param port Remote port we are connecting to
  # @return {RemoteDataRT}
  #
  function create(host::Base.IPAddr, port::Int)
    RemoteDataRT(
      Client.create(host, port),
      CanvasWindow.create(Config.val(:WORLD_WIDTH), Config.val(:WORLD_HEIGHT))
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
    rd.beforeCb = (data::Connection.Command, ans::Connection.Answer) -> _onBeforeResponse(rd, data, ans)
    rd.afterCb  = (ans::Connection.Answer) -> _onAfterResponse(rd, ans)
    Event.on(rd.con.observer, Client.EVENT_BEFORE_RESPONSE, rd.beforeCb)
    Event.on(rd.con.observer, Client.EVENT_AFTER_RESPONSE, rd.afterCb)
    Client.request(rd.con, RpcApi.RPC_SET_WORLD_STREAMING)
  end
  #
  # Stops displaying organism's world. Closes the connection.
  # @param rd Remote world data object
  #
  function stop(rd::RemoteDataRT)
    Event.off(rd.con.observer, Client.EVENT_BEFORE_RESPONSE, rd.beforeCb)
    Event.off(rd.con.observer, Client.EVENT_AFTER_RESPONSE, rd.afterCb)
    Client.stop(rd.con)
    CanvasWindow.destroy(rd.win)
  end
  #
  # Handler of remote server request. Handles remote world dots diffs.
  # @param rd Remote Data object
  # @param data Command related data
  # @param ans Server answer
  #
  function _onBeforeResponse(rd::RemoteDataRT, data::Connection.Command, ans::Connection.Answer)
    local pos::Helper.Point = data.args[1]
    local color::UInt32 = data.args[2]
    CanvasWindow.dot(rd.win, pos.x, pos.y, color)
    CanvasWindow.update(rd.win)
  end
  #
  # Handler of RpcApi.RPC_SET_WORLD_STREAMING request
  # @param ans Answer object with region data
  #
  function _onAfterResponse(rd::RemoteDataRT, ans::Connection.Answer)
    local region = ans.data.reg

    #CanvasWindow.title(rd.win, string("ips: ", ans.data.ips, " - rtime: ", round(time() - rd.ts, 2)))
    for x::Int in 1:size(region)[2]
      for y::Int in 1:size(region)[1]
        CanvasWindow.dot(rd.win, x, y, UInt32(region[y, x]))
      end
    end
    CanvasWindow.update(rd.win)
  end
end
