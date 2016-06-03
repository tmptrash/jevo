include("../src/ImportFolders.jl")

import Config
import Client
import Connection
import Event
import Helper

function _onAfterResponse(ans::Connection.Answer)
  #println("after-response\n", ans)
end
function _onBeforeResponse(data::Connection.Command, ans::Connection.Answer)
  ans.data = Array{Int, 1}(20)
  #println("before-response\n", data, ans)
end

con = Client.create(ip"127.0.0.1", Config.val(:CONNECTION_SERVER_PORT))
Event.on(con.observer, Client.EVENT_AFTER_RESPONSE, _onAfterResponse)
Event.on(con.observer, Client.EVENT_BEFORE_RESPONSE, _onBeforeResponse)
