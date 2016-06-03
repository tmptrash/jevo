#
# Client/Server common declarations. Is used in Client, Server
# and parent code.
#
# @author DeadbraiN
#
module Connection
  export STREAMING_INIT
  export STREAMING_ON
  export STREAMING_OFF

  export Answer
  export Command
  export CMD_NO_FUNC
  #
  # Three streaming states. Server should wait the client,
  # to start world streaming, because of serialize issue:
  # https://github.com/JuliaLang/julia/issues/16746
  #
  const STREAMING_INIT    = 0
  const STREAMING_ON      = 1
  const STREAMING_OFF     = 2
  #
  # Stub if Command.fn is not set
  #
  const CMD_NO_FUNC       = 0

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
