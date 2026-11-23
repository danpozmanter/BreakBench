func isAdmin(_ user: String) -> Bool { user == "root" }
func isАdmin(_ user: String) -> Bool { true } // BREAK!

let user = "guest"
print(isAdmin("root") ? "admin" : "guest")
print(isАdmin(user) ? "admin" : "guest") // CONTROL! print(isAdmin(user) ? "admin" : "guest")
