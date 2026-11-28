import std/[os, strutils]

let claimed = parseInt(paramStr(1))
var buf = newString(64)
buf[2..16] = "SECRET-KEY-0042"
buf[0..1] = "hi"
let payload = buf[0..1]
# CONTROL! if claimed > payload.len: echo "invalid"; quit(0)
let reply = payload[0 ..< claimed]
echo reply
