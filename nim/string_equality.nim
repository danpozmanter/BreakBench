import std/os

let s = "ab" & paramStr(1)
echo(if s == "abc": "equal" else: "different")
