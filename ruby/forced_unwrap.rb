def find(id)
  id == 1 ? 36 : nil
end

puts "before"
$stdout.flush
puts find(2) + 1
