#
# Calculates requests per second from client to server without response
# Results: rps: 4553.17424843039, time: 219.6269998550415
#
include("../../src/ImportFolders.jl")

import Config
import Server
import Connection
import Event

function onBeforeResponse(sock::Base.TCPSocket, data::Array{Any, 1}, ans::Connection.Answer)
  for i=1:100000 Server.request(sock, UInt8(1), UInt64(1)) end
end

con = Server.create(ip"127.0.0.1", Config.val(:CONNECTION_SERVER_PORT), true)
Event.on(con.observer, Server.EVENT_BEFORE_RESPONSE, onBeforeResponse)
Server.run(con)
