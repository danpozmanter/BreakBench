n = parse(Int, ARGS[1])
buf = zeros(UInt8, n)
buf[end] = 1
println(length(buf))
