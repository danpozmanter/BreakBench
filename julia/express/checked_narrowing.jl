# LEVEL: STD

function main()
    v = parse(Int, ARGS[1])
    try
        UInt8(v)
        println("fits")
    catch e
        e isa InexactError ? println("does not fit") : rethrow()
    end
end
main()
