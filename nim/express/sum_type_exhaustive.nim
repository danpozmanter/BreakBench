# LEVEL: LANGUAGE

type
  Kind = enum kCircle, kSquare
  Shape = object
    case kind: Kind
    of kCircle: r: float
    of kSquare: side: float

proc name(s: Shape): string =
  case s.kind
  of kCircle: "circle"
  of kSquare: "square"

proc bad(s: Shape): string = # REJECT!
  case s.kind # REJECT!
  of kCircle: "circle" # REJECT!

echo bad(Shape(kind: kCircle, r: 1.0)) # REJECT!
echo name(Shape(kind: kCircle, r: 1.0))
