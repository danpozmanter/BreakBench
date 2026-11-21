# LEVEL: LANGUAGE

n = parse(Int, ARGS[1])
try
    Vector{UInt8}(undef, n)
    println("allocated")
catch e
    e isa OutOfMemoryError ? println("allocation failed") : rethrow()
end
