using GR

   w = 1280
   h = 480
   
#setviewport(0, 1, 0, 1)
setwindow(1, w, 1, h)

   mwidth, mheight, width, height = GR.inqdspsize()
   if w > h
        ratio = float(h) / w
        msize = mwidth * w / width
		println(msize, " ", msize * ratio, " ", ratio)
        GR.setwsviewport(0, msize, 0, msize * ratio)
        GR.setwswindow(0, 1, 0, ratio)
    else
        ratio = float(w) / h
        msize = mheight * h / height
        GR.setwsviewport(0, msize * ratio, 0, msize)
        GR.setwswindow(0, ratio, 0, 1)
    end
	
setcolorrep(1, 0.0, 0.0, 1.0)
setlinecolorind(1)
setfillcolorind(1)

i = 0
while i < 200000

  #clearws()
  fillrect(10, 300, 20, 80)
  updatews()
  i += 1
end 