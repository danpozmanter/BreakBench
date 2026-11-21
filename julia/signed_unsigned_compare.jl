function main()
    xs = [1, 2, 3]
    i = parse(Int, ARGS[1])
    println(i < length(xs) ? "less" : "not less")
end

main()
