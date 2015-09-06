# TODO:
#module RealClient
  socket = connect(2001)
  serialize(socket, cmd)
  ans = deserialize(socket)
  println(ans)
#end


socket=connect(2001)
@async while true write(STDOUT,readline(socket)) end
println(socket,"message")