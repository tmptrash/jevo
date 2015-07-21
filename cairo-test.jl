using Base.Graphics
using Cairo
using Tk

function dot(ctx::CairoContext, x::Int, y::Int, r::Int, g::Int, b::Int)
	set_source_rgb(ctx, r, g, b)
	move_to(ctx, x, y)
	line_to(ctx, x+1, y)
	stroke(ctx)
end

win = Toplevel("Test", 400, 200)
c = Canvas(win)
pack(c, expand=true, fill="both")
ctx = getgc(c)

set_coords(ctx, 0, 0, 400, 200, 0, 399, 0, 199)
set_antialias(ctx, 1)
set_line_width(ctx, 1)
set_source_rgb(ctx, 1, 1, 1)
paint(ctx)
dot(ctx, 1,1, 0,0,0) 

reveal(c)
Tk.update()