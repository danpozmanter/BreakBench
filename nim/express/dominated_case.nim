# LEVEL: LANGUAGE

type Shape = enum
  circle, square

proc describe(s: Shape): string =
  case s
  of circle: "circle"
  else: "other"

proc bad(s: Shape): string = # REJECT!
  case s # REJECT!
  else: "other" # REJECT!
  of circle: "circle" # REJECT!

echo describe(square)
echo bad(square) # REJECT!
