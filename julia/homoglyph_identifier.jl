is_admin(user) = user == "root"
is_аdmin(user) = true # BREAK!

user = "guest"
println(is_admin("root") ? "admin" : "guest")
println(is_аdmin(user) ? "admin" : "guest") # CONTROL! println(is_admin(user) ? "admin" : "guest")
