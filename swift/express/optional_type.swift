// LEVEL: LANGUAGE

let o: Int? = nil
let n = o + 1 // REJECT!
print(o == nil ? "none" : "some")
