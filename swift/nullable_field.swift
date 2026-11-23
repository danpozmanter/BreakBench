struct User { let name: String? }

let decoded = User(name: nil)
print(decoded.name.count) // BREAK!
let _ = decoded.name?.count ?? 0 // CONTROL! let _ = decoded.name?.count ?? 0
