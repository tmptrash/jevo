include("Server.jl")

function onRequest(cmd::Connection.Command, ans::Connection.Answer)
  println(cmd, ans)
  ans.data = "answer"
end

con = Server.create(ip"127.0.0.1", 2001)
Event.on(con.observer, "command", onRequest)
Server.run(con)