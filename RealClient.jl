#
# TCP Client implementation. It works in pair with RealServer 
# module. It also works in asynchronous way (like a server) 
# and implements simple RPC-like logic. All you need to do is
# create a client, add listeners to "answer" event if needed 
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
# 
# See example below for details:
#
# TODO: check if this example work!!!
#     # This callback will be called as many times
#     # as many answers will be obtained from server.
#     function onAnswer(ans::RealConnection.Answer)
#       # do something with answer
#     end
#
#     # Creates the client and connects to server
#     connection = RealClient.create(ip"127.0.0.1", 2001)
#     # Starts to listen "answer" event
#     Event.on(connection.observer, "answer", onAnswer)
#     # Makes a request to the server. An answer will
#     # be obtained in onAnswer() callback.
#     RealClient.request(connection, rand, 2, 3)
#
# Events:
#     answer{RealConnection.Answer} Answer object with data
#           obtained from server. May be empty.
# 
# @author DeadbraiN
# 
module RealClient
  import RealConnection
  import Event

  #
  # TODO: describe possibility to throw an exeption
  #
  function create(host::Base.IpAddr, port::Integer)
    local sock::Base.TcpSocket
    local obs = Event.create()

    try
      sock = Base.connect(host, port)
      #
      # All "magic" occures here. This is how we start answers
      # handling. It listens clients responses all the time
      # using green thread (Task).
      #
      @async while true
        Event.fire(obs, "answer", deserialize(sock))
      end
    catch e
      # TODO: what to do with e?
      close(sock)
    end

    RealConnection.ClientConnection(sock, obs)
  end
  #
  # TODO: describe asynchronous logic of this method
  # @return true - request was sent, false wasn't
  #
  function request(con::RealConnection.ClientConnection, fn::Function, args...)
    if !isopen(con.sock) return false end
    #
    # This line is non blocking one
    #
    serialize(con.sock, RealConnection.Command(fn, [i for i in args]))
    #
    # TODO: i don't really know if julia GC removes this tasks
    # TODO: after closing the connection. Need to check this...
    #
    # @async begin
    #   serialize(con.sock, RealConnection.Command(fn, [i for i in args]))
    #   Event.fire(con.observer, "answer", deserialize(con.sock))
    # end

    return true
  end
  #
  # Closes client's socket. After this call, we have to call create()
  # method again, if we want to send another request...
  # @param con Client's connection object, returned by create()
  #
  function stop(con::RealConnection.ClientConnection)
    close(con.sock)
  end
end