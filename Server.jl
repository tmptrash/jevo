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
# where this magic hapens. First place is some main code or 
# code, which creates the server and run it. It may be any 
# other module or code. Second place is internal server's event
# loop machine, which is used for accepting clients connections 
# and obtaining data (see @async macro in code). So, if you create
# a server with create() method, it will return Server's data 
# object imediately. Calling run() method it also returns control
# back at that moment, but in reality resver starts to listen 
# clients. After running, server creates one task (green thread)
# per one connection. See example below for details:
#
# TODO: check if this example works!!!
#     # This callback function will be called as many times
#     # as server will obtain client's data (command)
#     function onCommand(cmd::Connection.Command, ans::Connection.Answer)
#       # This is how we create the answer for client.
#       # ans.data has type Any.
#       ans.data = "answer"
#     end
#     # Creation of server doesn't run it
#     connection = Server.create(ip"127.0.0.1", 2001)
#     # Before running we have to bind command event listeners
#     Event.on(connection.observer, EVENT_COMMAND, onCommand)
#     # This is how our server run itself
#     Server.run(connection)
#
#     ...
#
#     # This is client's code, which was mentioned before
#     while true
#       # ...your stuff is here...
#
#       # This call is used for switching between Tasks (green threads),
#       # to prevent server blocking if you have many Tasks
#       yield()
#     end
#     ...
#     # This is how we stop our server
#     Server.stop(connection)
#
# You have two possibilities how to run main code: you may have 
# a loop (like in example above) or your code may wait for 
# connection in background (without blocking loop). For example,
# you may run this example in a REPL without infinite loop at the
# end. In this case, you have to call yield() manually.
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

  export create
  export run
  export stop
  export EVENT_COMMAND
  #
  # Name of the event, which is used for our RPC like TCP protocol. If
  # this command fires, then specified command should be runned here, on
  # server side.
  #
  const EVENT_COMMAND = "command"
  # 
  # Creates a server. Returns special server's data object, which identifies
  # this server and takes an ability to listen it events. It also contains
  # server's related tasks. See Connection.ServerConnection type for
  # details. It doesn't run the server (use run() method for this), but
  # it start to listen specified host and port using Base.listen() method.
  # @param host Host we are listening to
  # @param port Port we are listening to
  # @return Server's related data object
  #
  function create(host::Base.IpAddr, port::Integer)
    Connection.ServerConnection(Task[], Base.TcpSocket[], listen(host, port), Event.create())
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
  #
  function run(con::Connection.ServerConnection)
    @async begin
      while true
        push!(con.socks, accept(con.server))
        sock = con.socks[length(con.socks)]
        push!(con.tasks, @async while isopen(sock) 
          _answer(sock, con.observer)
          _update(con)
        end)
      end
    end
  end
  #
  # Stops the server. Stops listening all connections and drops
  # existing if exist.
  # @param con Server object returned by create() method.
  #
  function stop(con::Connection.ServerConnection)
    close(con.server)
  end
  #
  # This method should be called in main server's loop or code 
  # for removing tasks and sockets (connections) between clients 
  # and this server. See an example at the beginning of this module 
  # for details.
  # @param con Connection object returned by create() method
  #
  function _update(con::Connection.ServerConnection)
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
  function _answer(sock::Base.TcpSocket, obs::Event.Observer)
    ans = Connection.Answer(null)
    Event.fire(obs, EVENT_COMMAND, deserialize(sock), ans)
    serialize(sock, ans)
  end
end