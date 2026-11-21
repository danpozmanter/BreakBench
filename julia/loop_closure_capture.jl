function main()
    fs = Function[]
    for i in 0:2
        push!(fs, () -> i)
    end
    println(join([f() for f in fs], ","))
end

main()
