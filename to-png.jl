using Images
include("AppCanvasWindow.jl")
Cairo.write_to_png(win.canvas.back, "test.png")
img = Images.imread("test.png")
img.data[10, 10]