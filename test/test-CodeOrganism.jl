#
# Tests for Organism related functions like lookAt(), toMem(),...
#
module TestCodeOrganism
  using FactCheck
  import Code
  import Creature
  import Helper
  import Mutator
  import Config
  import World
  include("Helper.jl")
  #
  # lookAt
  #
  facts("Testing lookAt()") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}())
    local org = d.orgs[1]

    code(d, :lookAt, org)
    @fact length(Helper.getLines(org.code, [2])) --> Creature.VARS_AMOUNT + 2
    @fact Helper.getArg(org.code, [2,Creature.VARS_AMOUNT + 1,2,2,1]) --> :(Creature.getEnergy)
    @fact Code.eval(org.code)(d.cfg, org) --> true

    Manager.destroy(d.man)
  end
  facts("Testing if lookAt() works") do
    local d = create([Helper.Point(1,1)], Dict{Symbol, Any}(:worldWidth=>2, :worldHeight=>2))
    local org = d.orgs[1]

    World.setEnergy(d.man.world, Helper.Point(2,2), UInt32(123))
    @fact World.getEnergy(d.man.world, Helper.Point(2,2)) --> UInt32(123)
    @fact Creature.getEnergy(org, 2, 2) --> UInt32(123)
    @fact Code.eval(org.code)(d.cfg, org) --> true

    Manager.destroy(d.man)
  end
end
