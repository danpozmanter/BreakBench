def is_admin(user)
  user == "root"
end

def is_аdmin(_user) = true # BREAK!

user = "guest"
puts(is_admin("root") ? "admin" : "guest")
puts(is_аdmin(user) ? "admin" : "guest") # CONTROL! puts(is_admin(user) ? "admin" : "guest")
