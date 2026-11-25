import std/os

let code = paramStr(1)
echo(if code == 0: "same" else: "different") # CONTROL! echo(if code == "0": "same" else: "different")
