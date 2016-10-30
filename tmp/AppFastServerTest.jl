include("../src/global/ImportFolders.jl")

import Config
import Server
import Connection
import Event
import Helper

function onBeforeResponse(sock::Base.TCPSocket, data::Array{Any, 1}, ans::Connection.Answer)
  println("before-response\n", data)
  ans.id   = UInt8(1)
  ans.data = [UInt64(rand(1:300))]
end

function onAfterResponse(data::Array{Any, 1})
  println("after-response\n", data)
end

con = Server.create(ip"127.0.0.1", Config.val(:CONNECTION_SERVER_PORT), true)
Event.on(con.observer, Connection.EVENT_BEFORE_RESPONSE, onBeforeResponse)
Event.on(con.observer, Connection.EVENT_AFTER_REQUEST, onAfterResponse)
Server.run(con)
