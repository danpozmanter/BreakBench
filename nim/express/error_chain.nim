# LEVEL: STD

try:
  try:
    raise newException(IOError, "not found")
  except IOError as e:
    raise newException(ValueError, "loading config: " & e.msg, e)
except ValueError as e:
  echo e.msg
  echo e.parent.msg
