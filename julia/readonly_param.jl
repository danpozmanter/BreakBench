function count_items(xs::Vector{Int})
    sort!(xs)
    length(xs)
end

function main()
    items = [3, 1, 2]
    count_items(items)
    println(items[1])
end

main()
