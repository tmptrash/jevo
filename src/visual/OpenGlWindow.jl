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
  export dot
  export update
  export title
  export destroy

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
    local emptyColor::UInt32 = DotType.INDEX_EMPTY)

    GR.setwindow(1, width * scale, 1, height * scale)
    GR.setviewport(0, 1, 0, 1)
    #
    # Settings for fillrect() function
    #
    GR.setfillintstyle(GR.INTSTYLE_SOLID)
    GR.setlinetype(GR.LINETYPE_SOLID)
    GR.setlinewidth(1)
    #
    # Settings for dots drawing with polymarker() function
    #
    GR.setmarkertype(GR.MARKERTYPE_DOT)
    GR.setmarkersize(1)
    #
    # Fill background with "empty" color
    #
    GR.setcolorrep(Int(emptyColor), 0.0, 0.0, 0.0)
    GR.setlinecolorind(Int(emptyColor))
    GR.setfillcolorind(Int(emptyColor))
    GR.fillrect(1, 1, width * scale, height * scale)
    GR.updatews()

    Window(scale, Int[0], Int[0], width, height, true)
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
  # TODO:
  function title(win::Window, title::ASCIIString) end
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
