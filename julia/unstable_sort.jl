struct Order
    customer::Int
    day::Int
end

function main()
    orders = [Order(day * 7 % 5, day) for day in 0:199]
    sort!(orders, by = o -> o.customer)
    kept = all(a.customer != b.customer || a.day < b.day for (a, b) in zip(orders, orders[2:end]))
    println(kept ? "kept" : "scrambled")
end

main()
