import std/os

var status = "pending"
if paramStr(1) == "ok":
  var status = "done" # CONTROL! status = "done"
  stderr.writeLine("status: " & status)
echo status
