proc make(): var int =
  var local = 4242
  result = local # BREAK!
  # CONTROL! var kept {.global.} = 0; kept = local; result = kept

proc clobber(): int =
  var junk: array[64, int]
  for j in junk.mitems: j = 7
  junk[63]

let r = make()
discard clobber()
echo r
