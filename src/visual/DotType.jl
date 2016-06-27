#
# This module contains predefined colors for elements in a world like energy and
# nothing. We need this for solving an issue with invisible energy. This is
# because GR library has only 1256 colors and not 24bit :( Only 56 slots are
# available for color redefining. Other 1200 colors are for organisms.
#
# @author DeadbraiN
#
module DotType
  export COLOR_ENERGY
  export INDEX_ENERGY
  export COLOR_EMPTY
  export INDEX_EMPTY
  export COLORS
  #
  # Describes one color and it's index
  #
  type Color
    index::Int
    color::Array{Float64, 1}
  end
  #
  # Color and index of energy block
  #
  const COLOR_ENERGY = Float64[0.0, 1.0, 0.0]
  const INDEX_ENERGY = 1201
  #
  # Color and index of empty space
  #
  const COLOR_EMPTY  = Float64[0.0, 0.0, 0.0]
  const INDEX_EMPTY  = 0
  #
  # All available colors from above
  #
  const COLORS = Color[
    Color(INDEX_ENERGY, COLOR_ENERGY),
    Color(INDEX_EMPTY,  COLOR_EMPTY)
  ]
end
