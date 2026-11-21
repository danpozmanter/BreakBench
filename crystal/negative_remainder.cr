def odd?(n : Int64) : Bool
  n % 2 == 1
end

puts(odd?(ARGV[0].to_i64) ? "odd" : "even")
