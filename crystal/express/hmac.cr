# LEVEL: STD

require "openssl/hmac"

puts OpenSSL::HMAC.hexdigest(:sha256, "key", "The quick brown fox jumps over the lazy dog")
