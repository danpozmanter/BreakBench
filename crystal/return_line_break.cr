def total(a : Int64, b : Int64) : Int64
  return # CONTROL! return a + b
  a + b # BREAK!
end

puts total(2_i64, 3_i64)
