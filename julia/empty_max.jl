function main()
    xs = parse.(Int, ARGS)
    println(maximum(xs) + 1) # CONTROL! println(isempty(xs) ? "no readings" : maximum(xs) + 1)
end

main()
