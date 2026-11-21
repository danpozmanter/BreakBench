# LEVEL: LANGUAGE

type Rec = ref object
  id: int
  data: array[1016, byte]

var last = Rec(id: 0)
for i in 0 ..< 4_000_000:
  last = Rec(id: i)
echo last.id
