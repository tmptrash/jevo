using GR

setcolorrep(1, 1.0, 1.0, 1.0)
setcolorrep(2, 0.0, 0.0, 0.0)
setlinecolorind(2)
setlinewidth(1)
setfillcolorind(1)
setfillintstyle(1)

w = 200
h = 200

setviewport(0.0, 1.0, 0.0, 1.0)
setwindow(0, w, 0, h)
setwsviewport(0.0, 0.1, 0.0, 0.1) # meters
setwswindow(0.0, 1.0, 0.0, 1.0)

#=
mwidth, mheight, width, height = GR.inqdspsize()
if w >= h
	ratio = float(h) / w
	msize = mwidth * w / width
	GR.setwsviewport(0, msize, 0, msize * ratio)
	GR.setwswindow(0, 1, 0, 1) #ratio)
else
	ratio = float(w) / h
	msize = mheight * h / height
	GR.setwsviewport(0, msize * ratio, 0, msize)
	GR.setwswindow(0, ratio, 0, 1)
end
=#

i = 0
while i < 200000
  #clearws()
  drawrect(0, w - 4.59, 7, h)
  updatews()
  i += 1
end
