module TestCanvasWindow
  using FactCheck
  using CanvasWindow
  using Tk

  facts("Testing create() method") do
    win = CanvasWindow.create(100, 100, "Test")
    @fact Tk.get_value(win.win) --> "Test"
    CanvasWindow.destroy(win)
  end

  # TODO: getPixel???
end