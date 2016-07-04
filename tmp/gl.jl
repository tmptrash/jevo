using GR

   w = 400
   h = 200

#setviewport(0, 1, 0, 1)
#setwindow(1, w, 1, h)
#=
   mwidth, mheight, width, height = GR.inqdspsize()
   if w > h
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
=#
println(msize," ", msize * ratio, ", ratio: ", ratio)
setviewport(0, msize, 0, msize * ratio)
setwindow(1, w, 1, h)

setmarkertype(GR.MARKERTYPE_DOT)
setmarkersize(1)

setcolorrep(1, 0.0, 0.0, 1.0)
setlinecolorind(1)
setfillcolorind(1)

i = 0
while i < 300000

  #clearws()
  #fillrect(1, 1.1, 0, ratio)
  #polymarker([1, 400], [1, 86])
  polymarker([100], [86])
  updatews()
  i += 1
end
