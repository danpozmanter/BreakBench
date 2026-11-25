def parse_order(line : String) : Int32
  parts = line.split(",")
  parts[2].to_i # BREAK!
  # CONTROL! parts[1].to_i
end

begin
  puts parse_order("widget,5")
rescue
  puts "invalid order"
end
