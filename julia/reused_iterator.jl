xs = [1, 2, 3, 4, 5, 6]
evens = Iterators.filter(iseven, xs)
total = sum(evens)
count = length(collect(evens))
println("$total $count")
