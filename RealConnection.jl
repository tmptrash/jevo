# TODO:
module RealConnection
  export Connection
  export Answer
  export Command

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
  type Command
    cmd::Function
    args::Array{Any}
  end
end