# LEVEL: LANGUAGE

s = [0x61, 0xFF].pack("C*").force_encoding("UTF-8")
puts(s.valid_encoding? ? "valid" : "invalid")
