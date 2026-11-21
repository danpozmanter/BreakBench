proc total(a, b: int): int =
  return # CONTROL! return a + b
  a + b # BREAK!

echo total(2, 3)
