# LEVEL: LANGUAGE

puts(/\A(a+)+\z/.match?("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa!") ? "match" : "no match")
