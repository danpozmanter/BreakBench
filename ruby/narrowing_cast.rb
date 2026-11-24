v = ARGV[0].to_i
# CONTROL! if v < 0 || v > 255 then puts "out of range"; exit end
b = [v].pack("C").unpack1("C")
puts b
