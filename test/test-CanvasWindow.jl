module TestCanvasWindow
  using FactCheck
  using CanvasWindow
  using Tk
  using Cairo
  using Images
  using FixedPointNumbers

  facts("create() method should create and show window") do
    win = CanvasWindow.create(100, 100, "Test")
    @fact Tk.get_value(win.win) --> "Test" "Window should be created"
    CanvasWindow.destroy(win)
    @fact_throws Tk.get_value(win.win) "Window should be destroyed"
  end

  facts("dot() method should draw the pixel") do
    xoffset = 1
    width   = 100
    height  = 100
    x       = rand(1:width)
    y       = rand(1:height)
    r       = 1.0
    g       = 0.122
    b       = 0.255
    imgFile = "test.png"

    win = CanvasWindow.create(width, height, "Test")
    CanvasWindow.dot(win, x, y, r, g, b)
    Cairo.write_to_png(win.canvas.back, imgFile)
    img = Images.imread(imgFile)
    @fact img.data[x + xoffset, y].r --> FixedPointNumbers.ufixed8(r)
    @fact img.data[x + xoffset, y].g --> FixedPointNumbers.ufixed8(g)
    @fact img.data[x + xoffset, y].b --> FixedPointNumbers.ufixed8(b)
    CanvasWindow.destroy(win)
    rm(imgFile)
  end
end