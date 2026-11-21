enum Color
  Red
  Green
  Blue
end

puts "before"
c = Color.from_value?(ARGV[0].to_i)
puts c.nil? ? "invalid" : c
