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
  import Config

  export create
  export display
  export stop
  # TODO: remove this
  using Debug

  include("ManagerRpcApi.jl")
  #
  # Contains data of for remote host, from where we displaying 
  # world's region and shows it on a canvas.
  #
  type RemoteData
    con::Connection.ClientConnection
    resp::Function
    delay::Integer
    x::Integer
    y::Integer
    width::Integer
    height::Integer

    RemoteData(con::Connection.ClientConnection) = new(con)
  end
  #
  # Creates connection with remote host for display pixels
  # from organism's world.
  # @param host  Remote host we are connecting to
  # @param port  Remote port we are connecting to
  # @return RemoteData
  #
  function create(host::Base.IpAddr, port::Integer)
    RemoteData(Client.create(host, port))
  end
  #
  #
  # @param delay Delay between requests 
  #
  function display(rd::RemoteData, delay::Integer = Config.world["frameDelay"], x::Integer = 1, y::Integer = 1, width::Integer = 0, height::Integer = 0)
    rd.delay  = delay
    rd.x      = x
    rd.y      = y
    rd.width  = width
    rd.height = height
    rd.resp   = (ans::Connection.Answer) -> _onResponse(rd, ans)

    Event.on(rd.con.observer, Client.EVENT_ANSWER, rd.resp)
    Client.request(rd.con, RPC_GET_REGION, x, y, width, height)
  end
  #
  # Stops displaying organism's world
  #
  function stop(rd::RemoteData)
    Event.off(rd.con.observer, Client.EVENT_ANSWER, rd.resp)
    Client.stop(rd.con)
  end
  #
  # Handler of server answer
  # @param rd remote data for specified server
  # @param ans Answer object with region data
  #
  @debug function _onResponse(rd::RemoteData, ans::Connection.Answer)
    @bp
    width  = size(ans.data)[2]
    height = size(ans.data)[1]
    # TODO: show on canvas
    sleep(rd.delay)
    Client.request(rd.con, RPC_GET_REGION, rd.x, rd.y, rd.width, rd.height)
  end
end