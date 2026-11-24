def find_name(id : Int64) : String?
  id == 1 ? "alice" : nil
end

name = find_name(ARGV[0].to_i64)
puts "hello, #{name}" # CONTROL! puts "hello, #{name || "nobody"}"
