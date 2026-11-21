# LEVEL: LANGUAGE

def inner = caller_locations(0)

puts(inner.any? { |l| l.label.include?("inner") } ? "inner" : "missing")
