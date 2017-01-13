#
# Calculates requests per second from client to server without response
# Results: rps: 4553.17424843039, time: 219.6269998550415
#
include("../../src/global/ImportFolders.jl")

import Config
import Server
import Connection
import Event

function onBeforeResponse(sock::Base.TCPSocket, cmd::Connection.Command, ans::Connection.Answer)
  for i=1:1000000 Server.request(sock, 1) end
end

con = Server.create(ip"127.0.0.1", Config.val(:conServerPort))
Event.on(con.observer, Connection.EVENT_BEFORE_RESPONSE, onBeforeResponse)
Server.run(con)
