module TestCanvasWindow
  using FactCheck
  using CanvasWindow
  using Tk
  using Cairo
  using Images
  using FixedPointNumbers

  begin
    #
    # Shared variables for all tests...
    #
    xoffset = 1
    width   = 100
    height  = 100
    r       = FixedPointNumbers.ufixed8(1.0)
    g       = FixedPointNumbers.ufixed8(0.122)
    b       = FixedPointNumbers.ufixed8(0.255)
    imgFile = "test.png"

    function _dot(dotFn::Function)
      x = rand(1:width)
      y = rand(1:height)

      win = CanvasWindow.create(width, height)
      dotFn(win, x, y)
      Cairo.write_to_png(win.canvas.back, imgFile)
      img = Images.imread(imgFile)
      @fact img.data[x + xoffset, y].r --> r
      @fact img.data[x + xoffset, y].g --> g
      @fact img.data[x + xoffset, y].b --> b
      CanvasWindow.destroy(win)
      rm(imgFile)
    end


    facts("create() should create and show window") do
      win = CanvasWindow.create(width, height, "Test")
      @fact Tk.get_value(win.win) --> "Test" "Window should be created"
      CanvasWindow.destroy(win)
      @fact_throws Tk.get_value(win.win) "Window should be destroyed"
    end

    #
    # HACK: I didn't find a possibility to get a pixel from
    # HACK: canvas by (x,y) coordinates. But it's possible to
    # HACK: save it to the file and load into the 2 dimentional
    # HACK: array using Images package. Temporary png file will
    # HACK: be removed after the test.
    #
    # facts("dot(r,g,b) should draw a pixel") do
    #   _dot((win, x, y) -> CanvasWindow.dot(win, x, y, r, g, b))
    # end

    facts("dot(color) should draw a pixel") do
      _dot((win, x, y) -> CanvasWindow.dot(win, x, y, uint32((0xffffff & r.i << 16) | (0xffffffff & g.i << 8) | b.i)))
    end
  end
end