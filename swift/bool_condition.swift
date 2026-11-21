func compare(_ a: String, _ b: String) -> Int { a == b ? 0 : (a < b ? -1 : 1) }

if compare("x", "x") == 0 { print("same") }
if compare("x", "x") { print("different") } // BREAK!
