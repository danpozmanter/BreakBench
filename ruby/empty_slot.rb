User = Struct.new(:name)

users = Array.new(3)
users[1] = User.new("bob")
users[2] = User.new("carol")
puts users[0].name.length # CONTROL! puts(users[0].nil? ? "missing" : users[0].name.length)
