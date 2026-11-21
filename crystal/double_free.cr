class Rec
  property value : Int64
  def initialize(@value); end
end

a : Rec? = Rec.new(0)
a = nil
a = nil
x = Rec.new(1)
y = Rec.new(2)
puts x.value
