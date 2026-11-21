s = ""
puts (!s.empty?) & (s[0] == 'a') ? "yes" : "no" # CONTROL! puts !s.empty? && s[0] == 'a' ? "yes" : "no"
