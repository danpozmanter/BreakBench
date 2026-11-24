class Shape
  def describe = "shape"
end

class Circle < Shape
  def descibe = "circle" # CONTROL! def describe = "circle"
end

puts Circle.new.describe
