#
# This module is a part of general and simple RPC-like logic. It's used for
# calling custom functions on server, by calling special Client function
# on Client side. It works above TCP\IP protocol.
# This module implements only Server logic. It's very simple. You need only 
# call Server.create() to create the server and provide port number for 
# listening for incoming Clients connections. After this call asynchronous 
# listener will be created. Every connection and later, imcoming commands,
# will be processed automatically. Running of the command it's not a server
# resposibility. If command occures, this module sends a "command" event.
# Client code (for "command" event) should run this command inside it's 
# behavior and put the result into CommandAnswer.data field. Read more in
# Client module...
# I have to note, that you don't need to call consume() for ConnectionObj.task,
# because Server uses @async macros, based on asynchronous event machine.
# It's possible to stop the server remotely by calling Client.runCmd() with
# Command(Config.connection["stopCmd"], []) parameter.
# 
# Usage:
#     using Server
#     #
#     # start to listen port 2000 on localhost
#     #
#     st = Server.create(uint16(2000))
#     #
#     # Will be calledif command comes from client
#     #
#     function f(cmd::Connection.Command, res::Connection.CommandAnswer)
#       #
#       # This is how we runs the command with arguments
#       # and saves the result to special result type
#       #
#       res.data = apply(eval(symbol(cmd.cmd)), cmd.args)
#     end
#     #
#     # Our code starts to listen "command" event
#     #
#     Event.on(st.observer, "command", f)
#
# Events:
#     command Is fires if new command comes from client.
#
module Server
  import Config
  import Event
  import Connection

  export create

  #
  # It creates new TCP\IP server, waits a connection from clients on 
  # specified port. After client is connected, it waits for command. 
  # After stop command occures, we returns to the connection waiting 
  # loop. It Returns ConnectionObj type instance, so we may parallel 
  # server listening and other tasks like organisms scripts run.
  # @param port Port number for incoming connection listening
  # @return {Connection.ConnectionObj}
  #
  function create(port::Uint16)
    #
    # This Observer will be used for event based communication between
    # this server and it's listeners (like Manager mosule)
    #
    observer = Event.create()
    #
    # Server's secket. Is used for data transfer/receive
    #
    socket   = nothing
    #
    # This task is used for parallel work between this server's socket
    # and other synchronous objects like Organism code or other sockets.
    #
    @async begin
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
            #
            # This is how we drops the connection
            #
            if cmd.cmd == Config.connection["stopCmd"] break end
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
    Connection.ConnectionObj(socket, observer)
  end
end