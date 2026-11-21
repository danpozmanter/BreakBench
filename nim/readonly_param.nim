proc count(xs: seq[int]): int =
  xs[0] = 9 # BREAK!
  xs.len

echo count(@[1, 2, 3])
