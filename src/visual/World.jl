#
# 2D space, where all organisms are live. In reality this is
# just a peace of memory, where all organisms are located. It
# doesn't contain organisms codes, only rectangular with points.
# It's possible to run our application only in memory. In this
# case only this 2D world will be used (without visual
# presentation).
#
# Events:
#     dot Fires if new dot was paited.
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
  import Event
  import Dots

  export Plane

  export EVENT_DOT
  export EVENT_MOVE

  export create
  export destroy
  export setEnergy
  export getEnergy
  export moveEnergy
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
    # Observer for sending events
    #
    obs::Event.Observer
  end
  #
  # Event, which is fired if new dot was painted in a world
  #
  const EVENT_DOT  = "dot"
  #
  # Event, which is fired if some dot was moved from one
  # location to another.
  #
  const EVENT_MOVE = "move"
  #
  # Creates the world
  # @param width World width
  # @param height World height
  # @return {Plane} filled by zero values Plane
  #
  function create(width::Int, height::Int)
    Plane(width, height, fill(UInt32(Dots.INDEX_EMPTY), height, width), Event.create())
  end
  #
  # Opposite to create. Destroys the World
  # @param plane World instance
  #
  function destroy(plane::Plane)
    plane.data = Array{UInt32, 2}()
    Event.clear(plane.obs)
    plane.width  = 0
    plane.height = 0
  end
  #
  # Adds energy point by specified coordinates
  # @param plane World's plane
  # @param pos Position of the energy point
  # @param energy Amount of energy to add
  # @return {Bool} It's possible, that energy position is not empty.
  # false in this case. true - if dot was set.
  #
  function setEnergy(plane::Plane, pos::Helper.Point, energy::UInt32)
    if pos.x < 1 || pos.x > plane.width || pos.y < 1 || pos.y > plane.height return false end
    plane.data[pos.y, pos.x] = energy
    Event.fire(plane.obs, EVENT_DOT, pos, energy)
    true
  end
  #
  # Moves energy point from one location to another. Old coordinates
  # will be filled by empty(zero) color. Moving is only works with
  # one pixel (1px distance).
  # @param plane World's plane
  # @param pos Position of the energy point
  # @param energy Amount of energy to add
  # @return {Bool} It's possible, that energy position is not empty.
  # false in this case. true - if dot was set.
  #
  function moveEnergy(plane::Plane, oldPos::Helper.Point, newPos::Helper.Point, energy::UInt32)
    if newPos.x < 1 || newPos.x > plane.width || newPos.y < 1 || newPos.y > plane.height return false end
    local dir::Int

    if     newPos.x > oldPos.x dir = Dots.DIRECTION_RIGHT
    elseif newPos.x < oldPos.x dir = Dots.DIRECTION_LEFT
    elseif newPos.y > oldPos.y dir = Dots.DIRECTION_DOWN
    else                       dir = Dots.DIRECTION_UP
    end
    plane.data[oldPos.y, oldPos.x] = UInt32(0)
    plane.data[newPos.y, newPos.x] = energy
    Event.fire(plane.obs, EVENT_MOVE, newPos, dir, energy)
    true
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
    local i::Int = width * height < 1000 ? 100 : div(width * height, 10)

    while World.getEnergy(plane, pos) > UInt32(0) && i > 0
      pos.x = Helper.fastRand(width)
      pos.y = Helper.fastRand(height)
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
      Event.fire(plane.obs, EVENT_DOT, pos, (plane.data[pos.y, pos.x] -= energy))
    end
    energy
  end
  #
  # Returns position near specified. It checks up, down, left and right
  # sides of "pos". If every sides are full, then returns false
  # @param plane Plane
  # @param pos Start position
  # @return {Helper.Point|Bool}
  # TODO: this method should return Helper.Point() in any case. Point(0,0)
  # TODO: should mean no free place
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
      if plane.width >= pos.x && plane.height >= pos.y && pos.x > 0 && pos.y > 0 && World.getEnergy(plane, pos) === UInt32(0)
        return pos
      end
      j += 2
    end

    false
  end
end
