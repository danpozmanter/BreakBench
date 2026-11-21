seen = Set(Array(Int32)).new
key = [1, 2]
seen << key
key[0] = 9
seen.each { |e| puts(seen.includes?(e) ? "found" : "lost") }
