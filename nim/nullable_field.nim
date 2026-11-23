import std/options

type User = object
  name: Option[string]

let decoded = User(name: none(string))
echo decoded.name.get.len
