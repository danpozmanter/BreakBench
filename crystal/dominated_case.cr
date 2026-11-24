enum Shape
  Circle
  Square
end

def describe(s : Shape)
  case s
  when Shape then "other" # CONTROL! when .circle? then "circle"
  when .circle? then "circle" # CONTROL! when Shape then "other"
  end
end

puts describe(Shape::Circle)
