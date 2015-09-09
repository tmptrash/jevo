include("RealServer.jl")

function onRequest(cmd::RealConnection.Command, ans::RealConnection.Answer)
  println(cmd, ans)
  ans.data = "answer"
end

con = RealServer.create(ip"127.0.0.1", 2001)
Event.on(con.observer, "command", onRequest)
RealServer.run(con)