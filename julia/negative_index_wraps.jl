readings = [10, 20, 30]
i = parse(Int, ARGS[1]) + 1
println(readings[i] - readings[i - 1]) # CONTROL! println(i > 1 ? readings[i] - readings[i - 1] : "no previous")
