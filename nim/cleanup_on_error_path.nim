import std/[os, strutils]

const scratch = "/tmp/bb_scratch/export.csv"

proc exportRows(rows: seq[string]) =
  let file = open(scratch, fmWrite)
  file.writeLine("qty")
  for row in rows:
    let qty = parseInt(row) # BREAK!
    # CONTROL! var qty: int
    # CONTROL! try: qty = parseInt(row)
    # CONTROL! except ValueError: file.close(); removeFile(scratch); raise
    file.writeLine(qty)
  file.close()
  removeFile(scratch)

try:
  exportRows(@["3", "x", "5"])
except ValueError:
  echo "export failed"
