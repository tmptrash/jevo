module TestCanvasWindow
  using FactCheck
  using CanvasWindow
  using Tk
  using Cairo

  facts("create() method should create and show window") do
  	title = "Test"
    win   = CanvasWindow.create(100, 100, title)
    @fact Tk.get_value(win.win) --> title "Window should be created"
    CanvasWindow.destroy(win)
    @fact_throws Tk.get_value(win.win) "Window should be destroyed"
  end
end