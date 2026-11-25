grid = [[0] * 3] * 3  # CONTROL! grid = [[0] * 3 for _ in range(3)]
grid[0][0] = 1
print(sum(row.count(1) for row in grid))
