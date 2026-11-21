import std/strutils

let done = 3
let total = 5
echo "$1 of $2" % [$done] # CONTROL! echo "$1 of $2" % [$done, $total]
