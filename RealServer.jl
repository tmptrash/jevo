#
# Multi connection server implementation. Works through TCP/IP
# protocol for connection with clients. Fully asynchronous and
# one threaded. Uses green threads (or coroutines) inside. See
# http://julia.readthedocs.org/en/latest/manual/control-flow/#man-tasks
# link for details regarding coroutines. 
# TODO: describe general logic here
# TODO: describe main loop, yield() call and update() call
# TODO: provide an example of usage
# TODO: describe events
#
module RealServer
  import Event
  import RealConnection

  # TODO:
  function create(port)
    tasks  = Task[]
    socks  = Base.TcpSocket[]
    server = listen(port)
    obs    = Event.create()

    @async begin
      while true
        push!(socks, accept(server))
        sock = socks[length(socks)]
        push!(tasks, @async while isopen(sock) _answer(sock, obs) end)
      end
    end

    RealConnection.Connection(tasks, socks, server, obs)
  end
  #
  # This method should be called in main server's loop for updating
  # sockets (connections) between clients and this server.
  #
  function update(con::RealConnection.Connection)
    i::Int = 1

    while i <= length(con.socks)
      if isopen(con.socks[i])
       	i += 1
      else
        deleteat!(con.socks, i)
        deleteat!(con.tasks, i)
      end
    end
  end

  #
  # Reads one command from client's socket and creates an answer 
  # object. After that, writes it into the socket back.
  # @param sock Client's socket
  # @param obs Observer for firing an event to "parent" code
  #
  function _answer(socks::Base.TcpSocket, obs::Event.Observer)
    ans = RealConnection.Answer(null)
    Event.fire(obs, "command", deserialize(sock), ans)
    serialize(sock, ans)
  end
end