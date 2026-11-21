# LEVEL: STD

s = String.new(Bytes[0x61, 0xFF])
puts(s.valid_encoding? ? "valid" : "invalid")
