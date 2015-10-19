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

    win = CanvasWindow.create(100, 100, "Test")
    CanvasWindow.dot(win, 10, 10, 1.0, 0.122, 0.255)
    Cairo.write_to_png(win.canvas.back, "test.png")
    img = Images.imread("test.png")
    println(img.data[10 + xoffset, 10].r)
    println(img.data[10 + xoffset, 10].g)
    println(img.data[10 + xoffset, 10].b)

    @fact img.data[10 + xoffset, 10].r --> FixedPointNumbers.ufixed8(1.0)
    @fact img.data[10 + xoffset, 10].g --> FixedPointNumbers.ufixed8(0.122)
    @fact img.data[10 + xoffset, 10].b --> FixedPointNumbers.ufixed8(0.255)
    CanvasWindow.destroy(win)
  end
end