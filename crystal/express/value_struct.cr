# LEVEL: LANGUAGE

struct P
  property x : Int32

  def initialize(@x)
  end
end

a = P.new(1)
b = a
b.x = 9
puts a.x
