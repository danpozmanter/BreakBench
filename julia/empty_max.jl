function main()
    xs = parse.(Int, ARGS)
    println(maximum(xs) + 1)
end

main()
