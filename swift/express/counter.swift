// LEVEL: LANGUAGE

var counts: [String: Int] = [:]
for w in ["a", "b", "a"] { counts[w, default: 0] += 1 }
print("a=\(counts["a"]!) b=\(counts["b"]!)")
