function main()
    n = parse(Int64, ARGS[1])
    println(n + 1) # CONTROL! println(Int128(n) + 1)
end

main()
