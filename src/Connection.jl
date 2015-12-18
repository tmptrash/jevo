#
# @author DeadbraiN
#
# TODO:
module Connection
  import Event
  
  export ServerConnection
  export ClientConnection
  export Answer
  export Command

  # TODO:
  type ServerConnection
    tasks   ::Array{Task}
    socks   ::Array{Base.TCPSocket}
    server  ::Base.TCPServer
    observer::Event.Observer
  end
  # TODO:
  type ClientConnection
  	sock    ::Base.TCPSocket
  	observer::Event.Observer
  end
  # TODO:
  type Command
    fn::Integer
    args::Array{Any}
  end
  # TODO:
  type Answer
    data::Any
  end
end