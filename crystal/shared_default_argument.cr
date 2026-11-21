def add_item(item : String, cart = [] of String)
  cart << item
  cart
end

add_item("x")
b = add_item("y")
puts b.size
