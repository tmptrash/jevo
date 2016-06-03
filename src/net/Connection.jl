#
# Client/Server common declarations. Is used in Client, Server
# and parent code.
#
# @author DeadbraiN
#
module Connection
  export Answer
  export Command

  #
  # This command is used for sending some data from client
  # to server. It contains from function (or command id) and
  # arguments. An answer will back in Answer type.
  # TODO: should be removed
  type Command
    fn::Int
    args::Array{Any, 1}
  end
  #
  # This typeis used for answering from Server to Clients.
  # data property contains Server response value.
  # TODO: should be removed
  type Answer
    id::Int
    data::Any
  end
end
