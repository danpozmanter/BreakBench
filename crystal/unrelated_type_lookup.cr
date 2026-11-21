ids = [10, 20, 30]
id = ARGV[0]
puts(ids.includes?(id) ? "found" : "missing") # CONTROL! puts(ids.includes?(id.to_i) ? "found" : "missing")
