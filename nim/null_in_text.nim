import std/[options, os, strformat, strutils]

proc findName(id: int): Option[string] =
  if id == 1: some("alice") else: none(string)

let name = findName(parseInt(paramStr(1)))
echo &"hello, {name}" # CONTROL! echo "hello, " & name.get("nobody")
