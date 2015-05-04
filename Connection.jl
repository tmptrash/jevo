module Connection
  import Config

  export readCommand
  export runCommand
  export createTask

  #
  # Type of one command. One command consists of total lenght, command
  # string and custom arguments. Arguments may be any type. Every argument
  # consists of type and value. For example, take a look on run command
  # with two arguments ("param"::ASCIIString, 123::Uint32):
  #
  #   data : 00000010 03  72756E 00  05  706172616D 01   0000007B
  #   name : total    len cmd    str len arg1       ui32 arg2
  #   value: 16       3   "run"  0   5   "param"    1    123
  #
  type Command
    #
    # Total command length (cmd+args) 4b
    #
    total::Uint32
    #
    # Name of the command
    #
    cmd::ASCIIString
    #
    # Command arguments
    #
    args::Array{Any}
  end

  #
  # Reads one command from socket and return commands data. Every command
  # consists of length(4bytes) and data(length bytes) -> llllddddddddd....
  # For example: 0000000401020304 -> means 4 bytes of data (01020304)
  # @param socket Socket to read
  # @return {Command} Array of data bytes
  #
  function readCommand(socket)
    total = readbytes(socket, sizeof(Uint32))
    data  = readbytes(socket, total) 
    Command(total, data)
  end
  #
  # Runs one command obtained from remote terminal
  # @param cmd Raw string command
  # @param socket Socket
  #
  function runCommand(cmd::ASCIIString, socket)
    write(socket, string(eval(parse(cmd))))
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
      server = listen(2000) # TODO: port should be get from config
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
            cmp = readCommand(socket) #readavailable(socket)
            # TODO: remove this line
            println(val)
            val = convert(ASCIIString, cmd.data)
            #
            # This is how we drops the connection to terminal
            # TODO: stop command should be get from global config
            # TODO: remove produce from here.
            #
            if val == "stop" produce("stop"); break end
            runCommand(val, socket)
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