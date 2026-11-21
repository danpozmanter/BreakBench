isodd_(n) = n % 2 == 1

println(isodd_(parse(Int, ARGS[1])) ? "odd" : "even")
