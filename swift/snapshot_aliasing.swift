func applyUpdate(_ weights: inout [Int]) {
    weights[1] = 5
    weights[3] = 0
}

var weights = [3, 3, 3, 3]
let before = weights
applyUpdate(&weights)
var changes = 0
for i in weights.indices where before[i] != weights[i] {
    changes += 1
}
print(changes)
