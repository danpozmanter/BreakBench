function main()
    a = parse(Int64, ARGS[1])
    b = parse(Int64, ARGS[2])
    println(div(a, b)) # CONTROL! println(div(Int128(a), b))
end

main()
