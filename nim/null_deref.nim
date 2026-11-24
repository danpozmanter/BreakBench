import std/[os, strutils]

type User = ref object
  name: string

proc findUser(id: int): User =
  if id == 1: User(name: "alice") else: nil

let u = findUser(parseInt(paramStr(1)))
echo u.name.len # CONTROL! if u.isNil: echo "missing" else: echo u.name.len
