def count(xs : Array(Int32)) : Int32
  xs.sort! # CONTROL! xs = xs.sort
  xs.size
end

items = [3, 1, 2]
count(items)
puts items[0]
