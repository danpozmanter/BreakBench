# LEVEL: STD

require "crypto/bcrypt/password"

stored = Crypto::Bcrypt::Password.create("hunter2")
puts "#{stored.verify("hunter2")} #{stored.verify("wrong")}"
