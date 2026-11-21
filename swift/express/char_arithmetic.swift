// LEVEL: LANGUAGE

let c: Character = "a"
let n = Int(c.asciiValue!) + 1
print(n)
let m: Int = c + 1 // REJECT!
