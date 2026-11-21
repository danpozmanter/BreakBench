# LEVEL: STD

require "openssl"

puts OpenSSL::HMAC.hexdigest("SHA256", "key", "The quick brown fox jumps over the lazy dog")
