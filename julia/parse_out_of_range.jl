function main()
    n = parse(Int64, ARGS[1]) # CONTROL! n = tryparse(Int64, ARGS[1])
    println(n) # CONTROL! println(n === nothing ? "invalid" : n)
end

main()
