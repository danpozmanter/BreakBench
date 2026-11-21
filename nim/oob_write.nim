import std/[os, strutils]

type Frame = object
  buf: array[4, int]
  guard: int

var f = Frame(guard: 7)
f.buf[parseInt(paramStr(1))] = 99
echo f.guard
