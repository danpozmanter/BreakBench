# LEVEL: STD

try
    Int64(NaN)
    println("fits")
catch e
    e isa InexactError ? println("does not fit") : rethrow()
end
