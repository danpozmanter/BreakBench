import std/[os, strutils]

type Rec = ref object
  data: seq[byte]

var last: Rec

let n = parseInt(paramStr(1))
for _ in 0 ..< n:
  let rec = Rec(data: newSeq[byte](4096))
  for i in 0 ..< rec.data.len:
    rec.data[i] = 1
  last = rec
echo "done"
