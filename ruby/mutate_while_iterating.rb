xs = [1, 2, 2, 3]
xs.each do |x| # CONTROL! xs.reject! { |x| x == 2 }
  xs.delete_at(xs.index(x)) if x == 2 # BREAK!
end # BREAK!
puts xs.join(",")
