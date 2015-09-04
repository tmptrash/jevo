module RealServer
  import Event

  type Con
    tasks   ::Array{Task}
    socks   ::Array{Base.TcpSocket}
    server  ::Base.TcpServer
    observer::Event.Observer
  end
  type Ans
    data::Any
  end

  function create(port)
    i      = 1
    tasks  = Task[]
    socks  = Base.TcpSocket[]
    server = listen(port)
    obs    = Event.create()

    @async begin
      while true
        push!(socks, accept(server))
        println(i)
        i = length(socks)
        push!(tasks, @async while isopen(socks[i])
          _runCmd(socks, i, obs)
        end)
      end
    end

    Con(tasks, socks, server, obs)
  end

  #
  # This method should be called in main server loop for updating
  # sockets (connections) between clients and this server and tasks
  # (coroutines).
  #
  function update(con::Con)
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

  function _runCmd(socks::Array{Base.TcpSocket}, i::Int, obs::Event.Observer)
    ans = Ans(null)
    cmd = deserialize(socks[i])

    Event.fire(obs, "command", cmd, ans)
    serialize(socks[i], ans)
  end
end