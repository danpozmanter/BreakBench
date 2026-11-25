grid = Array.new(3, Array.new(3, 0)) # CONTROL! grid = Array.new(3) { Array.new(3, 0) }
grid[0][0] = 1
puts grid.sum { |row| row.count(1) }
