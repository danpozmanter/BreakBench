line = ARGV[0]
pos = line.index(":")
puts line[pos + 1..] # CONTROL! puts(pos.nil? ? "no colon" : line[pos + 1..])
