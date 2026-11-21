require "set"

zero = ARGV.size.to_f
a = zero / zero
b = zero / zero
s = Set[a]
puts s.include?(b) ? "found" : "missing"
