# Server
tasks  = Task[]
socks  = Base.TcpSocket[]
server = listen(2001)
index  = 1

task = @async begin
	while true
	    push!(socks, accept(server))
	    index = length(socks)
	    push!(tasks, @async while isopen(socks[index])
			write(socks[index], readline(socks[index]))
	    end)
	    if !isopen(socks[index])
	    	deleteat!(tasks, index)
	    	deleteat!(socks, index)
	    end
	end
end

for i = 1:10
	consume(task)
	for t = 1:length(tasks)
		index = t
		consume(tasks[t])
	end
end



# Client
clientside=connect(2001)
@async while true
	write(STDOUT,readline(clientside))
end
println(clientside, "Hello World from the Echo Server")