func addItem(_ item: String, _ cart: [String] = []) -> [String] {
    var cart = cart
    cart.append(item)
    return cart
}

_ = addItem("x")
let b = addItem("y")
print(b.count)
