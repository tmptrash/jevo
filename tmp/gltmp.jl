using GR
# min supportted resolution is: 351x350 (width should be greated then height)
w = 1280
h = 720

# size of the window (34.54x19.43cm)
mwidth, mheight, width, height = GR.inqdspsize()
println(GR.inqdspsize())
if w >= h
	ratio = Float64(h) / w
	msize = mwidth * w / width
	GR.setwsviewport(0, msize, 0, msize * ratio)
	GR.setwswindow(0, 1, 0, ratio)
else
	ratio = float(w) / h
	msize = mheight * h / height
	GR.setwsviewport(0, msize * ratio, 0, msize)
	GR.setwswindow(0, ratio, 0, 1)
end

setviewport(0, 1, 0, ratio)
setwindow(1, w, 1, h)

setcolorrep(2, 0.0, 0.0, 0.0)
setlinecolorind(2)
setlinewidth(1)
setfillintstyle(1)

i = 0
while i < 300000
  #clearws()
  drawrect(1, w, 1, h)
  updatews()
  i += 1
end
