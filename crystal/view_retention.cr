n = ARGV[0].to_i
heads = [] of Bytes
prefixes = [] of String
n.times do |i|
  buf = Bytes.new(32768, (i & 255).to_u8)
  heads << buf[0, 16]
  big = ('a' + i % 26).to_s * 32768
  prefixes << big[0, 16]
end
puts heads.size
