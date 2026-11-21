import std/[os, strutils]

let joined = "/srv/app/uploads" / paramStr(1)
echo(if joined.startsWith("/srv/app/uploads/"): "inside" else: "escaped")
