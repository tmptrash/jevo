#
# Implements shared for Server/Client typed. These types are used
# for sending command and retrieving answers in custom format.
#
module Connection
  export Command
  export CommandAnswer

  #
  # Type of one command. One command consists of command and custom
  # arguments. Arguments may be any type. Will be serialized within
  # TCP/IP protocol.
  #
  type Command
    #
    # Name of the command in lower case
    #
    cmd::ASCIIString
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
    # Name of the command
    #
    cmd::ASCIIString
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