#
# TODO: description
# TODO: describe that returned task is fully autonomyc. It's not needed
# TODO: to call it by consume() method.
# TODO: Events
#
module Server
  import Config
  import Event
  import Connection

  export ServerTask

  export creates

  #
  # Contains observer and the task for parallel work of this server's
  # socket and other synchronous objects.
  #
  type ServerTask
    #
    # The Task, which is used for parallel work
    #
    task::Task
    #
    # Observer instance, which is used for event based communication
    #
    observer::Event.Observer
  end

  # TODO: update comments
  # TODO: @param ...
  # It creates separate task for remote terminal. It waits a connection
  # from remote terminal on specified port by TCP/IP protocol. After 
  # terminal is connected, we wait for commands. After stop command
  # accures, we returns to the waiting loop. It Returns Task type 
  # instance, so we may parallel terminal connection and communication 
  # and other tasks like organisms scripts run.
  # @return {ServerTask}
  #
  function create(port::Uint16)
    #
    # This Observer will be used for event based communication between
    # this server and it's listeners (like Manager mosule)
    #
    observer = Event.Observer(Dict{ASCIIString, Array{Function}}())
    #
    # This task is used for parallel work between this server's socket
    # and other synchronous objects like Organism code or other sockets.
    #
    task = @async begin
      # TODO: port should may be different on different instances on
      # TODO: the same machine (with same IP address)
      server = listen(port)
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
            if cmd.cmd == Config.connection["stopCmd"] produce(cmd.cmd); break end
            #
            # This is remote command, some listener (handler) should run it
            # Type instance for retrieving answers from client
            #
            result = Connection.CommandAnswer(cmd.cmd, nothing)
            Event.fire(observer, "command", cmd, result)
            serialize(socket, result)
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
    #
    # This is function return
    #
    ServerTask(Task(rand), observer)
  end
end