#
# Multi connection server implementation. Works through TCP
# protocol for connection with clients. Fully asynchronous and
# one threaded. It implements RPC-similar logic, where clients
# may run functions with parameters on server and obtain results.
#
# It uses green threads (or coroutines) inside. See this link
# http://julia.readthedocs.org/en/latest/manual/control-flow/#man-tasks
# for details regarding coroutines. Because of green threads,
# it uses "magic" inside: there are two places in this module,
# where this magic happens. First place is some main code or 
# code, which creates the server and run it. It may be any 
# other module or code. Second place is internal server's event
# loop machine, which is used for accepting clients connections 
# and obtaining data (see @async macro in code). So, if you create
# a server with create() method, it will return Server's data 
# object imediately. Calling run() method it also returns control
# back at that moment, but in reality server starts to listen 
# clients in some loop (in our example this loop is out the run()
# code - in a parent code). After running, server creates one task 
# (green thread) per one connection. To run server out you have to 
# call yield() function in your (parent) code all the time.
# See example below for details:
#
#     #
#     # This callback function will be called as many times
#     # as server will obtain client's request (command)
#     #
#     function onCommand(cmd::Connection.Command, ans::Connection.Answer)
#       # This is how we create the answer for client.
#       # ans.data has type Any.
#       ans.data = "answer"
#     end
#     #
#     # Creation of server doesn't run it
#     #
#     connection = Server.create(ip"127.0.0.1", 2016)
#     #
#     # Before running we have to bind command event listeners
#     #
#     Event.on(connection.observer, Server.EVENT_COMMAND, onCommand)
#     #
#     # This is how our server run itself
#     #
#     Server.run(connection)
#
#     ...
#
#     #
#     # This is client's (parent) code, which was mentioned before
#     #
#     while <condition>
#       # ...your stuff is here...
#
#       #
#       # This call is used for switching between Tasks (green threads),
#       # checks new connections, obtaining commands from clients,...
#       yield()
#     end
#     ...
#     #
#     # This is how we stop our server
#     #
#     Server.stop(connection)
#
# You have two possibilities how to run main code: you may have 
# a loop (like in example above) or your code may wait for 
# connection in background (without blocking loop). For example,
# you may run this example in a REPL without infinite loop at the
# end. In this case, you don't need to call yield() manually.
# 
# Events:
#     command{Connection.Command, Connection.Answer} Fires if new 
#            command was obtained from client. Contains command
#            itself and special answer object, where you may set your
#            custom data.
#
# @author DeadbraiN
#
module Server
  import Event
  import Connection
  import Helper

  export create
  export run
  export stop
  export isOk
  export EVENT_COMMAND
  export ServerConnection
  #
  # Name of the event, which is fired if client sent us a command. If
  # this event fires, then specified command should be runned here - on
  # server side.
  #
  const EVENT_COMMAND = "command"
  #
  # Describes a server. It contains clients sockets, tasks, server object
  # and it's observer. 
  #
  type ServerConnection
    tasks   ::Array{Task}
    socks   ::Array{Base.TCPSocket}
    server  ::Base.TCPServer
    observer::Event.Observer
  end
  # 
  # Creates a server. Returns special server's data object, which identifies
  # this server and takes an ability to listen it events. It also contains
  # server's related tasks. See Server.ServerConnection type for
  # details. It doesn't run the server (use run() method for this), but
  # it start to listen specified host and port using Base.listen() method.
  # @param host Host we are listening to
  # @param port Port we are listening to
  # @return {Server.ServerConnection} Server's related data object
  #
  function create(host::Base.IPAddr, port::Integer)
    local tasks::Array{Task, 1} = Task[]
    local socks::Array{Base.TCPSocket, 1} = Base.TCPSocket[]
    local obs::Event.Observer = Event.create()

    try
      local server::Base.TCPServer = listen(host, port)
      return Server.ServerConnection(tasks, socks, server, obs)
    catch e
      Helper.warn("Server.create(): $e")
    end
    
    Server.ServerConnection(tasks, socks, Base.TCPServer(), obs)
  end
  #
  # Runs the server. Starts listening clients connections
  # and starts answering on requests. This method implements
  # main asynchronous client-server communication logic. Here
  # all green threads are used. See this link for details:
  # http://julia.readthedocs.org/en/latest/manual/control-flow/#man-tasks
  # Don't remember to call yield() in your main code (or loop).
  # It also calls _update() for removing closed connections
  # ans failed tasks.
  # @param con Server connection object returned by Server.create()
  # @return {Bool} Run status
  #
  function run(con::Server.ServerConnection)
    if !isOk(con)
      Helper.warn("Server.run(): Server wasn\'t created correctly. Try to change Server.create() arguments.")
      return false
    end

    @async begin
      while true
        try
          #
          # This line handles new connections
          #
          push!(con.socks, accept(con.server))
        catch e
          #
          # Possibly Server.stop() was called.
          #
          if isopen(con.server) === false
            local sock::Base.TCPSocket
            for sock in con.socks close(sock) end
            break
          end
          Helper.warn("Server.run(): $e")
        end
        sock = con.socks[length(con.socks)]
        push!(con.tasks, @async while isopen(sock)
          _answer(sock, con.observer)
          _update(con)
        end)
      end
    end
    #
    # This yield() prevents server from error:
    # ArgumentError("server not connected, make sure \"listen\" has been called")
    #
    yield()
    true
  end
  #
  # Returns server's state. true means - created and run.
  # @param con Client connection state
  # @return {Bool}
  #
  function isOk(con::Server.ServerConnection)
    try return isopen(con.server) end
    false
  end
  #
  # Stops the server. Stops listening all connections and drops
  # existing if exist.
  # @param con Server object returned by create() method.
  #
  function stop(con::Server.ServerConnection)
    try
      local sock::Base.TCPSocket
      for sock in con.socks close(sock) end
      close(con.server)
    catch e
      Helper.warn("Server.stop(): $e")
    end
  end
  #
  # This method should be called in main server's loop or code 
  # for removing stopped tasks and sockets (connections) between  
  # clients and this server. See an example at the beginning of 
  # this module for details.
  # @param con Connection object returned by create() method
  #
  function _update(con::Server.ServerConnection)
    i::Int = 1

    while i <= length(con.socks)
      if isopen(con.socks[i])
       	i += 1
      else
        deleteat!(con.socks, i)
        deleteat!(con.tasks, i)
      end
    end
  end
  #
  # Reads one command from client's socket and creates an answer 
  # object. After that, it fires an event to main code, where an
  # answer should be added to special Answer type. After that,
  # writes an answer into the socket back.
  # @param sock Client's socket
  # @param obs Observer for firing an event to "parent" code
  #
  function _answer(sock::Base.TCPSocket, obs::Event.Observer)
    ans = Connection.Answer(null)
    try
      Event.fire(obs, EVENT_COMMAND, deserialize(sock), ans)
      serialize(sock, ans)
    catch e
      #
      # This yield() updates sockets states
      #
      yield()
      if isa(e, EOFError)
        close(sock)
      elseif isopen(sock)
        Helper.warn("Server._answer(): $e")
      end
    end
  end
end