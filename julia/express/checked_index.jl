# LEVEL: STD

xs = [10, 20, 30]
v = get(xs, 5, nothing)
println(v === nothing ? "none" : v)
