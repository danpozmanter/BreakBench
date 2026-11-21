n = ARGV[0].to_i
heads = []
prefixes = []
n.times do |i|
  buf = (i & 255).chr.b * 32768
  heads << buf[0, 16]
  big = (97 + i % 26).chr * 32768
  prefixes << big[0, 16]
end
puts heads.size
