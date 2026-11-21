enum Color
  Red
  Green
  Blue
end

def name(c : Color) : String
  case c
  in .red?   then "red"
  in .green? then "green"
  # CONTROL! in .blue? then "blue"
  end
end

puts name(Color.new(ARGV[0].to_i))
