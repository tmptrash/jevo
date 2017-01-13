include("../src/global/ImportFolders.jl")

import Config
import Client
import Connection
import Event
import Helper

function onBeforeResponse(sock::Base.TCPSocket, data::Array{Any ,1}, ans::Connection.Answer)
  println("before-response\n", data, ans)
  ans.id   = UInt8(1)
  ans.data = [UInt64(666)]
end

function onAfterResponse(data::Array{Any ,1})
  println("after-response\n", data)
end

con = Client.create(ip"127.0.0.1", Config.val(:conServerPort), true)
Event.on(con.observer, Connection.EVENT_BEFORE_RESPONSE, onBeforeResponse)
Event.on(con.observer, Connection.EVENT_AFTER_REQUEST, onAfterResponse)
