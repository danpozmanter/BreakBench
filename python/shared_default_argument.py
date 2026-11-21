def add_item(item, cart=[]):
    cart.append(item)
    return cart


add_item("x")
b = add_item("y")
print(len(b))
