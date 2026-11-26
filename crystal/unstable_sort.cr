record Order, customer : Int32, day : Int32

orders = (0...200).map { |day| Order.new(day * 7 % 5, day) }
orders.sort_by!(&.customer)
kept = orders.each_cons_pair.all? { |a, b| a.customer != b.customer || a.day < b.day }
puts kept ? "kept" : "scrambled"
