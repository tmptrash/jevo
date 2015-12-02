push!(LOAD_PATH, pwd())
include("Server.jl")
using Config

function onRequest(cmd::Connection.Command, ans::Connection.Answer)
  println(cmd, ans)
  ans.data = "$(cmd.fn) answer"
end

con = Server.create(ip"127.0.0.1", Config.val(CONNECTION, SERVER_PORT))
Event.on(con.observer, Server.EVENT_COMMAND, onRequest)
Server.run(con)