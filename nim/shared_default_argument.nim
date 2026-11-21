proc addItem(item: string, cart: seq[string] = @[]): seq[string] =
  result = cart
  result.add item

discard addItem("x")
let b = addItem("y")
echo b.len
