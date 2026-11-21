def add_item(item: String, var cart: List[String] = List[String]()) -> List[String]:
    cart.append(item)
    return cart^


def main():
    _ = add_item("x")
    var b = add_item("y")
    print(len(b))
