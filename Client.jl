#
# TODO: description
#
module Client
  import Event
  import Connection
  import Config

  export create
  export runCmd

  #
  # TODO: description
  #
  function create(port::Uint16)
    socket = nothing
    #
    # TODO:
    #
    observer = Event.create()
    try
      socket = Base.connect(port)
    catch e
      # TODO: what to do with e?
      close(socket)
    end

    Connection.ConnectionObj(socket, observer)
  end
  #
  # TODO: description
  #
  function runCmd(co::Connection.ConnectionObj, cmd::Function, args...)
    command = Connection.Command(cmd, [i for i in args])
    ans     = nothing
    @async begin
      serialize(co.socket, command)
      try
        ans = deserialize(co.socket)
        Event.fire(co.observer, "command", co, ans)
      catch e
        # TODO: what to do with e?
      end
    end
  end
end