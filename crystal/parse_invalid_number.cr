n = ARGV[0].to_i # CONTROL! n = ARGV[0].to_i?
puts n + 1 # CONTROL! puts(n.nil? ? "invalid" : n + 1)
