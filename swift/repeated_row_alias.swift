var grid = Array(repeating: Array(repeating: 0, count: 3), count: 3)
grid[0][0] = 1
print(grid.reduce(0) { $0 + $1.filter { $0 == 1 }.count })
