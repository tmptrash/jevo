include("Server.jl")
st = Server.create(uint16(2000))
function f(cmd, res)
  res.data = apply(cmd.cmd, cmd.args)
  println(res)
end
Event.on(st.observer, "command", f)