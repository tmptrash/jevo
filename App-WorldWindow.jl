import WorldWindow


win = WorldWindow.create(uint(50), uint(50))
WorldWindow.dot(win, 10, 10, 1, 0, 0)
WorldWindow.dot(win, 20, 20, 0, 1, 0)
WorldWindow.dot(win, 30, 30, 0, 0, 1)
WorldWindow.update(win)