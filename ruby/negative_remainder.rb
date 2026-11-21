def odd?(n)
  n % 2 == 1
end

puts(odd?(ARGV[0].to_i) ? "odd" : "even")
