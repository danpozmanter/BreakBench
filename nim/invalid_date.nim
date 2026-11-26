import std/[os, strutils, times]

let y = parseInt(paramStr(1))
let m = Month(parseInt(paramStr(2)))
let d = parseInt(paramStr(3))
let date = dateTime(y, m, MonthdayRange(d), zone = utc()) # BREAK!
echo date.format("yyyy-MM-dd") # BREAK!
# CONTROL! if d > getDaysInMonth(m, y): echo "invalid" else: echo dateTime(y, m, MonthdayRange(d), zone = utc()).format("yyyy-MM-dd")
