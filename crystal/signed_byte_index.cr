counts = Array.new(256, 0)
ARGV[0].each_byte { |b| counts[b] += 1 }
puts counts[128..].sum
