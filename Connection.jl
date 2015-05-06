#
# TODO: description
# TODO: Events
#
module Connection
  import Config
  import Event

  export Command

  export runCommand
  export createTask

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
  # Runs one command obtained from remote terminal
  # @param cmd Parsed Command type
  # @param socket Socket
  #
  function runCommand(cmd::Command, socket)
    result = CommandAnswer(cmd.cmd, nothing)
    Event.fire("command", cmd, result)
    serialize(socket, result.data)
  end
  #
  # It creates separate task for remote terminal. It waits a connection
  # from remote terminal on specified port by TCP/IP protocol. After 
  # terminal is connected, we wait for commands. After stop command
  # accures, we returns to the waiting loop. It Returns Task type 
  # instance, so we may parallel terminal connection and communication 
  # and other tasks like organisms scripts run.
  # @return {Task}
  #
  function createTask()
    @async begin
      # TODO: port should may be different on different instances on
      # TODO: the same machine (with same IP address)
      server = listen(Config.connection["startPort"])
      #
      # In this loop we are waiting for terminal connection.
      # We have to wait all the time.
      #
      while true
        socket = accept(server)
        #
        # In this loop we are reading command from the socket
        #
        while isopen(socket)
          try
            cmd = deserialize(socket)
            # TODO: remove this line
            println(cmd)
            #
            # This is how we drops the connection to terminal
            # TODO: stop command should be get from global config
            # TODO: remove produce from here.
            #
            if cmd.cmd == Config.connection["stopCmd"] break end
            runCommand(cmd, socket)
          catch e
            # TODO: may be log somewhere?
            break
          end
        end
        #
        # Closes previous socket and start waiting new connection
        #
        close(socket)
      end
    end
  end

  #
  # This is how we are paralleling green threads
  #
  # termTask = createTask()
  # while consume(termTask) != "stop" end
end