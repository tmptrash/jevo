#
# 2D space, where all organisms are live.
#
module World
  import Organism
  import Helper
  import Config

  export create
  export addEnergy

  #
  # 2D plane for living
  #
  type Plane
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
  	Plane(fill(uint16(0), (int(width), int(height))))
  end
  #
  # Adds energy point by specified coordinates
  # @param plane World's plane
  # @param pos Position of the energy point
  # @param energy Amount of energy to add
  #
  function addEnergy(plane::Plane, pos::Helper.Point, energy::Uint16)
  	plane.data[pos.y, pos.x] = energy
  end
end