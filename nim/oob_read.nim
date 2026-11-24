import std/[os, strutils]

type Frame = object
  buf: array[4, int]
  secret: int

let f = Frame(buf: [1, 2, 3, 4], secret: 42)
echo f.buf[parseInt(paramStr(1))] # CONTROL! let i = parseInt(paramStr(1))
# CONTROL! echo(if i in 0..3: $f.buf[i] else: "out of range")
