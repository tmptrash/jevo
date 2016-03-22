#
# Module for requests pooling. Communication works through Client/
# Server modules. This module works in a simple way: first, you 
# have to create Pooling data object by calling create() function.
# It returns PoolingData data object, which is used in all functions.
# create() doesn't start pooling. For this, you have to call start() 
# function. To stop pooling, call stop().
#
# Usage:
#     import Pooling
#
#     function onBeforeRequest(pObj::PoolingData)
#         push!(pObj.args, "arg1")
#         push!(pObj.args, "arg2")
#     end
#
#     p = Pooling.create(ip"127.0.0.1", 2000)
#     Event.on(p.obs, "beforerequest", onBeforeRequest)
#     Pooling.start(p)
#     ...
#     Pooling.stop(p)
#
# @author DeadbraiN
#
module Pooling
  import Event
  import Connection
  import Client
  import Config
  import Event

  export create
  export start
  export stop
  #
  # Contains pooling data. Is used in all functions as 
  # first parameter.
  #
  type PoolingData
    con::Client.ClientConnection
    obs::Event.Observer
    args::Array{Any, 1}
    resp::Function
    delay::Int

    PoolingData(con::Client.ClientConnection, obs::Event.Observer, args::Array{Any, 1}) = new(con, obs, args)
  end
  #
  # Creates connection with remote host. To start pooliing
  # call start() function.
  # @param host Remote host we are connecting to
  # @param port Remote port we are connecting to
  # @return {PoolingData|false}
  #
  function create(host::Base.IPAddr, port::Integer)
    con = Client.create(host, port)
    Client.isOk(con) ? PoolingData(con, Event.create(), Array{Any, 1}()) : false
  end
  #
  # Start pooling process. It makes requests to remote server.
  # @param rd Remote world data object. See create()
  # @param delay Delay between requests
  #
  function start(rd::PoolingData, delay::Int = Config.val(:WORLD_FRAME_DELAY))
    rd.delay = delay
    rd.resp  = (ans::Connection.Answer) -> _onResponse(rd, ans)

    Event.on(rd.con.observer, Client.EVENT_ANSWER, rd.resp)
    #
    # Here user should fill rd.args parameter. These arguments
    # will be passed to the remote server with request.
    #
    Event.fire(rd.obs, "beforerequest", rd)
    Client.request(rd.con, rd.args...)
  end
  #
  # Stops pooling and closes connection.
  # @param rd Remote world data object
  #
  function stop(rd::RemoteData)
    Event.off(rd.con.observer, Client.EVENT_ANSWER, rd.resp)
    Client.stop(rd.con)
  end
  #
  # Handler of server answer
  # @param rd remote data for specified server
  # @param ans Answer object with region data
  #
  function _onResponse(rd::RemoteData, ans::Connection.Answer)
    sleep(rd.delay)
    #
    # Here user should fill rd.args parameter. These arguments
    # will be passed to the remote server with request.
    #
    Event.fire(rd.obs, "beforerequest", rd)
    Client.request(rd.con, rd.args...)
  end
end