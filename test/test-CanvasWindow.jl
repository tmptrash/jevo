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
  global width   = 234
  global height  = 345
  global r       = FixedPointNumbers.ufixed8(1.0)
  global g       = FixedPointNumbers.ufixed8(0.122)
  global b       = FixedPointNumbers.ufixed8(0.255)
  global title   = "Test"
  global imgFile = "test.png"

  function _dotOnFront(win::CanvasWindow.Window, x, y, r, g, b)
    Tk.render_to_cairo(win.canvas.c) do front
      Cairo.write_to_png(front, imgFile)
    end
    img = Images.load(imgFile)

    img.data[x, y].r === r &&
    img.data[x, y].g === g &&
    img.data[x, y].b === b
  end

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
    @fact img.data[x, y].r --> r
    @fact img.data[x, y].g --> g
    @fact img.data[x, y].b --> b
    CanvasWindow.destroy(win)
    rm(imgFile)
  end
  facts("dot(color) should draw pixels correctly on border positions") do
    col = UInt32((0xffffff & r.i << 16) | (0xffffffff & g.i << 8) | b.i)
    win = CanvasWindow.create(width, height)

    CanvasWindow.dot(win, 1, 1, col)
    CanvasWindow.dot(win, 1, height, col)
    CanvasWindow.dot(win, width, height, col)
    CanvasWindow.dot(win, width, 1, col)
    Cairo.write_to_png(win.canvas.back, imgFile)
    img = Images.load(imgFile)

    @fact img.data[1, 1].r --> r
    @fact img.data[1, 1].g --> g
    @fact img.data[1, 1].b --> b
    @fact img.data[1, height].r --> r
    @fact img.data[1, height].g --> g
    @fact img.data[1, height].b --> b
    @fact img.data[width, height].r --> r
    @fact img.data[width, height].g --> g
    @fact img.data[width, height].b --> b
    @fact img.data[width, 1].r --> r
    @fact img.data[width, 1].g --> g
    @fact img.data[width, 1].b --> b

    CanvasWindow.destroy(win)
    rm(imgFile)
  end
  facts("dot(color) should not draw a pixel out from surface") do
    col = UInt32((0xffffff & r.i << 16) | (0xffffffff & g.i << 8) | b.i)
    win = CanvasWindow.create(width, height)
    CanvasWindow.dot(win, -1, -1, col)
    CanvasWindow.dot(win, width + 1, height + 1, col)
    CanvasWindow.destroy(win)
  end

  facts("update() should update front surface") do
    x = rand(1:width)
    y = rand(1:height)

    win = CanvasWindow.create(width, height, title)
    CanvasWindow.dot(win, x, y, UInt32((0xffffff & r.i << 16) | (0xffffffff & g.i << 8) | b.i))
    CanvasWindow.update(win)
    _dotOnFront(win, x, y, r, g, b)
    CanvasWindow.destroy(win)
    rm(imgFile)
  end

  facts("destroy() should destroy the window") do
    win = CanvasWindow.create(width, height, title)
    CanvasWindow.destroy(win)
    @fact_throws Tk.get_value(win.win) "Window should be destroyed"
  end

  facts("Combined test of all functions") do
    win = CanvasWindow.create(width, height, title)
    @fact Tk.get_value(win.win) --> title

    # paint pixel on back surface
    x = 10
    y = 10
    CanvasWindow.dot(win, x, y, UInt32((0xffffff & r.i << 16) | (0xffffffff & g.i << 8) | b.i))
    _dotOnFront(win, x, y, 0, 0, 0)
    # paint another pixel on back surface
    x = 20
    y = 20
    CanvasWindow.dot(win, x, y, UInt32((0xffffff & r.i << 16) | (0xffffffff & g.i << 8) | b.i))
    _dotOnFront(win, x, y, 0, 0, 0)

    CanvasWindow.update(win)

    # checks pixel on front surface
    x = 10
    y = 10
    _dotOnFront(win, x, y, r, g, b)
    # checks pixel on front surface
    x = 20
    y = 20
    _dotOnFront(win, x, y, r, g, b)

    CanvasWindow.destroy(win)
    rm(imgFile)
  end
end