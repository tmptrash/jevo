# Client
clientside=connect(2001)
@async while true
	write(STDOUT,readline(clientside))
end
println(clientside, "Hello World from the Echo Server")