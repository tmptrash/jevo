# TODO:
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
      close(socket)
    end

    sock
  end
  #
  # TODO: describe synchronous logic of this method
  #
  function request(sock, fn::Function, args...)
    serialize(sock, RealConnection.Command(fn, [i for i in args]))
    deserialize(sock)
  end
end

# socket=connect(2001)
# @async while true write(STDOUT,readline(socket)) end
# println(socket,"message")