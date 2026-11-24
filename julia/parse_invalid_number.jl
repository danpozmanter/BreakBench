function main()
    n = parse(Int, ARGS[1]) # CONTROL! n = tryparse(Int, ARGS[1])
    println(n + 1) # CONTROL! println(n === nothing ? "invalid" : n + 1)
end

main()
