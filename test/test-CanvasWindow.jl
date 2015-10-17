module TestCanvasWindow
  using FactCheck
  using CanvasWindow
  using Tk
  using Cairo

  facts("create() method should create and show window") do
    win = CanvasWindow.create(100, 100, "Test")
    @fact Tk.get_value(win.win) --> "Test" "Window should be created"
    CanvasWindow.destroy(win)
    @fact_throws Tk.get_value(win.win) "Window should be destroyed"
  end

  facts("dot() method should draw the pixel") do

  end
end