def find(id) : Int32?
  id == 1 ? 36 : nil
end

puts "before"
STDOUT.flush
puts find(2).not_nil! + 1 # CONTROL! a = find(2); puts(a ? a + 1 : "missing")
