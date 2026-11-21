Point = Struct.new(:x, :y)

ps = [Point.new(3, 4), Point.new(1, 2)].sort
puts ps[0].x
