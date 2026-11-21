# LEVEL: STD

xs = sort([3.0, NaN, 1.0, 2.0])
println(join([isnan(x) ? "NaN" : string(Int(x)) for x in xs], " "))
