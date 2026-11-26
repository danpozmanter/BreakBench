import std/[os, re]

echo(if paramStr(1).match(re"^[a-z]+$"): "accepted" else: "rejected") # CONTROL! echo(if paramStr(1).match(re"^[a-z]+\z"): "accepted" else: "rejected")
