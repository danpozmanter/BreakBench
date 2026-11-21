x = parse(Int, ARGS[1])
even = x & 1 == 0
println(even ? "even" : "odd")
