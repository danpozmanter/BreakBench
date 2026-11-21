# LEVEL: STD

require "openssl"

salt = OpenSSL::Random.random_bytes(16)
derive = ->(password) { OpenSSL::KDF.pbkdf2_hmac(password, salt: salt, iterations: 600_000, length: 32, hash: "sha256") }
stored = derive.call("hunter2")
puts "#{OpenSSL.fixed_length_secure_compare(stored, derive.call("hunter2"))} #{OpenSSL.fixed_length_secure_compare(stored, derive.call("wrong"))}"
