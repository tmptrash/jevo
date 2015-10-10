#
# Module for remote connection with Organisms World. It broadcasts
# world's state (organismd,energy, ...) in a canvas on a window.
# Communication works through Client/Server modules.
#
module RemoteWorld
  import Client
  import Connection
  import Event

  export create
  export display
  export stop
  #
  # Contains data of for remote host, from where we displaying 
  # world's region and shows it on a canvas.
  #
  type RemoteData
    con::Connection.ClientConnection
    resp::Function
  end
  #
  # Creates connection with remote host for display pixels
  # from organism's world.
  # @param host  Remote host we are connecting to
  # @param port  Remote port we are connecting to
  # @param delay Delay between requests
  # @return RemoteData
  #
  function create(host::Base.IpAddr, port::Integer, delay::Integer)
    client = Client.create(host, port)
    RemoteData(client, (ans::Connection.Answer) -> _onResponse(client, delay, ans))
  end
  #
  # 
  #
  function display(rd::RemoteData)
    Event.on(rd.con.observer, Client.EVENT_ANSWER, rd.resp)
    Client.request(rd.con, getRegion)
  end
  #
  # Stops displaying organism's world
  #
  function stop(rd::RemoteData)
    Event.off(rd.con.observer, Client.EVENT_ANSWER, _onResponse)
    Client.stop(rd.con)
  end
  #
  # Handler of server answer
  # @param rd remote data for specified server
  # @param ans Answer object with region data
  #
  function _onResponse(con::Connection.ClientConnection, delay::Integer, ans::Connection.Answer)
    width  = size(ans.data)[2]
    height = size(ans.data)[1]
    # TODO: show on canvas
    sleep(delay)
    Client.request(con, getRegion)
  end
end