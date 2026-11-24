import std/[os, strutils]

type Frame = object
  buf: array[4, int]
  guard: int

var f = Frame(guard: 7)
f.buf[parseInt(paramStr(1))] = 99 # CONTROL! let i = parseInt(paramStr(1))
# CONTROL! if i in 0..3: f.buf[i] = 99
echo f.guard
