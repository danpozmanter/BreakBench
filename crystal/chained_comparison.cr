x = ARGV[0].to_i
inside = 1 < x < 3 # BREAK!
# CONTROL! inside = 1 < x && x < 3
puts(inside ? "inside" : "outside")
