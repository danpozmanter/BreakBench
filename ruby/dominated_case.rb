class Shape; end
class Circle < Shape; end

def describe(s)
  case s
  in Shape then "other" # CONTROL! in Circle then "circle"
  in Circle then "circle" # CONTROL! in Shape then "other"
  end
end

puts describe(Circle.new)
