# TODO: provide an example of "main" code with yield() call
module RealServer
  import Event
  import Connection

  # TODO:
  type Connection
    tasks   ::Array{Task}
    socks   ::Array{Base.TcpSocket}
    server  ::Base.TcpServer
    observer::Event.Observer
  end
  # TODO:
  type Answer
    data::Any
  end

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
        push!(tasks, @async while isopen(sock)
          #_runCmd(socks, i, obs)
          write(sock, readline(sock))
        end)
      end
    end

    Connection(tasks, socks, server, obs)
  end

  #
  # This method should be called in main server loop for updating
  # sockets (connections) between clients and this server and tasks
  # (coroutines).
  #
  function update(con::Connection)
    t::Int = 1

    while t <= length(con.tasks)
      if isopen(con.socks[t])
       	t += 1
      else
        deleteat!(con.tasks, t)
        deleteat!(con.socks, t)
      end
    end
  end
  # TODO:
  function _runCmd(socks::Array{Base.TcpSocket}, i::Int, obs::Event.Observer)
    ans = Answer(null)
    cmd = deserialize(socks[i])

    Event.fire(obs, "command", cmd, ans)
    serialize(socks[i], ans)
  end
end