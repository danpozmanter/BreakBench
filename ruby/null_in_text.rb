def find_name(id)
  id == 1 ? "alice" : nil
end

name = find_name(ARGV[0].to_i)
puts "hello, #{name}"
