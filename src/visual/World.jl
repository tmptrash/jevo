#
# 2D space, where all organisms are live. In reality this is
# just a peace of memory, where all organisms are located. It
# doesn't contain organisms codes, only rectangular with points.
# It's possible to run our application only in memory. In this
# case only this 2D world will be used (without visual 
# presentation).
#
# Usage:
#     import World
#     import Helper
#     ...
#     world = World.create()
#     World.setEnergy(world, Helper.Point(30, 40), UInt32(123456))
#     World.getEnergy(world, Helper.Point(30, 40)) # returns UInt32(123456))
#     ...
#     World.destroy(world)
#
# @author DeadbraiN
#
module World
  import Helper
  import Config

  export Plane

  export create
  export setEnergy
  export getEnergy
  export getFreePos
  export grabEnergy
  export getNearFreePos
  #
  # 2D plane for living
  #
  type Plane
    #
    # World width in pixels
    #
    width::Int
    #
    # World height in pixels
    #
    height::Int
    #
    # Array of pixels (RGB+8b)
    #
    data::Array{UInt32, 2}
  end

  #
  # Creates the world
  # @param width World width
  # @param height World height
  # @return {Plane} filled by zero values Plane
  #
  function create(width::Int = Config.val(:WORLD_WIDTH), height::Int = Config.val(:WORLD_HEIGHT))
    Plane(width, height, fill(UInt32(0), height, width))
  end
  #
  # Adds energy point by specified coordinates
  # @param plane World's plane
  # @param pos Position of the energy point
  # @param energy Amount of energy to add
  # @return {nothing|UInt32}
  #
  function setEnergy(plane::Plane, pos::Helper.Point, energy::UInt32)
    if pos.x < 1 || pos.x > plane.width || pos.y < 1 || pos.y > plane.height return nothing end
    plane.data[pos.y, pos.x] = energy
  end
  #
  # Returns amount of energy in a point with
  # specified coordinates
  # @param plane World's plane, where to check
  # @param pos Position to check
  # @return {UInt32} Amount of energy
  #
  function getEnergy(plane::Plane, pos::Helper.Point)
    if pos.x < 1 || pos.x > plane.width || pos.y < 1 || pos.y > plane.height return UInt32(0) end
    plane.data[pos.y, pos.x]
  end
  #
  # Returns free position in the world. Free means, the point
  # with zero energy. It randomly finds the point in a world
  # and checks it's energy. If this point already has an energy
  # it finds another point randomly.
  # @return {Helper.Point|Bool}
  #
  function getFreePos(plane::Plane)
    local pos::Helper.Point = Helper.Point(ceil(Int, plane.width / 2), ceil(Int, plane.height / 2))
    local width::Int = plane.width
    local height::Int = plane.height
    local i::Int = width * height < 1000 ? 100 : width * height / 10

    while World.getEnergy(plane, pos) > UInt32(0) && i > 0
      pos.x = rand(1:width)
      pos.y = rand(1:height)
      i -= 1
    end
    i > 0 ? pos : false
  end
  #
  # Grabs energy in specified point in a world. If this point
  # has no energy, 0 value will be returned. If point has less
  # energy, then "amount", then all point energy will be returned.
  # @param plane Plane
  # @param pos Position to grab
  # @param amount Amount of energy we want to grab
  # @return {UInt} amount of grabbed energy
  #
  function grabEnergy(plane::Plane, pos::Helper.Point, amount::UInt32)
    local energy::UInt32 = getEnergy(plane, pos)

    energy = energy > amount ? amount : energy
    if energy > 0
      plane.data[pos.y, pos.x] -= energy
    end
    energy
  end
  #
  # Returns position near specified. It checks up, down, left and right
  # sides of "pos". If every sides are full, then returns false
  # @param plane Plane
  # @param pos Start position
  # @return {Helper.Point|Bool}
  #
  function getNearFreePos(plane::Plane, pos::Helper.Point)
    local i::Int
    local j::Int
    local x::Int = pos.x
    local y::Int = pos.y
    local positions::Array{Int, 1} = [
      x + 1, y,     # right
      x + 1, y + 1, # right down
      x    , y + 1, # down
      x - 1, y + 1, # down left
      x - 1, y,     # left
      x - 1, y - 1, # left up
      x    , y - 1, # up
      x + 1, y - 1  # up right
    ]
    #
    # We have to have a copy of position to prevent of organism moving
    #
    pos = Helper.Point(0, 0)

    j = 1
    for i = 1:8
      pos.x = positions[j]
      pos.y = positions[j + 1]
      if plane.width >= pos.x && plane.height >= pos.y && World.getEnergy(plane, pos) === UInt32(0)
        return pos
      end
      j += 2
    end

    false
  end
  #
  # Destroys world and it's data
  # @param plane
  #
  function destroy(plane::Plane)
    plane.data   = Array{UInt32, 2}()
    plane.width  = 0
    plane.height = 0
  end
end