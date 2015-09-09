# TODO:
module RealConnection
  import Event
  
  export Connection
  export Answer
  export Command

  # TODO:
  type ServerConnection
    tasks   ::Array{Task}
    socks   ::Array{Base.TcpSocket}
    server  ::Base.TcpServer
    observer::Event.Observer
  end
  # TODO:
  type ClientConnection
  	sock    ::Base.TcpSocket
  	observer::Event.Observer
  end
  # TODO:
  type Command
    cmd::Function
    args::Array{Any}
  end
  # TODO:
  type Answer
    data::Any
  end
end