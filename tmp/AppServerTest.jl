include("../src/global/ImportFolders.jl")

import Config
import Server
import Connection
import Event
import Helper

function onBeforeResponse(sock::Base.TCPSocket, cmd::Connection.Command, ans::Connection.Answer)
  println("before-response\n", cmd)
  ans.data = rand(1:300)
  #for i = 1:1000 Server.request(sock, 1, Helper.Point(rand(1:200), rand(1:200))) end
end

function onAfterResponse(ans::Connection.Answer)
  println("after-serponse\n", ans)
end

con = Server.create(ip"127.0.0.1", Config.val(:CONNECTION_SERVER_PORT))
Event.on(con.observer, Connection.EVENT_BEFORE_RESPONSE, onBeforeResponse)
Event.on(con.observer, Connection.EVENT_AFTER_REQUEST, onAfterResponse)
Server.run(con)
