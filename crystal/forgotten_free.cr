class Rec
  getter data = Bytes.new(4096, 1_u8)
end

n = ARGV[0].to_i
seen = 0
n.times do
  rec = Rec.new
  seen += rec.data[0]
end
puts(seen == n ? "done" : "lost")
