include("Manager.jl")

function run()
	width  = Config.world["width"]
	height = Config.world["height"]
	for i = 1:int(width * height / 4)
	  World.setEnergy(Manager._world, Helper.Point(rand(1:width), rand(1:height)), uint16(0xFF))
	end
	Manager.run()
end

run()