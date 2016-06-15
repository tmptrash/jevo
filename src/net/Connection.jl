#
# Client/Server common declarations. Is used in Client, Server
# and parent code.
# TODO: describe this module as a glue between Client and Server modules
#
# @author DeadbraiN
#
module Connection
  import Helper
  import Event
  import FastApi

  using Debug

  export REQUEST_BIT
  export RESPONSE_BIT

  export EVENT_BEFORE_RESPONSE
  export EVENT_AFTER_REQUEST

  export Answer
  export Command
  export CMD_NO_FUNC

  export request
  export fastRequest
  export answer
  export fastAnswer
  export notEmpty
  #
  # First bit in fast requests, which shows if current request
  # is a request or response
  #
  const REQUEST_BIT       = UInt8(0b10000000)
  const RESPONSE_BIT      = UInt8(0b01111111)
  #
  # Name of the event, which is fired if answer from client's
  # request is obtained.
  #
  const EVENT_AFTER_REQUEST  = "after-response"
  #
  # Name of the event, which is fired if client sent us a command. If
  # this event fires, then specified command should be runned here - on
  # server side.
  #
  const EVENT_BEFORE_RESPONSE = "before-response"
  #
  # Stub if Command.fn is not set
  #
  const CMD_NO_FUNC       = 0

  #
  # This command is used for sending some data from client
  # to server. It contains from function (or command id) and
  # arguments. An answer will back in Answer type.
  #
  type Command
    fn::Int
    args::Array{Any, 1}
  end
  #
  # This typeis used for answering from Server to Clients.
  # data property contains Server response value.
  #
  type Answer
    id::Int
    data::Any
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
    if !Helper.isopen(sock) return false end
    try
      serialize(sock, Command(fn, [i for i in args]))
    catch e
      Helper.warn("Connection.request(): $e")
      #showerror(STDOUT, e, catch_backtrace())
      close(sock)
      return false
    end

    true
  end
  #
  # Fast version of request function. It uses native read()/write()
  # function for data transfer. This function is non blocking one.
  # TODO: describe dataIndex and data
  # @param sock Client socket returned by accept() function
  # @param dataIndex Index in api array
  # @param args Data to transfer in request
  #
  function fastRequest(sock::Base.TCPSocket, dataIndex::UInt8, args...)
    if !Helper.isopen(sock) return false end
    try
      #
      # This index will be used on client side for correct
      # reading of (data) parameters. First bit is used as
      # request bit.
      #
      _fastWrite(sock, dataIndex | REQUEST_BIT, args)
    catch e
      Helper.warn("Connection.fastRequest(): $e")
      #showerror(STDOUT, e, catch_backtrace())
      close(sock)
      return false
    end

    true
  end
  #
  # Reads one command from socket and fires an event to main
  # code. After that, writes an answer into the socket
  # back.
  # @param sock Socket
  # @param obs Observer for firing an event to "parent" code
  # @param excFn Callback function for socket exceptions
  #
  function answer(sock::Base.TCPSocket, obs::Event.Observer, excFn::Function)
    local data::Any = null
    local typ::DataType

    try
      #
      # Right now, only two types of responses are supported:
      # answers after client request(Answer) and
      # server requests (Command).
      #
      data = deserialize(sock)
      typ  = typeof(data)
      if typ === Answer
        Event.fire(obs, EVENT_AFTER_REQUEST, data)
      elseif typ === Command
        local ans::Answer = Answer(CMD_NO_FUNC, null)
        Event.fire(obs, EVENT_BEFORE_RESPONSE, sock, data, ans)
        if notEmpty(ans) serialize(sock, ans) end
      end
    catch e
      return excFn(sock, e)
    end

    true
  end
  #
  # This is fast version of server answer, because it uses native
  # read()/write() functions. It listens socket and reads header
  # byte, which consists of 8 bits. First bit is request/response
  # bit. Last 7 - data index value. Request/response bit means# that
  # this is request or response from client. For example: let's
  # imagin we have a request from server to client with a response
  # as an answer. In this case first bit in request from server to
  # client will be REQUEST_BIT, but back response will contain RESPONSE_BIT.
  # The same for client to server request. Input request will cantain
  # REQUEST_BIT, but response (from server to client) - RESPONSE_BIT.
  # @param sock Client's socket
  # @param obs Observer for firing an event to "parent" code
  # @param excFn Callback function for socket exceptions
  #
  function fastAnswer(sock::Base.TCPSocket, obs::Event.Observer, excFn::Function)
    local dataIndex::UInt8
    local isRequest::Bool

    try
      #
      # Right now, only two types of responses are supported:
      # answers after server request(REQUEST_BIT) and client
      # requests (RESPONSE_BIT).
      #
      isRequest = (dataIndex = read(sock, UInt8)) & REQUEST_BIT > 0
      dataIndex = dataIndex & RESPONSE_BIT
      if isRequest
        local ans::Answer = Answer(CMD_NO_FUNC, null)
        Event.fire(obs, EVENT_BEFORE_RESPONSE, sock, _fastRead(sock, dataIndex), ans)
        if notEmpty(ans) _fastWrite(sock, UInt8(ans.id) & RESPONSE_BIT, ans.data) end
      else
        Event.fire(obs, EVENT_AFTER_REQUEST, _fastRead(sock, dataIndex))
      end
    catch e
      return excFn(sock, e)
    end

    true
  end
  #
  # Reads data types from socket and returns them in array
  # @param sock socket
  # @param dataIndex Index of data in FastApi array
  # @return {Any} read data
  #
  function _fastRead(sock::Base.TCPSocket, dataIndex::UInt8)
    local types::Array{DataType, 1} = FastApi.getTypes()
    local data::Array{Any, 1} = Any[]
    local t::DataType

    if dataIndex < UInt8(1) || dataIndex > UInt(length(types)) error("Protocol error: invalid dataIndex header") end
    t = types[dataIndex]
    while t !== Void
      push!(data, t === ASCIIString ? readuntil(sock, '\x0')[1:end-1] : read(sock, t))
      t = types[(dataIndex += 1)]
    end

    data
  end
  #
  # Writes data in a socket in a fast way using native read()
  # and write() functions
  # TODO: arguments
  #
  function _fastWrite(sock::Base.TCPSocket, dataIndex::UInt8, data::Any)
    local vec::Vector{UInt8} = UInt8[dataIndex]

    for d::Any in data
      append!(vec, Helper.toBytes(d))
      #
      # Every string should be ended with '\x0' - zero character
      #
      if typeof(d) === ASCIIString append!(vec, '\x0') end
    end
    write(sock, vec)
  end
  #
  # Checks if answer is empty - wasn't modified in parent code.
  # @return {Bool} empty status
  #
  function notEmpty(ans::Answer)
    ans.id !== CMD_NO_FUNC || ans.data !== null
  end
end
