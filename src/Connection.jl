#
# TODO: 
# 
# @author DeadbraiN
#
module Connection
  import Event
  
  export ClientConnection
  export Answer
  export Command

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