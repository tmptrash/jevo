using GR
# min supportted resolution is: 351x350 (width should be greated then height)
w = 400
h = 300

# size of the window (34.54x19.43cm)
mwidth, mheight, width, height = GR.inqdspsize()
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
#setwindow(1, w + 7.9, -11.1, h) # res: 1920x1080, win: 351x350, 400x300, 557x333, 438x341, 977x492, 1260x350, 1024x768
#setwindow(1, w + 9.5, -12.9, h) # res: 1280x720, win: 351x350, 400x300, 557x333, 438x341, 977x492, 1260x350
setwindow(1, w + 9.9, -13.3, h) # res: 1024x768, win: 351x350, 400x300, 557x333, 438x341, 977x492, 1260x350, 1024x768

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

i = 0
while i < 200000
  #clearws()
  drawrect(1, w, 1, h)
  updatews()
  i += 1
end
