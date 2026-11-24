xs = ARGV.map(&.to_i64)
puts xs.max + 1 # CONTROL! puts(xs.empty? ? "no readings" : xs.max + 1)
