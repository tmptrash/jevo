#
# Calculates requests per second from client to server without response, but
# using only naked sockets.
# Results: rps: 12498.437436072698, time: 8.001000165939331
#
type T
  x::Int
end
server = listen(2000)
sock   = accept(server)
function run()
  local t::T = T(rand(1:100))
  for i=1:100000 serialize(sock, t) end
end
