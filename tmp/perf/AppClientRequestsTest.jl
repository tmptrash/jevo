include("../../src/ImportFolders.jl")

import Config
import Client
import Connection
import Event



# function afterResponse(ans::Connection.Answer)
# end
# function beforeResponse(i::Int, data::Connection.Command, ans::Connection.Answer)
#   ans.data = 1
#   global i::Int += 1
# end
# Event.on(con.observer, Client.EVENT_AFTER_RESPONSE, _onAfterResponse)
# Event.on(con.observer, Client.EVENT_BEFORE_RESPONSE, _onBeforeResponse)

global i = 1
global t = time()
global con = Client.create(ip"127.0.0.1", Config.val(:CONNECTION_SERVER_PORT))

function resp(data::Connection.Command, ans::Connection.Answer)
  global i
  global t
  global con

  if i::Int === 1 t::Float64 = time() end
  if i::Int === 100000
    t::Float64 = time() - t::Float64
    println("requests: ", i::Int / t::Float64, ", time: ", t::Float64)
  end
  i::Int += 1
end

Event.on(con.observer, Client.EVENT_BEFORE_RESPONSE, resp)
