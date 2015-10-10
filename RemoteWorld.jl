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

  #
  # Contains data of for remote host, from where we broadcasting 
  # world's region and shows on a canvas.
  #
  type RemoteData
    con::Connection.ClientConnection
    timer::Function
  end
  #
  # Creates connection with remote host for display pixels
  # from organism's world.
  # @param host Remote host we are connecting to
  # @param port Remote port we are connecting to
  # @return RemoteData
  #
  function create(host::Base.IpAddr, port::Integer)
    RemoteData(Client.create(host, port), onTimer)
  end
  #
  # 
  #
  function display(rd::RemoteData)
    Event.on(rd.con.observer, Client.EVENT_ANSWER, onResponse)
    #
    #
    #
    Client.request(rd.con, getRegion)
  end
  #
  # Stops displaying
  #
  function stop(rd::RemoteData)
    Event.off(rd.con.observer, Client.EVENT_ANSWER, onResponse)
    Client.stop(rd.con)
  end

  function onResponse(ans::Connection.Answer)
    width  = size(ans.data)[2]
    height = size(ans.data)[1]
  end
end