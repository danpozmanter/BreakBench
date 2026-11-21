# LEVEL: LANGUAGE

type
  KindA = object of CatchableError
  KindB = object of CatchableError

proc step(a: bool) =
  try:
    if a: raise newException(KindA, "A") else: raise newException(KindB, "B")
  except KindA:
    echo "caught A"

step(true)
try:
  step(false)
except KindB:
  echo "passed B"
