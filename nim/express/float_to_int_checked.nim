# LEVEL: LANGUAGE

let x = NaN
try:
  discard int64(x)
  echo "fits"
except RangeDefect:
  echo "does not fit"
