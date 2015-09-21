include("Client.jl")

function onAnswer(ans::Connection.Answer)
  println(ans)
end

con = Client.create(ip"127.0.0.1", 2001)
Event.on(con.observer, "answer", onAnswer)
Client.request(con, rand, 2, 3)