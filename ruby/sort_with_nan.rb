xs = [5.0, Float::NAN, 3.0, 1.0, Float::NAN, 4.0, 2.0]
sorted = xs.sort # CONTROL! sorted = xs.reject(&:nan?).sort
finite = sorted.reject(&:nan?)
puts(finite.each_cons(2).all? { |a, b| a <= b } ? "ordered" : "unordered")
