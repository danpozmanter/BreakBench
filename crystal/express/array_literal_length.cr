# LEVEL: LANGUAGE

table = StaticArray[10, 20, 30, 40]
puts table[3]
short : StaticArray(Int32, 4) = StaticArray[10, 20, 30] # REJECT!
puts short[0] # REJECT!
