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
#   win = OpenGlWindow.create(300, 300, 3)
#   CanvasWindow.dot(win, 20, 20, UInt16(11197883)) # R=AA,G=DD,B=BB
#   OpenGlWindow.dot(win, 30, 30, UInt16(11197883)) # R=AA,G=DD,B=BB
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
  import Dots
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
  # @param title Window title
  # @return Window object
  #
  function create(width::Int, height::Int, scale::Int, title::String = "")
    local emptyColor::Int = Dots.INDEX_EMPTY
    local win::Window = Window(scale, Int[0], Int[0], width, height, 1.0, true)
    local wndWidth::Int = width * scale
    local wndHeight::Int = height * scale + _FOOTER_HEIGHT
    local ratio::Float64 = _createWindow(win, wndWidth, wndHeight)

    GR.setwindow(1, wndWidth, 1, wndHeight)
    GR.setviewport(0, 1, 0, ratio)
    #
    # Fill background with "empty" color
    #
    GR.setcolorrep(emptyColor, Dots.COLOR_EMPTY...)
    GR.setlinewidth(1)
    GR.setlinetype(GR.LINETYPE_SOLID)
    GR.setlinecolorind(emptyColor)
    GR.settextcolorind(Int(Dots.INDEX_TEXT))
    #
    # Settings for fillrect() function
    #
    GR.setfillcolorind(emptyColor)
    GR.setfillintstyle(GR.INTSTYLE_SOLID)
    #
    # Settings for dots drawing with polymarker() function
    #
    GR.setmarkertype(GR.MARKERTYPE_DOT)
    GR.setmarkersize(1)
    GR.clearws()
    GR.fillrect(1, wndWidth, 1, wndHeight)
    #
    # TODO: This is a fix for an issue in GR library. fillrect() doesn't
    # TODO: draw right and bottom lines correctly. So, we have to add these
    # TODO: lines "by hands".
    #
    GR.drawrect(1, wndWidth, 1, wndHeight)
    #
    # Sets text height in title, otherwise it will be sized depending
    # on window size. So now it doesn't depend on window size.
    #
    GR.setcharheight(Float64(wndHeight / 1920) * 0.00001)
    OpenGlWindow.title(win, title)
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
  function dot(win::Window, x::UInt16, y::UInt16, color::UInt16)
    #
    # We use GR library. It supports only Dots.INDEX_MAX_COLOR colors. We have to check it
    #
    if color > Dots.INDEX_MAX_COLOR
      Helper.warn(string("Unsupported color index ", color))
      color = Dots.INDEX_MAX_COLOR
    end
    if win.scale > 1
      x = (x - UInt16(1)) * UInt16(win.scale + 1)
      y = win.height * win.scale - (y - UInt16(1)) * UInt16(win.scale + 1)
      GR.setlinecolorind(Int(color))
      GR.setfillcolorind(Int(color))
      GR.fillrect(Int(x), Int(x) + win.scale, Int(y), Int(y) + win.scale)
    else
      GR.setmarkercolorind(Int(color))
      win.xBuf[1] = Int(x)
      win.yBuf[1] = Int(y)
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
  function title(win::Window, title::String)
    local ymax::Float64 = Float64(win.height * win.scale + _FOOTER_HEIGHT)
    local ycoef::Float64 = win.ratio / ymax

    GR.setlinecolorind(Int(Dots.INDEX_EMPTY))
    GR.setfillcolorind(Int(Dots.INDEX_EMPTY))
    GR.fillrect(1, win.width * win.scale + win.scale, ymax - _FOOTER_HEIGHT + win.scale, ymax)
    # TODO: fix this hardcode (15.0)
    GR.text(0.01, win.ratio - (ycoef * _FOOTER_HEIGHT) + ycoef * 19.0, title)
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
    	ratio = float(width) / height
    	mSize = mHeight * height / scrHeight
    	GR.setwsviewport(0, mSize * ratio, 0, mSize)
    	GR.setwswindow(0, ratio, 0, 1)
    end

    (win.ratio = ratio)
  end
end
