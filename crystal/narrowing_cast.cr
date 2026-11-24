v = ARGV[0].to_i
b = v.to_u8 # CONTROL! b = (0..255).includes?(v) ? v.to_u8 : nil
puts b # CONTROL! puts(b.nil? ? "out of range" : b)
