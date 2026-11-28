require "json"

depth = ARGV[0].to_i
# CONTROL! if depth > 1000 then puts "refused"; exit end
JSON.parse("[" * depth + "]" * depth)
puts "parsed"
