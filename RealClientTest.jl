include("RealClient.jl")

function onAnswer(ans::RealConnection.Answer)
  println(ans)
end

con = RealClient.create(ip"127.0.0.1", 2001)
Event.on(con.observer, "answer", onAnswer)
RealClient.request(con, rand, 2, 3)