struct User { let name: String }

var users = [User?](repeating: nil, count: 3)
users[1] = User(name: "bob")
users[2] = User(name: "carol")
print(users[0].name.count) // BREAK!
// CONTROL! print(users[0]?.name.count ?? 0)
