import Manager
import Helper
using Config

function run()
    width  = Config.val(WORLD, WIDTH)
    height = Config.val(WORLD, HEIGHT)
    for i = 1:Int(width * height / 4)
        World.setEnergy(Manager._world, Helper.Point(rand(1:width), rand(1:height)), UInt16(0xFF))
    end
    Manager.run()
end

function runTest()
    #
    # EEE
    #  O
    # EEE
    #
    # E - energy block
    # O - organism
    #
    World.setEnergy(Manager._world, Helper.Point(1, 1), UInt16(0xFF))
    World.setEnergy(Manager._world, Helper.Point(2, 1), UInt16(0xFF))
    World.setEnergy(Manager._world, Helper.Point(3, 1), UInt16(0xFF))

    World.setEnergy(Manager._world, Helper.Point(1, 3), UInt16(0xFF))
    World.setEnergy(Manager._world, Helper.Point(2, 3), UInt16(0xFF))
    World.setEnergy(Manager._world, Helper.Point(3, 3), UInt16(0xFF))

    #
    # this is s hack. We override configs for tests,
    # to prevent creation of organisms inside Manager.run().
    #
    Config.val(ORGANISM, START_AMOUNT, UInt(0))
    Config.val(ORGANISM, DECREASE_AFTER_TIMES, UInt(100))

    Manager._createTask(Helper.Point(2, 2))
    Manager.run()
end

runTest()