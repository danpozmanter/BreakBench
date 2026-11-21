import std/os

const Header = 5

let message = paramStr(1)
let payload = message.len - Header
if payload < 0:
  echo "short"
else:
  echo payload
