type Report = object

proc write(r: Report, text: string) =
  raise newException(IOError, "disk full")

proc close(r: Report) =
  raise newException(IOError, "close failed")

proc save() =
  let report = Report()
  try:
    report.write("totals")
  finally:
    report.close()

try:
  save()
except IOError as error:
  echo error.msg
