# LEVEL: STD

require "openssl"

a = "\x07" * 16
b = "\x07" * 16
puts(OpenSSL.fixed_length_secure_compare(a, b) ? "equal" : "different")
