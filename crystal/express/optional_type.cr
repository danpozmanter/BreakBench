# LEVEL: LANGUAGE

o = [nil, 1][ARGV.size]
n = o + 1 # REJECT!
puts(o.nil? ? "none" : "some")
