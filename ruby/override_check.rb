class Shape
  def describe = "shape"
end

class Circle < Shape
  def descibe = "circle"
end

puts Circle.new.describe
