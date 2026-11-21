def add_item(item, cart = [])
  cart << item
  cart
end

add_item("x")
b = add_item("y")
puts b.length
