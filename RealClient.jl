# TODO: describe general module logic
# TODO: describe events
module RealClient
  import RealConnection

  #
  # TODO:
  #
  function create(ip, port)
    try
      sock = Base.connect(ip, port)
    catch e
      # TODO: what to do with e?
      close(sock)
    end

    RealConnection.ClientConnection(sock, Event.create())
  end
  #
  # TODO: describe asynchronous logic of this method
  #
  function request(con::RealConnection.ClientConnection, fn::Function, args...)
    serialize(sock, RealConnection.Command(fn, [i for i in args]))
    deserialize(sock)
  end
end