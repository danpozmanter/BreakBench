a = "NaN".to_f
b = "NaN".to_f
s = Set{a}
puts s.includes?(b) ? "found" : "missing"
