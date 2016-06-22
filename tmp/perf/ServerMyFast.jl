#
# Calculates requests per second from client to server without response
# Results: rps: 43796.25990550989, time: 22.83299994468689
#
include("../../src/ImportFolders.jl")

import Config
import Server
import Connection
import Event

function onBeforeResponse(sock::Base.TCPSocket, data::Array{Any, 1}, ans::Connection.Answer)
  for i=1:1000000 Server.request(sock, UInt8(7), UInt16(123), UInt16(342), UInt32(123456), UInt16(432)) end
end

con = Server.create(ip"127.0.0.1", Config.val(:CONNECTION_SERVER_PORT), true)
Event.on(con.observer, Connection.EVENT_BEFORE_RESPONSE, onBeforeResponse)
Server.run(con)
