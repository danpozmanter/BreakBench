// LEVEL: LANGUAGE

func count(_ xs: [Int]) -> Int {
    xs[0] = 9 // REJECT!
    return xs.count
}

print(count([1, 2, 3]))
