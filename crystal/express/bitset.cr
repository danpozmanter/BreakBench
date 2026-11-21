# LEVEL: STD

require "bit_array"

b = BitArray.new(1024)
b[1000] = true
puts "#{b[1000]} #{b[999]}"
