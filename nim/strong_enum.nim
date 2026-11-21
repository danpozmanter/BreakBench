type Color = enum
  red, green, blue

proc name(c: Color): string =
  case c
  of red: "red"
  of green: "green"
  of blue: "blue"

let c = green
echo name(7) # BREAK!
echo name(c)
