def walk(n : Int64) : Int64
  return 0_i64 if n == 0
  (walk(n - 1) * 31 + n) % 1_000_000_007
end

puts walk(ARGV[0].to_i64) # CONTROL! n = ARGV[0].to_i64; acc = 0_i64; (1_i64..n).each { |i| acc = (acc * 31 + i) % 1_000_000_007 }; puts acc
