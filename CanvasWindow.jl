#
# This module creates a platform independent window with a canvas inside. It
# uses Tk and Cairo libraries for that. Has an ability to draw a color pixels
# on a canvas. Uses RGB color format for drawing. It implements lazy update
# logic. It means, that canvas will be updated only after calling update()
# method. So, you may draw many dots, but user will not see them. Only after 
# calling update() all dots will appear.
#
# Issues:
#   - width and height parameters in create() method means, that a canvas should 
#     be with these values, but it choose some other values for canvas. It doesn't 
#     work on small canvas sizes.
#
# Usage:
#   using CanvasWindow
#   ...
#   win = CanvasWindow.create(100, 100)
#   CanvasWindow.dot(win, 20, 20, UInt32(11197883)) # R=AA,G=DD,B=BB
#   CanvasWindow.dot(win, 30, 30, UInt32(11197883))
#   ...
#   CanvasWindow.update(win)
#   ...
#   CanvasWindow.destroy(win)
#
# @author DeadbraiN
#
module CanvasWindow
  import Graphics
  import Cairo
  import Tk
  import Colors
  using Config

  export Window
  export create
  export dot
  export update
  export destroy

  #
  # Data type, which contains window related data: Window, Canvas, Context,...
  # Is used in all public methods as a canvas for drawing.
  #
  type Window
    win::Tk.Tk_Toplevel
    canvas::Tk.Canvas
    context::Cairo.CairoContext
  end
  
  #
  # Creates window and shows it on the screen. Returns window related 
  # data type, which is used in all public methods of current module.
  # Sets default background color according to global configuration.
  # @param width Window width in pixels
  # @param height Window height in pixels
  # @param title Window title
  # @return Window object
  #
  function create(width::Integer, height::Integer, title::ASCIIString = "")
    win = Tk.Toplevel(title, width, height)
    c   = Tk.Canvas(win)
    Tk.pack(c, expand=true, fill="both")
    ctx = Graphics.getgc(c)
    rgb = convert(Colors.RGB, Colors.RGB24(Config.val(WORLD, BACK_COLOR)))
    
    Tk.set_antialias(ctx, 1)
    Tk.set_line_width(ctx, 1)
    Tk.set_source_rgb(ctx, rgb.r, rgb.g, rgb.b)
    Tk.paint(ctx)

    Window(win, c, ctx)
  end
  # TODO: do we need this at all?
  # Draws one dot (point) on the canvas with specified color
  # @param win Windows type
  # @param x X coordinate of the point
  # @param y Y coordinate of the point
  # @param r Red part of RGB
  # @param g Green part of RGB
  # @param b Blue part of RGB
  #
  # function dot(win::Window, x::Int, y::Int, r::Real, g::Real, b::Real)
  #   Tk.set_source_rgb(win.context, r, g, b)
  #   Tk.move_to(win.context, x, y)
  #   Tk.line_to(win.context, x+1, y)
  #   Tk.stroke(win.context)
  # end
  #
  # Draws one dot (point) on the canvas with specified color
  # @param win Windows type
  # @param x X coordinate of the point
  # @param y Y coordinate of the point
  # @param color Color of the dot. We use only last three bytes (24bits) of four.
  #
  function dot(win::Window, x::Int, y::Int, color::UInt32)
    col = convert(Colors.RGB, Colors.RGB24(color))
    Tk.set_source_rgb(win.context, col.r, col.g, col.b)
    Tk.move_to(win.context, x, y)
    Tk.line_to(win.context, x+1, y)
    Tk.stroke(win.context)
  end
  #
  # Sets title to specified
  # @param win Window data type
  # @param title String title
  #
  function title(win::Window, title::ASCIIString)
    Tk.set_value(win.win, title)
  end
  #
  # Updates the canvas. It's not nessesary to update it after
  # every drawing. It's better to update it after several dots
  # are drown.
  # @param win Current window
  #
  function update(win::Window)
    Tk.reveal(win.canvas)
    Tk.update()
  end
  # TODO: i have to check if i need to destroy context and canvas
  # Destroys specified windows
  # @param win Windows to destroy
  #
  function destroy(win::Window)
  	Tk.destroy(win.win)
  end
end