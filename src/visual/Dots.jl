#
# This module contains predefined colors for elements in a world like energy and
# nothing. We need this for solving an issue with invisible energy. This is
# because GR library has only 1256 colors and not 24bit :( Only 56 slots are
# available for color redefining. Other 1200 colors are for organisms. It also
# contains dots related constants. Maximum supported amouny of colors is 4096.
#
# @author DeadbraiN
#
module Dots
  export INDEX_MAX_COLOR
  export INDEX_MAX_ORG_COLOR

  export COLOR_EMPTY
  export INDEX_EMPTY
  export COLOR_ENERGY
  export INDEX_ENERGY
  export COLOR_TEXT
  export INDEX_TEXT
  export INDEX_FIRST_COLOR
  export COLORS
  #
  # Dots directions
  #
  export DIRECTION_NO
  export DIRECTION_LEFT
  export DIRECTION_UP
  export DIRECTION_RIGHT
  export DIRECTION_DOWN
  #
  # Evergy move possible directions
  #
  const DIRECTION_NO        = 0
  const DIRECTION_LEFT      = 1
  const DIRECTION_UP        = 2
  const DIRECTION_RIGHT     = 3
  const DIRECTION_DOWN      = 4
  #
  # Describes one color and it's index
  #
  type Color
    index::UInt16
    rgb::Array{Float64, 1}
  end
  #
  # Maximum index of color we may use
  #
  const INDEX_MAX_ORG_COLOR = UInt16(1200)
  const INDEX_MAX_COLOR     = UInt16(1256)
  #
  # Color and index of empty space
  #
  const COLOR_EMPTY   = Float64[0.0, 0.0, 0.0]
  const INDEX_EMPTY   = UInt16(0)
  #
  # Color and index of energy block
  #
  const COLOR_ENERGY  = Float64[0.0, 1.0, 0.0]
  const INDEX_ENERGY  = UInt16(1201)
  #
  # Text coloring
  #
  const COLOR_TEXT    = Float64[1.0, 1.0, 1.0]
  const INDEX_TEXT    = UInt16(1202)
  #
  # Index of first color
  #
  const INDEX_FIRST_COLOR = UInt16(1)
  #
  # All available colors from above
  #
  const COLORS = Color[
    Color(INDEX_ENERGY, COLOR_ENERGY),
    Color(INDEX_EMPTY,  COLOR_EMPTY),
    Color(INDEX_TEXT,   COLOR_TEXT)
  ]
end
