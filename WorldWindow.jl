#
# Visual representation of the World module with Tk and Cairo. It creates
# a platform independent window with organisms (one point - one organism)
# and tracks them in real time. So, it's just a perresentation of organism's
# moves in the World. We have to use separate module to have an ability to
# change the output. For example, it's possible to show organisms like a 
# circles in OpenGL canvas.
#
module WorldWindow
  import Base.Graphics
  import Cairo
  import Tk

  export Window
  export create
  export dot
  export update

  #
  # Data type, which contain one window related data: Canvas, Context,...
  #
  type Window
    #
	# TODO:
	#
    win::Tk_Toplevel
	#
	# TODO:
	#
	canvas::Canvas
	#
	# TODO:
	#
	context::CairoContext
  end
  
  #
  # Creates window and shows iton the screen
  # @param width Window width in pixels
  # @param height Window height in pixels
  # @return Window object
  #
  function create(width::Uint, height::Uint)
    win = Toplevel("Organism's world", width, height)
	c   = Canvas(win)
	pack(c, expand=true, fill="both")
	ctx = getgc(c)

	#set_coords(ctx, 0, 0, 400, 200, 0, 399, 0, 199)
	set_antialias(ctx, 1)
	set_line_width(ctx, 1)
	#
	# TODO: background color should be taken from config
	#
	set_source_rgb(ctx, 0, 0, 0)
	paint(ctx)
	
	Window(win, c, ctx)
  end
  #
  # Draws one dot (point) on the canvas with specified color
  # @param win Windows type
  # @param x X coordinate of the point
  # @param y Y coordinate of the point
  # @param r Red part of RGB
  # @param g Green part of RGB
  # @param b Blue part of RGB
  #
  function dot(win::Window, x::Int, y::Int, r::Int, g::Int, b::Int)
	set_source_rgb(win.context, r, g, b)
	move_to(win.context, x, y)
	line_to(win.context, x+1, y)
	stroke(win.context)
  end
  #
  # Updates the canvas. It's not nessesary to update it after
  # every new dot. It's better to update it after several dots
  # are drown.
  # @param win Current window
  #
  function update(win::Window)
    reveal(win.context)
    Tk.update()
  end
end