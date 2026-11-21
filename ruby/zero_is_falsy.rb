qty = ARGV[0] && ARGV[0].to_i
if qty
  puts "have #{qty}"
else
  puts "missing"
end
