#
# Calculates requests per second from client to server without response
# Results: rps: 3480.803387211916, time: 28.728999853134155
#
include("../../src/ImportFolders.jl")

import Config
import Server
import Connection
import Event

function onBeforeResponse(sock::Base.TCPSocket, cmd::Connection.Command, ans::Connection.Answer)
  for i=1:100000 Server.request(sock, 1) end
end

con = Server.create(ip"127.0.0.1", Config.val(:CONNECTION_SERVER_PORT))
Event.on(con.observer, Server.EVENT_BEFORE_RESPONSE, onBeforeResponse)
Event.on(con.observer, Server.EVENT_AFTER_RESPONSE, onAfterResponse)
Server.run(con)
