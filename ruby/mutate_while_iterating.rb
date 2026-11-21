xs = [1, 2, 2, 3]
xs.each do |x|
  xs.delete_at(xs.index(x)) if x == 2
end
puts xs.join(",")
