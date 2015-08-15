#
# 2D space, where all organisms are live.
# TODO: describe update event
#
module World
  import Creature
  import Helper
  import Config
  import Event

  export create
  export setEnergy
  export getEnergy
  export getFreePos
  export grabEnergy
  export getNearFreePos

  # TODO: remove this
  using Debug

  #
  # 2D plane for living
  #
  type Plane
    #
    # World width in pixels
    #
    width::Uint
    #
    # World height in pixels
    #
    height::Uint
    #
    # Array of pixels (RGB+8b)
    #
    data::Array{Uint16, 2}
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
  function create(width::Uint = Config.world["width"], height::Uint = Config.world["height"])
    Plane(width, height, fill(uint16(0), (int(height), int(width))), Event.create())
  end
  #
  # Adds energy point by specified coordinates
  # @param plane World's plane
  # @param pos Position of the energy point
  # @param energy Amount of energy to add
  #
  function setEnergy(plane::Plane, pos::Helper.Point, energy::Uint16)
    plane.data[pos.y, pos.x] = energy
    Event.fire(plane.observer, "update", pos.x, pos.y, energy, plane)
  end
  #
  # Returns amount of energy in a point with
  # specified coordinates
  # @param plane World's plane, where to check
  # @param pos Position to check
  # @return {Uint} Amount of energy
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
    pos = Helper.Point(int(plane.width / 2), int(plane.height / 2))
    while World.getEnergy(plane, pos) > uint(0)
      pos.x = int(rand(1:plane.width))
      pos.y = int(rand(1:plane.height))
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
  # @return {Uint} amount of grabbed energy
  #
  function grabEnergy(plane::Plane, pos::Helper.Point, amount::Uint)
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
    pos = Helper.Point(pos.x, pos.y)

    pos.x += 1
    if World.getEnergy(plane, pos) == 0 return pos end
    pos.x -= 2;
    if World.getEnergy(plane, pos) == 0 return pos end
    pos.x += 1; pos.y -= 1
    if World.getEnergy(plane, pos) == 0 return pos end
    pos.y += 2
    if World.getEnergy(plane, pos) == 0 return pos end

    false
  end
end