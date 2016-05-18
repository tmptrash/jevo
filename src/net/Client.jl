#
# TCP Client implementation. It works in pair with Server
# module. It also works in asynchronous way (like a server)
# and implements simple RPC-like logic. All you need to do is
# create a client, add listeners to EVENT_ANSWER event if needed
# and call request() method as many times as needed. The answer
# will be obtained through onAnswer() callback.
#
# It uses green threads (or coroutines) inside. See this link
# http://julia.readthedocs.org/en/latest/manual/control-flow/#man-tasks
# for more details regarding green threads. Comparing with
# server, it has only one place, where "magic" occures. It's
# request() method. It uses tasks for sending non blocking
# requests and obtaining answers (see @async macro in code).
# Every request creates one tasks
# TODO: describe server-to-client requests logic Nd EVENT_REQUEST event
#
# @author DeadbraiN
#
# See example below for details:
#
#     #
#     # This callback will be called as many times
#     # as many answers will be obtained from server.
#     #
#     function onAnswer(ans::Connection.Answer)
#       # do something with ans.data
#     end
#     #
#     # Creates the client and connects to server
#     #
#     connection = Client.create(ip"127.0.0.1", 2001)
#     #
#     # Starts to listen EVENT_ANSWER event
#     #
#     Event.on(connection.observer, EVENT_ANSWER, onAnswer)
#     #
#     # Makes a request to the server. An answer will
#     # be obtained in onAnswer() callback.
#     #
#     Client.request(connection, FUNCTION_ID, arg1, arg2)
#     #
#     # ...
#     #
#     Client.stop(conneciton)
#
# Events:
#     answer{Connection.Answer} Answer object with data
#           obtained from server. May be empty.
#
# @author DeadbraiN
#
module Client
  import Connection
  import Event
  import Helper

  export create
  export request
  export stop
  export isOk

  export EVENT_ANSWER
  export EVENT_REQUEST
  export ClientConnection
  #
  # Name of the event, which is fired if answer from server's
  # request is obtained.
  #
  const EVENT_ANSWER  = "answer"
  #
  # Name of the event, for requests from server to the client
  #
  const EVENT_REQUEST = "request"
  #
  # Describes one connected client. Contains socket and observer.
  #
  type ClientConnection
    sock    ::Base.TCPSocket
    observer::Event.Observer
  end
  #
  # Creates client and it's possibility to send requests to server.
  # In case of connection errors connection object will be created
  # in any case. You have to check this calling isopen() function.
  # Using zero port you may create "empty" connection. In fact,
  # client will not be created/started.
  # @param host Host we are connecting to
  # @param port Port number we are connecting to
  # @return Client connection object
  #
  function create(host::Base.IPAddr, port::Integer)
    local sock::Any = null
    local obs::Event.Observer = Event.create()

    if port > 0
      try
        sock = Base.connect(host, port)
        #
        # All "magic" occures here. This is how we start answers
        # handling. It listens clients responses all the time
        # using green thread (Task).
        #
        @async while _answer(sock, obs) end
      catch e
        Helper.warn("Client.create(): $e")
        if sock !== null close(sock) end
      end
      yield()
    end

    sock !== null ? Client.ClientConnection(sock, obs) : Client.ClientConnection(Base.TCPSocket(), obs)
  end
  #
  # Makes request to server. This method is not blocking. It returns
  # just after the call. Answer will be obtained in create() method
  # async loop.
  # @param con Connection object returned by create() method
  # @param fn Callback function id, which will be called if answer
  #           will be obtained from server.
  # @param args Custom fn arguments
  # @return true - request was sent, false wasn't
  #
  function request(con::Client.ClientConnection, fn::Integer, args...)
    try if !Helper.isopen(con.sock) return false end catch return false end
    #
    # This line is non blocking one
    #
    try
      serialize(con.sock, Connection.Command(fn, [i for i in args]))
    catch e
      Helper.warn("Client.request(): $e")
      close(con.sock)
      return false
    end

    true
  end
  #
  # Returns Socket state. true means - created and connected.
  # @param con Client connection state
  # @return {Bool}
  #
  function isOk(con::Client.ClientConnection)
    Helper.isopen(con.sock)
  end
  #
  # Closes client's socket. After this call, we have to call create()
  # method again, if we want to send another request...
  # @param con Client's connection object, returned by create()
  #
  function stop(con::Client.ClientConnection)
    try
      close(con.sock)
    catch e
      Helper.warn("Client.stop(): $e")
    end
  end
  #
  # Reads one command from server's socket and fires an event
  # to main code. After that, writes an answer into the socket
  # back.
  # @param sock Client's socket
  # @param obs Observer for firing an event to "parent" code
  #
  function _answer(sock::Base.TCPSocket, obs::Event.Observer)
    local data::Any = null

    try
      #
      # Right now, only two types of responses are supported:
      # answers after client request(Connection.Answer) and
      # server requests (Connection.Command).
      #
      data = deserialize(sock)
      if typeof(data) === Connection.Answer
        Event.fire(obs, EVENT_ANSWER, data)
      else
        local ans::Connection.Answer = Connection.Answer(null)
        Event.fire(obs, EVENT_REQUEST, data, ans)
        serialize(sock, ans)
      end
    catch e
      #
      # This exception means, that client has disconnected.
      # All other exceptions should be shown in terminal.
      #
      Helper.warn("Client has disconnected: $e")
      if sock !== null
        close(sock)
        return false
      end
    end

    true
  end
end
