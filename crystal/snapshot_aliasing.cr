def apply_update(weights)
  weights[1] = 5
  weights[3] = 0
end

weights = [3, 3, 3, 3]
before = weights # CONTROL! before = weights.dup
apply_update(weights)
puts before.zip(weights).count { |b, w| b != w }
