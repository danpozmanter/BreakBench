# LEVEL: LANGUAGE

var hits = 0

func square(x: int): int = x * x

func squareCounted(x: int): int = (inc hits; x * x) # REJECT!

echo square(7)
echo squareCounted(7) # REJECT!
