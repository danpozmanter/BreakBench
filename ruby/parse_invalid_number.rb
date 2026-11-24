n = ARGV[0].to_i # CONTROL! n = Integer(ARGV[0], exception: false)
puts n + 1 # CONTROL! puts(n.nil? ? "invalid" : n + 1)
