import CanvasWindow
#using Debug


win = CanvasWindow.create(50, 50)

function main()
  CanvasWindow.dot(win, 10, 10, 1, 0, 0)
  CanvasWindow.dot(win, 20, 20, 0, 1, 0)
  CanvasWindow.dot(win, 30, 30, 0, 0, 1)
  CanvasWindow.update(win)
end

main()