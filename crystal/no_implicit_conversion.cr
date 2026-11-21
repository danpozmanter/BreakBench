big = 42_i64
small = big.to_i32
wrong : Int32 = big # BREAK!
puts small
