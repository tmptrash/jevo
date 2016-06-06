#
# Calculates requests per second from client to server without response, but
# using only naked sockets.
# Results: 8705.114254624592, time: 114.875
#
server = listen(2000)
sock   = accept(server)

function run()
  for i=1:1000000 write(sock, 1) end
end
