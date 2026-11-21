struct User { let name: String }

func findUser(_ id: Int) -> User? {
    id == 1 ? User(name: "alice") : nil
}

let u = findUser(Int(CommandLine.arguments[1])!)
print(u.name.count) // BREAK!
print(u as Any)
