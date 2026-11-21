function add_item(item, cart = String[])
    push!(cart, item)
    return cart
end

add_item("x")
b = add_item("y")
println(length(b))
