enum Shape
  Circle
  Square
end

def describe(s : Shape)
  case s
  when Shape then "other"
  when .circle? then "circle"
  end
end

puts describe(Shape::Circle)
