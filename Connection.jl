#
# Implements shared for Server/Client types. These types are used
# for sending command and retrieving answers in custom format.
#
module Connection
  import Event
  
  export Command
  export CommandAnswer
  export ConnectionObj

  #
  # Type of one command. One command consists of command and custom
  # arguments. Arguments may be any type. Will be serialized within
  # TCP/IP protocol.
  #
  type Command
    #
    # Command function, which will be run on remote side. The answer
    # will be sent by CommandAnswer type (see it below).
    #
    cmd::Function
    #
    # Command arguments
    #
    args::Array{Any}
  end
  #
  # Command's return value. Is used in pair with Command type. Will
  # be serialized within TCP/IP protocol.
  #
  type CommandAnswer
    #
    # The same like Command.cmd
    #
    cmd::Function
    #
    # Custom answer
    #
    data::Any
  end
  #
  # Object, which is used for connecion between client/server or
  # server/client. Contains observer instance for communications 
  # with other modules, like Manager.
  #
  type ConnectionObj
    # TODO: what type?
    # Tcp socket
    #
    socket
    #
    # Is used for listening of "Command" event, which is server's answer
    #
    observer::Event.Observer
  end
end