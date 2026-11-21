enum Color
  Red
  Green
  Blue
end

def name(c : Color) : String
  case c
  in .red?   then "red"
  in .green? then "green"
  in .blue?  then "blue"
  end
end

c = Color::Green
puts name(7) # BREAK!
puts name(c)
