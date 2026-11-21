# LEVEL: LANGUAGE

Rec = Struct.new(:id, :data)

last = Rec.new(0, "")
4_000_000.times { |i| last = Rec.new(i, "\0" * 1016) }
puts last.id
