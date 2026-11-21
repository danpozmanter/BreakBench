xs = [1, 2, 3, 4, 5, 6]
evens = xs.lazy.select(&:even?)
total = evens.sum
count = evens.count
puts "#{total} #{count}"
