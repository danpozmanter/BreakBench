require "set"

seen = Set.new
key = [1, 2]
seen << key
key[0] = 9 # BREAK!
seen.each { |e| puts(seen.include?(e) ? "found" : "lost") }
