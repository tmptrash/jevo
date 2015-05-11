#
# TODO: description
#
module Client
  import Event
  import Connection
  import Config

  export create

  #
  # TODO: description
  #
  function create(port::Uint16)
    sock = nothing
    #
    # TODO:
    #
    observer = Event.Observer(Dict{ASCIIString, Array{Function}}())
    try
      sock = Base.connect(port)
    catch e
      # TODO: what to do with e?
      close(sock)
    end

    Connection.ConnectionObj(sock, observer)
  end
  #
  # TODO:
  #
  function runCmd(ct::Connection.ConnectionObj, cmd::ASCIIString, args...)
    command = Connection.Command(cmd, [i for i in args])
    ans     = nothing
    @async begin
      serialize(ct.socket, command)
      try
        ans = deserialize(ct.socket)
        Event.fire(ct.observer, "command", ct, ans)
      catch e
        # TODO: what to do with e?
      end
    end
  end
end