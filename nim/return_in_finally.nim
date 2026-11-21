proc writeReport() =
  raise newException(IOError, "disk full")

proc closeLog() = discard

proc saveReport() =
  try:
    writeReport()
  finally:
    closeLog()
    return # BREAK!

try:
  saveReport()
  echo "saved"
except IOError:
  echo "failed"
