xs = [5.0, NaN, 3.0, 1.0, NaN, 4.0, 2.0]
sort!(xs)
finite = filter(!isnan, xs)
println(issorted(finite) ? "ordered" : "unordered")
