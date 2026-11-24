xs = [1, 2, 3, 4, 5, 6]
evens = xs.each.select(&.even?) # CONTROL! evens = xs.select(&.even?)
total = evens.sum
count = evens.size
puts "#{total} #{count}"
