def main():
    var grid = List[List[Int]](length=3, fill=List[Int](length=3, fill=0))
    grid[0][0] = 1
    var ones = 0
    for row in grid:
        for cell in row:
            if cell == 1:
                ones += 1
    print(ones)
