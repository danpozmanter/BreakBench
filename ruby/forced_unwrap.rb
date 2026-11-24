def find(id)
  id == 1 ? 36 : nil
end

puts "before"
$stdout.flush
puts find(2) + 1 # CONTROL! a = find(2); puts(a ? a + 1 : "missing")
