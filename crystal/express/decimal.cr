# LEVEL: STD

require "big"

a = BigDecimal.new("0.1") + BigDecimal.new("0.2")
puts(a == BigDecimal.new("0.3") ? "equal" : "not equal")
