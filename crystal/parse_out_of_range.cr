n = ARGV[0].to_i64 # CONTROL! n = ARGV[0].to_i64?
puts n # CONTROL! puts(n.nil? ? "invalid" : n)
