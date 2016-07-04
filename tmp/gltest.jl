using GR
# min supportted resolution is: 350x350
w = 701
h = 350

# size of the window
mwidth, mheight, width, height = GR.inqdspsize()
if w >= h
	ratio = float(h) / w
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
#setwindow(1, w + 7.161, -9.725, h) # res: 1280x720, win: 351x350, 400x300, 557x333, 438x341, 977x492
setwindow(1, w + 7, -10, h) # res: 1024 x 768, win: 351x350, 400x300, 557x333, 438x341, 977x492
#setwindow(1, w + 8.63, -12, h) # 1049 x 600 (update)
#setwindow(1, w, 1, h) # 1049 x 600

#println("wsviewport: ", [0, msize, 0, msize * ratio])
#println("wswindow  : ", [0, 1, 0, ratio])
#println("window    : ", [1, w + 7.5, -10, h])
#println("window    : ", [1, w + 8.63, -12, h])

setcolorrep(1, 1.0, 1.0, 1.0)
setcolorrep(2, 0.0, 0.0, 0.0)
setlinecolorind(2)
setlinewidth(1)
setfillcolorind(1)
setfillintstyle(1)

setmarkertype(GR.MARKERTYPE_DOT)
setmarkersize(1)
setmarkercolorind(2)

i = 0
while i < 100000
  #clearws()
  drawrect(1, w, 1, h)
  polymarker([w / 2], [h / 2])
  updatews()
  i += 1
end
