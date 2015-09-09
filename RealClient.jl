# TODO: describe general module logic
# TODO: describe events
# TODO: provide an example of usage
module RealClient
  import RealConnection
  import Event

  #
  # TODO: describe possibility to throw an exeption
  #
  function create(host::Base.IpAddr, port::Integer)
    local sock::Base.TcpSocket

    try
      sock = Base.connect(host, port)
    catch e
      # TODO: what to do with e?
      close(sock)
    end

    RealConnection.ClientConnection(sock, Event.create())
  end
  #
  # TODO: describe asynchronous logic of this method
  # @return true - request was sent, false wasn't
  #
  function request(con::RealConnection.ClientConnection, fn::Function, args...)
    if !isopen(con.sock) return false end

    @async begin
      serialize(con.sock, RealConnection.Command(fn, [i for i in args]))
      Event.fire(con.observer, "answer", deserialize(con.sock))
    end

    return true
  end
end