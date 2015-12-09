tasks = Task[]
while true
  for i =1:100000
    push!(tasks, Task(eval(:(function f() produce(); produce() end))))
  end
  for i = 1:100000
    consume(tasks[i])
	consume(tasks[i])
	consume(tasks[i])
	#tasks[i].exception = "stop"
	#try
	#  yieldto(tasks[i])
	#end
  end
  tasks = Task[]
end