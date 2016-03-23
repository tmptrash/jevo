include("../src/ImportFolders.jl")
using Manager
using Debug
using Helper

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
	    Helper.save(orgs[i], "code.jevo")
        orgs[i].codeFn(orgs[i])
      catch e
      end
    end
  end
end