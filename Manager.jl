#
# Manages organisms and they world
# @singleton
# TODO:
#
module Manager
  import Organism
  import World
  import Config
  
  #
  # All available organisms
  #
  _organisms = Organism.Creature[]
  #
  # Instance of the world
  #
  _world = World.create()
end