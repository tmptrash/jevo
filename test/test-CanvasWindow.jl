module TestCanvasWindow
  using FactCheck
  using CanvasWindow
  using Tk
  using Cairo
  using Images
  using FixedPointNumbers

  #
  # Shared variables for all facts...
  #
  global xoffset = 1
  global width   = 234
  global height  = 345
  global r       = FixedPointNumbers.ufixed8(1.0)
  global g       = FixedPointNumbers.ufixed8(0.122)
  global b       = FixedPointNumbers.ufixed8(0.255)
  global title   = "Test"
  global imgFile = "test.png"

  facts("create() should create and show window with title") do
    win = CanvasWindow.create(width, height, title)
    @fact Tk.get_value(win.win) --> title "Window should be created"
    CanvasWindow.destroy(win)
  end
  facts("create() should create canvas with passed width and height") do
    win = CanvasWindow.create(width, height, title)
    Cairo.write_to_png(win.canvas.back, imgFile)
    img = Images.load(imgFile)
    @fact size(img.data)[1] --> width
    @fact size(img.data)[2] --> height
    CanvasWindow.destroy(win)
    rm(imgFile)
  end

  facts("title() should change the title") do
    win = CanvasWindow.create(width, height, "No title!")
    CanvasWindow.title(win, title)
    @fact Tk.get_value(win.win) --> title
    CanvasWindow.destroy(win)
  end

  facts("dot(color) should draw a pixel only on back surface") do
    x = rand(1:width)
    y = rand(1:height)

    win = CanvasWindow.create(width, height)
    CanvasWindow.dot(win, x, y, UInt32((0xffffff & r.i << 16) | (0xffffffff & g.i << 8) | b.i))
    Cairo.write_to_png(win.canvas.back, imgFile)
    img = Images.load(imgFile)
    @fact img.data[x + xoffset, y].r --> r
    @fact img.data[x + xoffset, y].g --> g
    @fact img.data[x + xoffset, y].b --> b
    CanvasWindow.destroy(win)
    rm(imgFile)
  end

  facts("update() should update front surface") do
    x = rand(1:width)
    y = rand(1:height)

    win = CanvasWindow.create(width, height)
    CanvasWindow.dot(win, x, y, UInt32((0xffffff & r.i << 16) | (0xffffffff & g.i << 8) | b.i))
    CanvasWindow.update(win)
    # grabbed from tkwidget.jl::reveal()
    Tk.render_to_cairo(win.canvas.c) do front
      Cairo.write_to_png(front, imgFile)
    end
    img = Images.load(imgFile)
    @fact img.data[x + xoffset, y].r --> r
    @fact img.data[x + xoffset, y].g --> g
    @fact img.data[x + xoffset, y].b --> b
    CanvasWindow.destroy(win)
    rm(imgFile)
  end

  facts("destroy() should destroy the window") do
    win = CanvasWindow.create(width, height, title)
    CanvasWindow.destroy(win)
    @fact_throws Tk.get_value(win.win) "Window should be destroyed"
  end
end