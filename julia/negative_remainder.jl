isodd_(n) = n % 2 == 1 # CONTROL! isodd_(n) = n % 2 != 0

println(isodd_(parse(Int, ARGS[1])) ? "odd" : "even")
