User = Struct.new(:name)
decoded = User.new(nil)
puts decoded.name.length # CONTROL! puts(decoded.name.nil? ? "no name" : decoded.name.length)
