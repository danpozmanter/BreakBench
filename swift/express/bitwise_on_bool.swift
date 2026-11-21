// LEVEL: LANGUAGE

let s = "abc"
if !s.isEmpty && s.first == "a" { print("yes") }
if (!s.isEmpty) & (s.first == "a") { print("both") } // REJECT!
