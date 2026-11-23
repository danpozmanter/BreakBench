def is_admin(user : String) : Bool
  user == "root"
end

def is_аdmin(user : String) : Bool; true; end # BREAK!

user = "guest"
puts(is_admin("root") ? "admin" : "guest")
puts(is_аdmin(user) ? "admin" : "guest") # CONTROL! puts(is_admin(user) ? "admin" : "guest")
