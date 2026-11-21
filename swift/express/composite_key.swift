// LEVEL: LANGUAGE

struct Pair: Hashable { let a: Int, b: Int }

let s: Set = [Pair(a: 1, b: 2)]
print(s.contains(Pair(a: 1, b: 2)))
