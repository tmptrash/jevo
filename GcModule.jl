module GcModule
	import Creature
	using Mutator
	
	export MyType
	
	type MyType
	    task::Task
	end
	
	function test()
	    Task(eval(:(() -> true)))
	end
	function start(tasks::Array{MyType})
		len = 1
		for i = 1:len
			cr = Creature.create()
			t  = Task(eval(GcModule, :(function f() c = Creature.Organism[]; produce(c); c = c[1]; produce(); produce(); end)))

			push!(consume(t), cr)
			consume(t)
			for k = 1:1000000 Mutator.mutate(cr.script, [1,0]) end
			push!(tasks, MyType(t))
		end
		for i = 1:len
			tasks[i].task.exception = null
			try
			  yieldto(tasks[i].task)
			end
		end
		empty!(tasks)
		gc()
	end
end