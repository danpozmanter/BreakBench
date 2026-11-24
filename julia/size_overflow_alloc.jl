count = parse(Int, ARGS[1])
# CONTROL! count > 2^27 && (println("too large"); exit(0))
nbytes = count * 8
records = zeros(UInt8, nbytes)
records[9] = 99
println("stored")
