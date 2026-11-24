def add(a, b)
  a + b
end

raw = ARGV[0]
puts add(raw, 3) # CONTROL! puts add(Integer(raw), 3)
