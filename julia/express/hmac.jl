# LEVEL: STD

using SHA

println(bytes2hex(hmac_sha256(Vector{UInt8}("key"), "The quick brown fox jumps over the lazy dog")))
