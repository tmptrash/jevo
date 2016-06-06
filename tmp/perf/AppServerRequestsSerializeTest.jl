#
# Calculates requests per second from client to server without response, but
# using only naked sockets.
# Results: rps: 8862.969626902743, time: 112.8289999961853
#
type T
  x::Int
  y::Int
  c::UInt32
end
server = listen(2000)
sock   = accept(server)
function run()
  local t::T = T(rand(1:100), rand(1:100), UInt32(1234))
  for i=1:1000000 serialize(sock, t) end
end
