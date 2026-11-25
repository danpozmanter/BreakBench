def parse_order(line)
  parts = line.split(",")
  Integer(parts[2]) # BREAK!
  # CONTROL! Integer(parts[1])
end

begin
  puts parse_order("widget,5")
rescue => e
  puts "invalid order"
end
