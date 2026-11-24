Point = Struct.new(:x, :y)

ps = [Point.new(3, 4), Point.new(1, 2)].sort # CONTROL! ps = [Point.new(3, 4), Point.new(1, 2)].sort_by(&:x)
puts ps[0].x
