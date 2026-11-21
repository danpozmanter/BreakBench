# LEVEL: LANGUAGE

c = 'a'
n = c.ord + 1
puts n
m : Int32 = c + 1 # REJECT!
puts m # REJECT!
