def add_item(item: str, cart: list[str] = []) -> list[str]:
    cart.append(item)
    return cart


add_item("x")
b = add_item("y")
print(len(b))
