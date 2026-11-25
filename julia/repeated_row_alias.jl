function main()
    grid = fill(fill(0, 3), 3) # CONTROL! grid = [fill(0, 3) for _ in 1:3]
    grid[1][1] = 1
    println(count(==(1), Iterators.flatten(grid)))
end

main()
