#
# Calculates requests per second from client to server without response, but
# using only naked sockets.
# Results: rps: 8503.762913021008, time: 117.59500002861023
#
server = listen(2000)
sock   = accept(server)

function run()
  for i=1:1000000
    write(sock, Int8(1))
	write(sock, Int8(2))
	write(sock, Int8(3))
	write(sock, Int8(4))
    write(sock, Int8(5))
	write(sock, Int8(6))
	write(sock, Int8(7))
	write(sock, Int8(8))
	#write(sock, 1)
	#write(sock, UInt32(123))
  end
end
