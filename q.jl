include("Manager.jl")
width  = Config.world["width"]
height = Config.world["height"]
#for i = 1:width * height / 2
  World.setEnergy(Manager._world, Helper.Point(1, 1), uint16(0xFF))
  World.setEnergy(Manager._world, Helper.Point(2, 1), uint16(0xFF))
  World.setEnergy(Manager._world, Helper.Point(3, 1), uint16(0xFF))
  
  World.setEnergy(Manager._world, Helper.Point(1, 3), uint16(0xFF))
  World.setEnergy(Manager._world, Helper.Point(2, 3), uint16(0xFF))
  World.setEnergy(Manager._world, Helper.Point(3, 3), uint16(0xFF))
#end
Manager.run()