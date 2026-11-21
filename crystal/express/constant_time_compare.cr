# LEVEL: STD

require "crypto/subtle"

a = Bytes.new(16, 7_u8)
b = Bytes.new(16, 7_u8)
puts(Crypto::Subtle.constant_time_compare(a, b) ? "equal" : "different")
