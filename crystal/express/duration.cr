# LEVEL: STD

total = 1.5.seconds + 500.milliseconds
wrong = total + 5 # REJECT!
puts total.total_milliseconds.to_i
