include("Client.jl")
ct = Client.create(uint16(2000))
function f(ct, ans)
  println(ct)
  println(ans)
end
Event.on(ct.observer, "command", f)
Client.runCmd(ct, rand, 2,3)