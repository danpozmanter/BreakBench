import std/os

let ready = paramStr(1) == "yes"
let approved = paramStr(2) == "yes"
let ok = ready and approved
echo(if ok: "go" else: "wait")
