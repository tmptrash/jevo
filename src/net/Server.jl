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
#     function onCommand(sock::Base.TCPSocket, cmd::Connection.Command, ans::Connection.Answer)
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
#     Event.on(connection.observer, Connection.EVENT_BEFORE_RESPONSE, onCommand)
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
# TODO: add EVENT_AFTER_REQUEST logic description
# TODO: add description of fast part of this module
module Server
  import Config.@if_debug
  import Event
  import Helper
  using Connection

  export create
  export run
  export stop
  export isOk
  export ServerConnection
  #
  # Describes a server. It contains clients sockets, tasks, server object
  # and it's observer.
  #
  type ServerConnection
    tasks   ::Array{Task, 1}
    socks   ::Array{Base.TCPSocket, 1}
    server  ::Base.TCPServer
    observer::Event.Observer
    host    ::Base.IPAddr
    port    ::Int
    fast    ::Bool
  end
  #
  # Creates a server. Returns special server's data object, which identifies
  # this server and takes an ability to listen it events. It also contains
  # server's related tasks. See Server.ServerConnection type for
  # details. It doesn't run the server (use run() method for this), but
  # it start to listen specified host and port using Base.listen() method.
  # Setting port to zero you may create "empty" connection. In fact, in
  # this case, server will not be created and will not work.
  # @param host Host we are listening to
  # @param port Port we are listening to
  # @param fast Turns on serialization mode (slow speed mode).
  # @return {Server.ServerConnection} Server's related data object
  #
  function create(host::Base.IPAddr, port::Int, fast::Bool = false)
    local tasks::Array{Task, 1} = Task[]
    local socks::Array{Base.TCPSocket, 1} = Base.TCPSocket[]
    local obs::Event.Observer = Event.create()
    local con::ServerConnection

    if port > 0
      try
        local server::Base.TCPServer = listen(host, port)
        con = ServerConnection(tasks, socks, server, obs, host, port, fast)
        Helper.info(string(fast ? "Fast" : "Slow", " Server created on ", con.host, ":", con.port))
        return con
      catch e
        Helper.warn("Server.create(): $e")
        @if_debug showerror(STDOUT, e, catch_backtrace())
      end
    end

    ServerConnection(tasks, socks, Base.TCPServer(), obs, host, port, fast)
  end
  #
  # Runs the server. Starts listening clients connections
  # and starts answering on requests. This method implements
  # main asynchronous client-server communication logic. Here
  # all green threads are used. See this link for details:
  # http://julia.readthedocs.org/en/latest/manual/control-flow/#man-tasks
  # Don't remember to call yield() in your main code (or loop).
  # It also calls _update() for removing closed connections
  # ans failed tasks. It means that
  # serialize()/deserialize() functions will be used for sending and
  # receiving data. Otherwise native read()/write() functions will be
  # used.
  # @param con Server connection object returned by Server.create()
  # @return {Bool} Run status
  #
  function run(con::Server.ServerConnection)
    if !isOk(con)
      Helper.warn("Server.run(): Server wasn\'t created correctly. Try to change Server.create() arguments.")
      return false
    end

    Helper.info(string(con.fast ? "Fast" : "Slow", " server has run on ", con.host, ":", con.port))
    @async begin
      while true
        try
          #
          # This line handles new connections
          #
          local sock::Base.TCPSocket = accept(con.server)
          push!(con.socks, sock)
        catch e
          @if_debug showerror(STDOUT, e, catch_backtrace())
          #
          # Possibly Server.stop() was called.
          #
          if !isOk(con) _close(con); break end
          Helper.warn("Server.run(): $e")
        end
        push!(con.tasks, @async while Helper.isopen(sock)
          yield()
          con.fast ? fastAnswer(sock, con.observer, _onAnswerException) : answer(sock, con.observer, _onAnswerException)
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
  # Makes request to client. This method is not blocking. It returns
  # just after the call. Answer will be obtained in run() method
  # async loop.
  # @param sock Client socket returned by accept() function
  # @param fn Remote function id
  # @param args Custom fn arguments
  # @return true - request was sent, false wasn't
  #
  function request(sock::Base.TCPSocket, fn::Int, args...)
    Connection.request(sock, fn, args...)
  end
  #
  # Fast version of request function. It uses native read()/write()
  # function for data transfer. This function is non blocking one.
  # TODO: describe dataIndex and data
  # @param sock Client socket returned by accept() function
  # @param dataIndex Index in api array
  # @param args Data to transfer in request
  #
  function request(sock::Base.TCPSocket, dataIndex::UInt8, args...)
    fastRequest(sock, dataIndex, args...)
  end
  #
  # Returns server's state. true means - created and run.
  # @param con Client connection state
  # @return {Bool}
  #
  function isOk(con::Server.ServerConnection)
    Helper.isopen(con.server)
  end
  #
  # Stops the server. Stops listening all connections and drops
  # existing if exist.
  # @param con Server object returned by create() method.
  #
  function stop(con::Server.ServerConnection)
    try
      _close(con)
      Helper.info(string("Server has stopped: ", con.host, ":", con.port))
    catch e
      Helper.warn("Server.stop(): $e")
      @if_debug showerror(STDOUT, e, catch_backtrace())
    finally
      yield()
    end
  end

  #
  # Closes all available clients connections and server's one
  # @param con Server object returned by create() method.
  #
  function _close(con::Server.ServerConnection)
    for i::Int = 1:length(con.socks)
      close(con.socks[i])
      yield()
    end
    close(con.server)
    yield()
  end
  #
  # This method should be called in main server's loop or outside
  # code for removing stopped tasks and sockets (connections)
  # between clients and this server. See an example at the beginning
  # of this module for details.
  # @param con Connection object returned by create() method
  #
  function _update(con::Server.ServerConnection)
    i::Int = 1

    while i <= length(con.socks)
      if Helper.isopen(con.socks[i])
       	i += 1
      else
        deleteat!(con.socks, i)
        deleteat!(con.tasks, i)
      end
    end
  end
  #
  # Is called when answer() or fastAnswer() catch network
  # related exception
  # @param sock Client's socket we are working with
  # @param e Exception object
  # @return true Always true
  #
  function _onAnswerException(sock::Base.TCPSocket, e::Exception)
    #
    # This error means that client has disconnected
    #
    if isa(e, EOFError)
      Helper.info("Client has disconnected")
    else
      Helper.warn(string("Server._onAnswerException(): ", e))
    end
    if Helper.isopen(sock) close(sock) end

    true
  end
end
