import std/[os, re]

echo(if paramStr(1).match(re"^(a+)+$"): "match" else: "no match")
