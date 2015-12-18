push!(LOAD_PATH, pwd())
import CanvasWindow
#using Debug


win = CanvasWindow.create(300, 300)

function main()
  CanvasWindow.dot(win, 10, 10, 1, 0, 0)
  CanvasWindow.dot(win, 15, 15, 0, 1, 0)
  CanvasWindow.dot(win, 20, 20, 0, 0, 1)
  CanvasWindow.update(win)
end

main()