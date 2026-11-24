def walk(n)
  return 0 if n.zero?

  (walk(n - 1) * 31 + n) % 1_000_000_007
end

puts walk(ARGV[0].to_i) # CONTROL! n = ARGV[0].to_i; m = 1_000_000_007; puts (31.pow(n + 1, m) - 31 * (n + 1) + n) * 900.pow(m - 2, m) % m
