using GR

# GR initialization
setwindow(-2, 2, -2, 2)
setviewport(0, 1, 0, 1)
setfillintstyle(1)
setlinetype(GR.LINETYPE_SOLID)
setlinewidth(1)

# our approach for calculating ips
type Rps
  ts::Float64
  req::Int
end
_rps = Rps(0.0, 0)

# rect coordinates
x1 = -2.0
x2 = 2.0
y1 = -2.0
y2 = 2.0

# press ctrl-c to stop the demo
while true
  # calculating ips (Iterations per second)
  if time() - _rps.ts > 1.0
	_rps.ts = time()
	print("rps: ", _rps.req)
	_rps.req = 0
  end
  _rps.req += 1

  #clearws()
  # this code clears previous rect
  setlinecolorind(1255)
  setfillcolorind(1255)
  fillrect(x1, x2, y1, y2)
  
  setlinecolorind(123)
  setfillcolorind(123)
  x1 = Float64(rand(-2:2))
  x2 = Float64(rand(-2:2))
  y1 = Float64(rand(-2:2))
  y2 = Float64(rand(-2:2))
  fillrect(x1, x2, y1, y2)
  updatews()
end