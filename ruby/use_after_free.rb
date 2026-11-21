Rec = Struct.new(:value)
a = Rec.new(1234)
b = a
a = nil
c = Rec.new(6666)
puts b.value
