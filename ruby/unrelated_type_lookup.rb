ids = [10, 20, 30]
id = ARGV[0]
puts(ids.include?(id) ? "found" : "missing") # CONTROL! puts(ids.include?(Integer(id)) ? "found" : "missing")
