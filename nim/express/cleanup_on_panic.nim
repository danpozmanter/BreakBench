# LEVEL: LANGUAGE

proc work() =
  try:
    raise newException(ValueError, "boom")
  finally:
    echo "cleanup"

try:
  work()
except ValueError:
  echo "recovered"
