include("../src/global/ImportFolders.jl")

import Config
import Client
import Connection
import Event
import Helper

function _onAfterResponse(ans::Connection.Answer)
  println("after-response\n", ans)
end
function _onBeforeResponse(data::Connection.Command, ans::Connection.Answer)
  ans.data = Array{Int, 1}(2)
  println("before-response\n", data, ans)
end

con = Client.create(ip"127.0.0.1", Config.val(:conServerPort))
Event.on(con.observer, Connection.EVENT_AFTER_REQUEST, _onAfterResponse)
Event.on(con.observer, Connection.EVENT_BEFORE_RESPONSE, _onBeforeResponse)
