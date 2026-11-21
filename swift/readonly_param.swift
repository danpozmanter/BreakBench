func count(_ xs: [Int]) -> Int {
    xs[0] = 9 // BREAK!
    return xs.count
}

print(count([1, 2, 3]))
