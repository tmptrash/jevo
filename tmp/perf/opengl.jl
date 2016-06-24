using GR

# GR initialization
setwindow(1, 640, 1, 480)
setviewport(0, 1, 0, 1)
setfillintstyle(GR.INTSTYLE_SOLID)
setlinetype(GR.LINETYPE_SOLID)
setlinewidth(1)
GR.setmarkertype(GR.MARKERTYPE_DOT)
GR.setmarkersize(1)

# our approach for calculating ips
type Rps
  ts::Float64
  req::Int
end
_rps = Rps(0.0, 0)

# rect coordinates
x1 = 1.0
x2 = 640.0
y1 = 1.0
y2 = 480.0

setcolorrep(1, 1.0, 1.0, 1.0)
setcolorrep(2, 0.0, 0.0, 0.0)
# press ctrl-c to stop the demo
i = 0
while i < 500000 # ~5seconds
  i += 1
  # calculating ips (Iterations per second)
  if time() - _rps.ts > 1.0
  	_rps.ts = time()
  	print("rps: ", _rps.req)
  	_rps.req = 0
  end
  _rps.req += 1

  #clearws()
  # this code clears previous rect
  #setlinecolorind(2)
  #setfillcolorind(2)
  #fillrect(x1, x2, y1, y2)

  #setlinecolorind(1)
  #setfillcolorind(1)
  #x1 = Float64(rand(-2:2))
  #x2 = Float64(rand(-2:2))
  #y1 = Float64(rand(-2:2))
  #y2 = Float64(rand(-2:2))
  #fillrect(x1, x1 + 2, y2, y2 + 2)
  setmarkercolorind(1000)
  polymarker([x2], [y2 - y1 + 1])
  updatews()
end
