record User, name : String?

decoded = User.new(nil)
puts decoded.name.size # BREAK!
# CONTROL! puts decoded.name.not_nil!.size
