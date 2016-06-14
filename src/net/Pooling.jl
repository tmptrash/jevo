#
# Module for requests pooling. Communication works through Client/
# Server modules. This module works in a simple way: first, you
# have to create Pooling data object by calling create() function.
# It returns PoolingData data object, which is used in all functions.
# create() doesn't start pooling. For this, you have to call start()
# function. To stop pooling, call stop().
#
# Events:
#     beforerequest Fired before every request. I used for setting
#                   parameters of request. e.g.: [RpcApi.RPC_GET_REGION,
#                   1, 1, 200, 150].
#     afterresponse Fired after every request. Passes answer object.
#
# Usage:
#     import Pooling
#
#     function onBeforeRequest(pObj::PoolingData)
#         push!(pObj.args, "arg1")
#         push!(pObj.args, "arg2")
#     end
#     function onAfterResponse(pObj::PoolingData, ans::Connection.Answer)
#         println(ans.data)
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
  import Event

  export create
  export start
  export stop
  export EVENT_BEFORE_REQUEST
  export EVENT_AFTER_REQUEST
  #
  # Name of the events, which are fired before and after each request.
  #
  const EVENT_BEFORE_REQUEST = "before-request"
  const EVENT_AFTER_REQUEST = "after-response"
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
  # @param pd Pooling data object. See create()
  # @param delay Delay between requests
  #
  function start(pd::PoolingData, delay::Int)
    pd.delay = delay
    pd.resp  = (ans::Connection.Answer) -> _onResponse(pd, ans)

    Event.on(pd.con.observer, Client.EVENT_AFTER_REQUEST, pd.resp)
    #
    # Here user should fill pd.args parameter. These arguments
    # will be passed to the remote server with request.
    #
    Event.fire(pd.obs, EVENT_BEFORE_REQUEST, pd)
    Client.request(pd.con, pd.args...)
  end
  #
  # Stops pooling and closes connection.
  # @param pd Pooling data object
  #
  function stop(pd::PoolingData)
    Event.off(pd.con.observer, Client.EVENT_AFTER_REQUEST, pd.resp)
    Client.stop(pd.con)
  end
  #
  # Handler of server answer
  # @param pd remote data for specified server
  # @param ans Answer object with custom data
  #
  function _onResponse(pd::PoolingData, ans::Connection.Answer)
    #
    # Here we pass response answer outside the Pooling module
    #
    Event.fire(pd.obs, EVENT_AFTER_REQUEST, pd, ans)
    sleep(pd.delay)
    #
    # Here user should fill pd.args parameter. These arguments
    # will be passed to the remote server with request.
    #
    Event.fire(pd.obs, EVENT_BEFORE_REQUEST, pd)
    Client.request(pd.con, pd.args...)
  end
end
