def add_item(item: str, cart: list[str] = []) -> list[str]: # CONTROL! def add_item(item: str, cart: list[str] | None = None) -> list[str]:
    # CONTROL! if cart is None: cart = []
    cart.append(item)
    return cart


add_item("x")
b = add_item("y")
print(len(b))
