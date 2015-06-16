include("Client.jl")
cl = Client.create(uint16(2000))
function f(ct, ans)
  println(ct)
  println(ans)
end
Event.on(cl.observer, "command", f)
Client.runCmd(cl, rand, 2,3)