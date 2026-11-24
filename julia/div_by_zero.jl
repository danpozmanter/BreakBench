function main()
    d = parse(Int, ARGS[1])
    println(100 ÷ d) # CONTROL! println(d == 0 ? "cannot divide" : 100 ÷ d)
end

main()
