# LEVEL: LANGUAGE

proc use(fail: bool) =
  defer: echo "released"
  if fail: raise newException(ValueError, "bad")

use(false)
try:
  use(true)
except ValueError:
  discard
