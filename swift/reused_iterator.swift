let xs = [1, 2, 3, 4, 5, 6]
let evens = xs.lazy.filter { $0 % 2 == 0 }
let total = evens.reduce(0, +)
let count = evens.count
print(total, count)
