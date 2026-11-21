def walk(n : Int64) : Int64
  return 0_i64 if n == 0
  (walk(n - 1) * 31 + n) % 1_000_000_007
end

puts walk(ARGV[0].to_i64)
