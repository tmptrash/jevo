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
# TODO: describe 1256 colors limit
#
module OpenGlWindow
  import GR
  import Colors
  import Config
  import DotColors
  import Helper

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
    ratio::Float64
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
    local emptyColor::Int = DotColors.INDEX_EMPTY
    local win::Window = Window(scale, Int[0], Int[0], width, height, 1.0, true)
    local wndWidth::Int = width * scale
    local wndHeight::Int = height * scale + _FOOTER_HEIGHT
    local ratio::Float64 = _createWindow(win, wndWidth, wndHeight)
    #
    # TODO: i don't know what these coefficients(9.5, -12.7) mean. May be
    # TODO: they are borders and decorations of the window? We have to check
    # TODO: this on other graphical systems (Gnome, Win10, Win7,...)
    #
    GR.setwindow(1, wndWidth + 9.5, -12.7, wndHeight)
    GR.setviewport(0, 1, 0, ratio)
    #
    # Settings for fillrect() function
    #
    GR.setfillintstyle(GR.INTSTYLE_SOLID)
    GR.setlinetype(GR.LINETYPE_SOLID)
    GR.setlinewidth(1)
    #
    # Text coloring
    #
    GR.settextcolorind(DotColors.INDEX_TEXT)
    #
    # Settings for dots drawing with polymarker() function
    #
    GR.setmarkertype(GR.MARKERTYPE_DOT)
    GR.setmarkersize(1)
    #
    # Fill background with "empty" color
    #
    GR.setcolorrep(emptyColor, DotColors.COLOR_EMPTY...)
    GR.setlinecolorind(emptyColor)
    GR.setfillcolorind(emptyColor)
    GR.clearws()
    GR.fillrect(1, 1, wndWidth, wndHeight)
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
    #
    # We use GR library. It supports only 1256 colors. We have to check it
    #
    if color > UInt32(DotColors.MAX_COLOR)
      Helper.warn(string("Unsupported color index ", color))
      color = UInt32(DotColors.MAX_COLOR)
    end
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
  # Sets title to specified string. We can't change real window's title,
  # so we have to add a header to the window, where all text messages
  # will be posted. This header is above the world as a part of a canvas.
  # @param win Window data type
  # @param title String title
  #
  function title(win::Window, title::ASCIIString)
    local ymax::Float64 = Float64(win.height * win.scale + _FOOTER_HEIGHT)
    local ycoef::Float64 = win.ratio / ymax

    GR.setlinecolorind(DotColors.INDEX_EMPTY)
    GR.setfillcolorind(DotColors.INDEX_EMPTY)
    GR.fillrect(1, win.width * win.scale, ymax - _FOOTER_HEIGHT + win.scale, ymax)
    GR.text(0.01, win.ratio - (ycoef * _FOOTER_HEIGHT) + ycoef * 15.0, title)
    #GR.text(0.01, 0.1, title)
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
  #
  # Creates window with specified width and height in pixels.
  # @param wnd Window data object
  # @param width Window width
  # @param height Window height
  # @return {Float64} ratio
  #
  function _createWindow(win::Window, width::Int, height::Int)
    local mWidth::Float64, mHeight::Float64, scrWidth::Int32, scrHeight::Int32
    local ratio::Float64
    local mSize::Float64

    mWidth, mHeight, scrWidth, scrHeight = GR.inqdspsize()
    if width >= height
    	ratio = float(height) / width
    	mSize = mWidth * width / scrWidth
    	GR.setwsviewport(0, mSize, 0, mSize * ratio)
    	GR.setwswindow(0, 1, 0, ratio)
    else
    	ratio = float(w) / height
    	mSize = mHeight * height / scrHeight
    	GR.setwsviewport(0, mSize * ratio, 0, mSize)
    	GR.setwswindow(0, ratio, 0, 1)
    end

    (win.ratio = ratio)
  end
end
