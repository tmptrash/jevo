#
# Calculates requests per second from client to server without response, but
# using only naked sockets.
# Results: rps: 26434.047105914822, time: 37.829999923706055
#
server = listen(2000)
sock   = accept(server)

function run()
  for i=1:1000000 serialize(sock, rand(1:100)) end
end
