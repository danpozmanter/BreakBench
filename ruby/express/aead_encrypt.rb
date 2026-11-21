# LEVEL: STD

require "openssl"

key = OpenSSL::Random.random_bytes(32)
iv = OpenSSL::Random.random_bytes(12)
enc = OpenSSL::Cipher.new("aes-256-gcm").encrypt
enc.key = key
enc.iv = iv
sealed = enc.update("secret") + enc.final
tag = enc.auth_tag

open = lambda do |data|
  dec = OpenSSL::Cipher.new("aes-256-gcm").decrypt
  dec.key = key
  dec.iv = iv
  dec.auth_tag = tag
  dec.update(data) + dec.final
end

puts open.call(sealed)
tampered = sealed.dup
tampered.setbyte(0, tampered.getbyte(0) ^ 1)
begin
  open.call(tampered)
  puts "accepted"
rescue OpenSSL::Cipher::CipherError
  puts "rejected"
end
