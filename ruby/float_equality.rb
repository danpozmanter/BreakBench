x = Float(ARGV[0])
y = Float(ARGV[1])
a = x + y
puts(a == 0.3 ? "equal" : "not equal") # CONTROL! puts((a - 0.3).abs < 1e-9 ? "equal" : "not equal")
