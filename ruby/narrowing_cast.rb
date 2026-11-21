v = ARGV[0].to_i
b = [v].pack("C").unpack1("C")
puts b
