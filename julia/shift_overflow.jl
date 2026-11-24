function main()
    s = parse(Int, ARGS[1])
    println(UInt64(1) << s) # CONTROL! println(UInt128(1) << s)
end

main()
