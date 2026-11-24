xs = [5.0, Float64::NAN, 3.0, 1.0, Float64::NAN, 4.0, 2.0]
sorted = xs.sort # CONTROL! sorted = xs.reject(&.nan?).sort
finite = sorted.reject(&.nan?)
puts(finite.each_cons_pair.all? { |a, b| a <= b } ? "ordered" : "unordered")
