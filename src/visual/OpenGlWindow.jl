#
# This module creates a platform independent window with a canvas inside.
# It uses OpenGL and GR libraries for that. Has an ability to draw a color pixels
# on a canvas. Uses RGB color format for drawing. It implements lazy update
# logic. It means, that canvas will be updated only after calling update()
# method. So, you may draw many dots, but user will not see them. Only after
# calling update() all dots will appear.
#
# Issues:
#
# Usage:
#   import OpenGlWindow
#   ...
#   win = OpenGlWindow.create(300, 300)
#   CanvasWindow.dot(win, 20, 20, UInt32(11197883)) # R=AA,G=DD,B=BB
#   OpenGlWindow.dot(win, 30, 30, UInt32(11197883)) # R=AA,G=DD,B=BB
#   OpenGlWindow.update(win)                        # Two dots will be shown
#   ...
#   OpenGlWindow.destroy(win)
#
# @author DeadbraiN
# TODO: check if this mosule platform independent
#
module OpenGlWindow
  import GR
  import Colors
  import Config
  import DotType

  export Window
  export create
  export setColor
  export dot
  export update
  export title
  export destroy
  #
  # Height of footer in pixels. Footer is an area for text, because window
  # title is unaccessible for us :( It should be at the bottom, because it
  # simplier to draw pixels without adding _FOOTER_HEIGHT all the time.
  #
  const _FOOTER_HEIGHT = 50.0
  #
  # Data type, which contains window related data: Window, Canvas, Context,...
  # Is used in all public methods as a canvas for drawing.
  #
  type Window
    scale::Int
    xBuf::Array{Int, 1}
    yBuf::Array{Int, 1}
    width::Int
    height::Int
    running::Bool
  end
  #
  # Creates window and returns window related data type, which is used
  # in all public methods of current module. Sets default background
  # color according to global configuration.
  # @param width Window width in pixels
  # @param height Window height in pixels
  # @param scale Scale of canvas 1:1 by default
  # TODO: @param title Window title
  # @return Window object
  #
  function create(width::Int, height::Int, scale::Int = Config.val(:WORLD_SCALE), title::ASCIIString = "")
    local emptyColor::Int = DotType.INDEX_EMPTY
    local win::Window = Window(scale, Int[0], Int[0], width, height, true)

    GR.setwindow(1, width * scale, 1, height * scale + _FOOTER_HEIGHT)
    GR.setviewport(0.0, 1.0, 0.0, 1.0)
    #
    # Settings for fillrect() function
    #
    GR.setfillintstyle(GR.INTSTYLE_SOLID)
    GR.setlinetype(GR.LINETYPE_SOLID)
    GR.setlinewidth(1)
    #
    # Text coloring
    #
    GR.settextcolorind(DotType.INDEX_TEXT)
    #
    # Settings for dots drawing with polymarker() function
    #
    GR.setmarkertype(GR.MARKERTYPE_DOT)
    GR.setmarkersize(1)
    #
    # Fill background with "empty" color
    #
    GR.setcolorrep(emptyColor, DotType.COLOR_EMPTY...)
    GR.setlinecolorind(emptyColor)
    GR.setfillcolorind(emptyColor)
    GR.clearws()
    GR.fillrect(1, 1, width * scale, height * scale + _FOOTER_HEIGHT)
    update(win)

    win
  end
  #
  # Redefines color index with RGB components.
  # @param color Color index we want to change
  # @param r Red component
  # @param g Green component
  # @param b Blue component
  #
  function setColor(color::Int, r::Float64, g::Float64, b::Float64)
    GR.setcolorrep(color, r, g, b)
  end
  #
  # Draws one dot (point) on the canvas with specified color
  # @param win Windows type
  # @param x X coordinate of the point
  # @param y Y coordinate of the point
  # @param color Color of the dot. We use only last three bytes (24bits) of four.
  #
  function dot(win::Window, x::Int, y::Int, color::UInt32)
    if win.scale > 1
      x = (x - 1) * win.scale + 1
      y = win.height * win.scale - (y - 1) * win.scale + 1
      GR.setlinecolorind(Int(color))
      GR.setfillcolorind(Int(color))
      GR.fillrect(x, x + win.scale, y, y + win.scale)
    else
      setmarkercolorind(Int(color))
      win.xBuf[1] = x
      win.yBuf[1] = y
      GR.polymarker(win.xBuf, win.yBuf)
    end
  end
  #
  # Sets title to specified
  # @param win Window data type
  # @param title String title
  #
  function title(win::Window, title::ASCIIString)
    local ymax::Float64 = Float64(win.height * win.scale + _FOOTER_HEIGHT)
    local ycoef::Float64 = 1.0 / ymax

    GR.setlinecolorind(DotType.INDEX_EMPTY)
    GR.setfillcolorind(DotType.INDEX_EMPTY)
    GR.fillrect(1, win.width * win.scale, ymax - _FOOTER_HEIGHT + win.scale, ymax)
    GR.text(0.01, 1.0 - (ycoef * _FOOTER_HEIGHT) + ycoef * 17.0, title)
  end
  #
  # Updates the canvas. It's not nessesary to update it after
  # every drawing. It's better to update it after several dots
  # are drown.
  # @param win Current window
  #
  function update(win::Window) GR.updatews() end
  #
  # Destroys OpenGL windows by quitting from main loop
  # @param win Window object to destroy
  #
  function destroy(win::Window)
    win.running = false
  end
end
