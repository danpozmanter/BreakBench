# LEVEL: LANGUAGE

def inner
  caller
end

puts(inner.any?(&.includes?("inner")) ? "inner" : "missing")
