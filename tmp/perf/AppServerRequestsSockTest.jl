#
# Calculates requests per second from client to server without response, but
# using only naked sockets.
# Results: rps: 23705.10848302518, time: 42.18499994277954
#
server = listen(2000)
sock   = accept(server)

function run()
  for i=1:1000000 write(sock, 1) end
end
