# LEVEL: STD

function main()
    n = parse(Int64, ARGS[1])
    try
        Base.checked_add(n, 1)
        println("ok")
    catch e
        e isa OverflowError ? println("overflow") : rethrow()
    end
end
main()
