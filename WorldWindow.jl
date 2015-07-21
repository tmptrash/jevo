#
# Visual representation of the World module with Tk and Cairo. It creates
# a platform independent window with organisms (one point - one organism)
# and tracks them in real time. So, it's just a perresentation of organism's
# moves in the World. We have to use separate module to have an ability to
# change the output. For example, it's possible to show organisms like a 
# circles in OpenGL canvas.
#
module WorldWindow
  type Window
    #
	# TODO:
	#
    win::Tk_Toplevel,
	#
	# TODO:
	#
	canvas::Canvas,
	#
	# TODO:
	#
	context::CairoContext
  end
  
  function create()
    win = Toplevel("Test", 400, 200)
	c = Canvas(win)
	pack(c, expand=true, fill="both")
	ctx = getgc(c)

	set_coords(ctx, 0, 0, 400, 200, 0, 399, 0, 199)
	set_antialias(ctx, 1)
	set_line_width(ctx, 1)
	set_source_rgb(ctx, 1, 1, 1)
	paint(ctx)
  end

  function dot(ctx::CairoContext, x::Int, y::Int, r::Int, g::Int, b::Int)
	set_source_rgb(ctx, r, g, b)
	move_to(ctx, x, y)
	line_to(ctx, x+1, y)
	stroke(ctx)
  end
end