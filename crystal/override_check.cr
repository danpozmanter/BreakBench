class Shape
  def describe
    "shape"
  end
end

class Circle < Shape
  def descibe # CONTROL! def describe
    "circle"
  end
end

s : Shape = Circle.new
puts s.describe
