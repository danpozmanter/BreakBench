count = parse(Int, ARGS[1])
nbytes = count * 8
records = zeros(UInt8, nbytes)
records[9] = 99
println("stored")
