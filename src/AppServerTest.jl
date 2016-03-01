#
# TODO:
#
include("RemoteWorld.jl")

import Config
import Server
import Connection

function onRequest(cmd::Connection.Command, ans::Connection.Answer)
  println(cmd)
  ans.data = "$(cmd.fn) answer"
end

con = Server.create(ip"127.0.0.1", Config.val(:CONNECTION_SERVER_PORT))
Event.on(con.observer, Server.EVENT_COMMAND, onRequest)
Server.run(con)