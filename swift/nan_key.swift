let a = Double("nan")!
let b = Double("nan")!
let s: Set<Double> = [a]
print(s.contains(b) ? "found" : "missing")
