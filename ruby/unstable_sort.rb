Order = Struct.new(:customer, :day)

orders = (0...200).map { |day| Order.new(day * 7 % 5, day) }
# UNDEFINED: sort_by is not guaranteed to be stable
sorted = orders.sort_by(&:customer) # CONTROL! sorted = orders.sort_by { |o| [o.customer, o.day] }
kept = sorted.each_cons(2).all? { |a, b| a.customer != b.customer || a.day < b.day }
puts(kept ? "kept" : "scrambled")
