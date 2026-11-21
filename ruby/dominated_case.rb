class Shape; end
class Circle < Shape; end

def describe(s)
  case s
  in Shape then "other"
  in Circle then "circle"
  end
end

puts describe(Circle.new)
