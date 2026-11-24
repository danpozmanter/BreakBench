xs = ARGV.map(&:to_i)
puts xs.max + 1 # CONTROL! puts(xs.empty? ? "no readings" : xs.max + 1)
