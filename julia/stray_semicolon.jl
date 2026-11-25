function size_label(n)
    label = "small"
    if n > 5; # CONTROL! if n > 5
        label = "big"
    end
    return label
end

function main()
    println(size_label(parse(Int, ARGS[1])))
    println(size_label(parse(Int, ARGS[2])))
end

main()
