User = Struct.new(:name)

def find_user(id)
  id == 1 ? User.new("alice") : nil
end

u = find_user(ARGV[0].to_i)
puts u.name.length # CONTROL! puts(u.nil? ? "missing" : u.name.length)
