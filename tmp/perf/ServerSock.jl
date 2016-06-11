#
# Calculates requests per second from client to server without response, but
# using only naked sockets.
# Results: rps: 20785.69948410947, time: 48.109999895095825
#
server = listen(2000)
sock   = accept(server)

function run()
  for i=1:1000000
    write(sock, UInt8(1))
    write(sock, Int(1))
  end
end
