#
# TCP Client implementation. It works in pair with Server
# module. It also works in asynchronous way (like a server)
# and implements simple RPC-like logic. All you need to do is
# create a client, add listeners to EVENT_AFTER_REQUEST event if needed
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
# TODO: describe server-to-client requests logic Nd EVENT_BEFORE_RESPONSE event
# TODO: describe fast mode
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
#     # Starts to listen EVENT_AFTER_REQUEST event
#     #
#     Event.on(connection.observer, EVENT_AFTER_REQUEST, onAnswer)
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
  import Event
  import Helper
  using Connection

  export create
  export request
  export stop
  export isOk

  export ClientConnection
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
  # @param fast Turns on serialization mode (slow speed mode).
  # @return Client connection object
  #
  function create(host::Base.IPAddr, port::Int, fast::Bool = false)
    local sock::Base.TCPSocket = Base.TCPSocket()
    local obs::Event.Observer = Event.create()

    if port > 0
      try
        sock = Base.connect(host, port)
        #
        # All "magic" occures here. This is how we start answers
        # handling. It listens clients responses all the time
        # using green thread (Task).
        #
        @async while (fast ? fastAnswer(sock, obs, _onAnswerException) : answer(sock, obs, _onAnswerException)) end
      catch e
        Helper.warn("Client.create(): $e")
        if Helper.isopen(sock) close(sock) end
      end
      yield()
    end

    Client.ClientConnection(sock, obs)
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
  function request(con::Client.ClientConnection, fn::Int, args...)
    Connection.request(con.sock, fn, args...)
  end
  #
  # Fast version of request function. It uses native read()/write()
  # function for data transfer. This function is non blocking one.
  # TODO: describe dataIndex and data
  # @param sock Client socket returned by accept() function
  # @param dataIndex Index in api array
  # @param args Data to transfer in request
  #
  function request(con::Client.ClientConnection, dataIndex::UInt8, args...)
    fastRequest(con.sock, dataIndex, args...)
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
      Helper.info("Client has stopped")
      yield()
    catch e
      Helper.warn("Client.stop(): $e")
    end
  end
  #
  # Shows warning message if socket throws an exception
  # TODO: arguments + return
  #
  function _onAnswerException(sock::Base.TCPSocket, e::Exception)
    #
    # This error means that client has disconnected
    #
    if !isa(e, EOFError)
      Helper.warn(string("Server._onAnswerException(): ", e))
    end
    if Helper.isopen(sock) close(sock) end

    false
  end
end
