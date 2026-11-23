record User, name : String

users = Array(User?).new(3, nil)
users[1] = User.new("bob")
users[2] = User.new("carol")
puts users[0].name.size # BREAK!
# CONTROL! puts users[0].try(&.name.size)
