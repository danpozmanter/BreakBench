# LEVEL: STD

using Random

println(bytes2hex(rand(RandomDevice(), UInt8, 16)))
