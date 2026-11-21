function main()
    n = parse(Int, ARGS[1])
    name = if n == 1
        "one"
    elseif n == 2
        "two"
    else
        "other"
    end
    println(name)
end

main()
