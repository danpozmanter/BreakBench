type Shape = enum
  circle, square

proc describe(s: Shape): string =
  case s
  else: "other" # BREAK!
  of circle: "circle"
  # CONTROL! else: "other"

echo describe(circle)
