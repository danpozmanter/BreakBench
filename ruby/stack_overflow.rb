def walk(n)
  return 0 if n.zero?

  (walk(n - 1) * 31 + n) % 1_000_000_007
end

puts walk(ARGV[0].to_i)
