n = parse(Int, ARGS[1])
# CONTROL! n > 2^30 && (println("too large"); exit(0))
buf = zeros(UInt8, n)
buf[end] = 1
println(length(buf))
