function main()
    xs = [1, 2, 2, 3]
    for x in xs
        if x == 2
            deleteat!(xs, findfirst(==(x), xs))
        end
    end
    println(join(xs, ","))
end

main()
