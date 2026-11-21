# LEVEL: STD

require "openssl"
require "random/secure"

key = Random::Secure.random_bytes(32)
iv = Random::Secure.random_bytes(12)

enc = OpenSSL::Cipher.new("aes-256-gcm")
enc.encrypt
enc.key = key
enc.iv = iv
cipher = IO::Memory.new
cipher.write(enc.update("secret"))
cipher.write(enc.final)
tag = enc.gcm_tag
sealed = cipher.to_slice

def open(sealed, tag, key, iv)
  dec = OpenSSL::Cipher.new("aes-256-gcm")
  dec.decrypt
  dec.key = key
  dec.iv = iv
  dec.gcm_tag = tag
  plain = IO::Memory.new
  plain.write(dec.update(sealed))
  plain.write(dec.final)
  String.new(plain.to_slice)
end

puts open(sealed, tag, key, iv)
sealed[0] ^= 1
begin
  open(sealed, tag, key, iv)
  puts "accepted"
rescue OpenSSL::Cipher::Error
  puts "rejected"
end
