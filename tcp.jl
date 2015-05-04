#
# Runs one command obtained from remote terminal
# @param cmd Raw string command
# @param sock Socket
#
function runCommand(cmd::ASCIIString, sock::TcpSocket)
  write(sock, string(eval(parse(val))))
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
function createTerminalTask()
  @async begin
    server = listen(2000) # TODO: port should be get from config
    #
    # In this loop we are waiting for terminal connection.
    # We have to wait all the time.
    #
    while true
      sock = accept(server)
      #
      # In this loop we are reading command from the socket
      #
      while true
        try
          val = readavailable(sock)
          # TODO: remove this line
          println(val)
          # TODO: rewtire this to some structure (Type)
          if typeof(val) === ASCIIString
            #
            # This is how we drops the connection to terminal
            # TODO: stop command should be get from global config
            #
            if val == "stop"
              #
              # Leaves this loop and start to wait new connec
              #
              break
            end
            runCommand(val, sock)
          end
        catch e
          # TODO: may be log somewhere?
          break
        end
      end
      #
      # Closes previous socket and start waiting new connection
      #
      close(sock)
    end
  end
end


termTask = createTerminalTask()
while consume(termTask) !== "stop" end