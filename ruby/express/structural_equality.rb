# LEVEL: LANGUAGE

P = Struct.new(:x, :y)

a = P.new(1, 2)
b = P.new(1, 2)
puts a == b ? "equal" : "different"
