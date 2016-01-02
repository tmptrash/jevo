#
# 2D space, where all organisms are live.
# TODO: describe update event
#
# @author DeadbraiN
#
module World
  import Creature
  import Helper
  import Event
  using Config

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
    #
    # {Event.Observer} Adds events listening/firing logic to the World.
    #
    observer::Event.Observer
  end

  #
  # Creates the world
  # @param width World width
  # @param height World height
  #
  function create(width::Int = Config.val(:WORLD_WIDTH), height::Int = Config.val(:WORLD_HEIGHT))
    Plane(width, height, fill(UInt32(0), height, width), Event.create())
  end
  #
  # Adds energy point by specified coordinates
  # @param plane World's plane
  # @param pos Position of the energy point
  # @param energy Amount of energy to add
  #
  function setEnergy(plane::Plane, pos::Helper.Point, energy::UInt32)
    plane.data[pos.y, pos.x] = energy
    Event.fire(plane.observer, "update", pos.x, pos.y, energy, plane)
  end
  #
  # Returns amount of energy in a point with
  # specified coordinates
  # @param plane World's plane, where to check
  # @param pos Position to check
  # @return {UInt32} Amount of energy
  #
  function getEnergy(plane::Plane, pos::Helper.Point)
    plane.data[pos.y, pos.x]
  end
  #
  # Returns free position in the world. Free means, the point
  # with zero energy. It randomly finds the point in a world
  # and checks it's energy. If this point already has an energy
  # it finds another point randomly.
  # @return {Helper.Point}
  # TODO: possible infinite loop, if all point are full
  #
  function getFreePos(plane::Plane)
    local pos::Helper.Point = Helper.Point(round(Int, plane.width / 2), round(Int, plane.height / 2))
    while World.getEnergy(plane, pos) > UInt32(0)
      pos.x = rand(1:plane.width)
      pos.y = rand(1:plane.height)
    end
    pos
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
  function grabEnergy(plane::Plane, pos::Helper.Point, amount::UInt)
    energy = getEnergy(plane, pos)
    energy = energy > amount ? amount : energy
    plane.data[pos.y, pos.x] -= energy
    Event.fire(plane.observer, "update", pos.x, pos.y, plane.data[pos.y, pos.x], plane)
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
    local positions::Array{Int} = [
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
    for i = 1:4
      pos.x = positions[j]
      pos.y = positions[j + 1]
      if plane.width >= pos.x && plane.height >= pos.y && World.getEnergy(plane, pos) === UInt32(0)
        return pos
      end
      j += 2
    end

    false
  end
end