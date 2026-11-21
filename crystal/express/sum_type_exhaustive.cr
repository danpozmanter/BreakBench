# LEVEL: LANGUAGE

record Circle, r : Float64
record Square, side : Float64
alias Shape = Circle | Square

def name(s : Shape)
  case s
  in Circle then "circle"
  in Square then "square"
  end
end

def bad(s : Shape) # REJECT!
  case s # REJECT!
  in Circle then "circle" # REJECT!
  end # REJECT!
end # REJECT!

shapes = [Circle.new(1.0), Square.new(2.0)] of Shape # REJECT!
puts bad(shapes[0]) # REJECT!
puts name(Circle.new(1.0))
