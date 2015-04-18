#
# 2D space, where all organisms are live.
#
module World
  import Organism
  import Helper
  import Config

  export create
  export setEnergy
  export getEnergy
  export getFreePos

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
  end

  #
  # Creates the world
  # @param width World width
  # @param height World height
  #
  function create(width::Uint = Config.world["width"], height::Uint = Config.world["height"])
    Plane(width, height, fill(uint16(0), (int(width), int(height))))
  end
  #
  # Adds energy point by specified coordinates
  # @param plane World's plane
  # @param pos Position of the energy point
  # @param energy Amount of energy to add
  #
  function setEnergy(plane::Plane, pos::Helper.Point, energy::Uint16)
    plane.data[pos.y, pos.x] = energy
  end
  #
  # Returns amount of energy in a point with
  # specified coordinates
  # @param plane World's plane, where to check
  # @param pos Position to check
  # @return {Uint} Amount of energy
  #
  function getEnergy(plane::Plane, pos::Helper.Point)
    plane.data[pos.y * plane.width + pos.x]
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
      pox.x = rand(1:plane.width)
      pox.y = rand(1:plane.height)
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
  function grabEnergy(plane::Plane, pos::Helper.Point, amount:Uint)
    energy = getEnergy(plane, pos)
    energy = energy > amount ? amount : energy
    plane.data[pos.y * plane.width + pos.x] -= energy
    energy
  end
end