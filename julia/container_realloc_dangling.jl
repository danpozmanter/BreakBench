mutable struct Item
    val::Int
end

function main()
    v = [Item(1)]
    r = v[1]
    for i in 0:999
        push!(v, Item(i))
    end
    w = [Item(7)]
    r.val = 99
    println(w[1].val)
end

main()
