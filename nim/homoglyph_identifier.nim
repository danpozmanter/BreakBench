proc isAdmin(user: string): bool = user == "root"
proc isАdmin(user: string): bool = true # BREAK!

let user = "guest"
echo(if isAdmin("root"): "admin" else: "guest")
echo(if isАdmin(user): "admin" else: "guest") # CONTROL! echo(if isAdmin(user): "admin" else: "guest")
