module Test
  using Debug

  type Organism
    code::Expr
    codeFn::Function
  end
  type OrganismTask
    task::Task
    organism::Organism
  end

  tasks = OrganismTask[]

  function born(o::Organism)
    return function ()
      while true
        produce()
        o.codeFn(o)
      end
    end
  end

  function run()
    for i=1:5000
      org  = Organism(:(function (o) local i::Int=1; function f() return i end; return f()+1 end), function (o) return 1 end)
      task = Task(born(org))
      push!(tasks, OrganismTask(task, org))
    end

    while true
      for i=1:5000
        consume(tasks[i].task)

        if rand(1:10000) === 1
          #tasks[i].organism.code.args[2].args[2] = :(return $i)
          tasks[i].organism.codeFn = eval(tasks[i].organism.code)
        end
      end

      if rand(1:10000) === 1
        id = rand(1:5000)
        try Base.throwto(tasks[id].task, null) end
        splice!(tasks, id)

        org  = Organism(:(function (o) local i::Int=1; function f() return i end; return f()+1 end), function (o) return 1 end)
        task = Task(born(org))
        push!(tasks, OrganismTask(task, org))
      end
    end
  end
end