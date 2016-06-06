#
# Calculates requests per second from client to server without response, but
# using only naked sockets.
# Results: rps: 29303.170665295427, time: 34.12599992752075
#
server = listen(2000)
sock   = accept(server)

function run()
  for i=1:1000000 serialize(sock, rand(1:100)) end
end
