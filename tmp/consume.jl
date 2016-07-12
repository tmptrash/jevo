type T
  f::Function
  inF::Function
  t::Task
  T(f) = new(f)
end

function main()
	amount = 2
	tasks  = T[]
	for i = 1:amount
	  t     = T(function(t) function() while true produce(); t.inF() end end end)
	  t.inF = function() produce(); produce(); produce() end
	  t.t   = Task(t.f(t))
	  push!(tasks, t)
	end

	while true
	  for i = 1:amount
	    t = tasks[i]
		if rand(1:5) == 3
		  t.inF = eval(:(function() produce(); produce(); produce() end))
		end
		consume(t.t)
	  end
	end
end

@profile main()


#g:\my\projects\jevo>julia tmp\\consume.jl
#failed to get context from main thread. aborting profiling.