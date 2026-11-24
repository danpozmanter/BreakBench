function main()
    xs = [1, 2, 2, 3]
    for x in xs # CONTROL! filter!(x -> x != 2, xs)
        if x == 2 # BREAK!
            deleteat!(xs, findfirst(==(x), xs)) # BREAK!
        end # BREAK!
    end # BREAK!
    println(join(xs, ","))
end

main()
