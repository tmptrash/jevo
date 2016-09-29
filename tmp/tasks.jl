function f()
 while true
   yieldto(t)
 end
end

function main()
	local a::Array{Task, 1} = Task[]
	local t::Task = current_task()
	local i::Int
	local tt::Task
	local len::Int = 400

	for i = 1:len push!(a, Task(f)) end
	for tt in a yieldto(tt) end
	@time for i = 1:5200 for tt in a yieldto(tt) end end
end

main()