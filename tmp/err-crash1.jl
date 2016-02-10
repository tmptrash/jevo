push!(LOAD_PATH, "$(pwd())/src")
using Manager
using Debug

orgs = Creature.Organism[]
len  = 500

for i=1:len
  push!(orgs, Creature.create())
end


function run()
  local i::Int

  while true
    for i=1:len
      Mutator.mutate(orgs[i])
      orgs[i].codeFn = eval(orgs[i].code)
      try
        orgs[i].codeFn(orgs[i])
      catch e
      end
    end
  end
end