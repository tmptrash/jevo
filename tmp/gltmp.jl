#=using GR

mwidth, mheight, width, height = GR.inqdspsize()
w = 400
h = 300
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
setwindow(1, w + 9.5, -12.7, h)

i = 0
while i < 300000
  #clearws()
  drawrect(1, w, 1, h)
  polyline([1,w],[1,h])
  polyline([1,w],[h,1])
  updatews()
  i += 1
end
=#


using GR

mwidth, mheight, width, height = GR.inqdspsize()

while true
    clearws()

    w = 400 + round(Int, rand() * 200)
    h = 400 + round(Int, rand() * 200)
    if w >= h
        ratio = float(h) / w
        msize = mwidth * w / width
        GR.setwsviewport(0, msize, 0, msize * ratio)
        GR.setwswindow(0, 1, 0, ratio)
        setviewport(0, 1, 0, ratio)
    else
        ratio = float(w) / h
        msize = mheight * h / height
        GR.setwsviewport(0, msize * ratio, 0, msize)
        GR.setwswindow(0, ratio, 0, 1)
        setviewport(0, ratio, 0, 1)
    end

    setwindow(1, w + 9.5, -12.7, h)

    drawrect(1, w, 1, h)
    polyline([1,w],[1,h])
    polyline([1,w],[h,1])
    text(0.05, 0.05, "$w x $h")
	sleep(1)

    updatews()
end