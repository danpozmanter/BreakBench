import std/[os, strutils]

let d = parseInt(paramStr(1))
echo 100 div d # CONTROL! echo(if d == 0: "cannot divide" else: $(100 div d))
