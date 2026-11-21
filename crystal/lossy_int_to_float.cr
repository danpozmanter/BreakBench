def show(f : Float64)
  puts f
end

n = 7_i64
show(n.to_f64)
show(n) # BREAK!
