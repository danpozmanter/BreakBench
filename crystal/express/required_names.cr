# LEVEL: LANGUAGE

def move(*, dx : Int32, dy : Int32)
  puts "#{dx} #{dy}"
end

move(dx: 3, dy: 4)
move(3, 4) # REJECT!
