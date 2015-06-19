import Manager
import Helper
using  Debug

function run()
    width  = Config.world["width"]
    height = Config.world["height"]
    for i = 1:int(width * height / 4)
        World.setEnergy(Manager._world, Helper.Point(rand(1:width), rand(1:height)), uint16(0xFF))
    end
    Manager.run()
end

@debug function runTest()
@bp
    width  = 3
    height = 3

    World.setEnergy(Manager._world, Helper.Point(1, 1), uint16(0xFF))
    World.setEnergy(Manager._world, Helper.Point(2, 1), uint16(0xFF))
    World.setEnergy(Manager._world, Helper.Point(3, 1), uint16(0xFF))

    World.setEnergy(Manager._world, Helper.Point(1, 2), uint16(0xFF))
    World.setEnergy(Manager._world, Helper.Point(3, 2), uint16(0xFF))

    World.setEnergy(Manager._world, Helper.Point(1, 3), uint16(0xFF))
    World.setEnergy(Manager._world, Helper.Point(2, 3), uint16(0xFF))
    World.setEnergy(Manager._world, Helper.Point(3, 3), uint16(0xFF))

    #
    # this is s hack. We override configs for tests
    #
    Config.organism["startAmount"] = 0

    Manager._createTask(Helper.Point(2, 2))
    Manager.run()
end

runTest()