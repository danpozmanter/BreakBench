# LEVEL: LANGUAGE

record Point, x : Int32, y : Int32

xs = [3, 1, 2]
xs.sort!
ps = [Point.new(1, 2)]; ps.sort! # REJECT!
puts xs[0]
