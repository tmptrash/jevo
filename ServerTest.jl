include("Server.jl")

function onRequest(cmd::Connection.Command, ans::Connection.Answer)
  println(cmd, ans)
  ans.data = "$(cmd.fn) answer"
end

con = Server.create(ip"127.0.0.1", 2000)
Event.on(con.observer, Server.EVENT_COMMAND, onRequest)
Server.run(con)