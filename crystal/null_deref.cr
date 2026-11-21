record User, name : String

def find_user(id : Int64) : User?
  id == 1 ? User.new("alice") : nil
end

u = find_user(ARGV[0].to_i64)
puts u.name.size # BREAK!
p u
