module GcModule
	#import Creature
	#using Mutator
	
	export MyType
	
	type MyType
	    task::Task
	end
	
	function start(tasks::Array{MyType})
		len = 10000
		ex  = :(function f() 
                	#c = Creature.Organism[];
			#produce(c);
			#c = c[1];
			produce();
			produce();
		end)
		for i = 1:len
			#cr = Creature.create()
			t  = Task(eval(ex))

			#push!(consume(t), cr)
			consume(t)
			#for k = 1:1000 Mutator.mutate(cr.script, [1,0]) end
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
