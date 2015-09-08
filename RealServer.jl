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

  using Debug

  # TODO:
  # TODO: we have to add run() method to take an ability to bind events before running
  function create(host::Base.IpAddr, port::Integer)
    RealConnection.Connection(Task[], Base.TcpSocket[], listen(host, port), Event.create())
  end
  #
  # Runs the server. Starts listening clients connections
  # and starts answering on requests. This method implements
  # main asynchronous client-server communication logic. Here
  # all green threads are used
  # @param con Server data object
  #
  function run(con::RealConnection.Connection)
    @async begin
      while true
        push!(con.socks, accept(con.server))
        sock = con.socks[length(con.socks)]
        push!(con.tasks, @async while isopen(sock) _answer(sock, con.obs) end)
      end
    end
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
  function _answer(sock::Base.TcpSocket, obs::Event.Observer)
    ans = RealConnection.Answer(null)
    Event.fire(obs, "command", deserialize(sock), ans)
    serialize(sock, ans)
  end
end