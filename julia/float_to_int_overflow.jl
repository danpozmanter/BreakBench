function main()
    x = parse(Float64, ARGS[1])
    v = Int64(x) # CONTROL! v = BigInt(x)
    println(v)
end

main()
