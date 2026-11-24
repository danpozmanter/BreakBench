import std/options

proc find(id: int): Option[int] =
  if id == 1: some(36) else: none(int)

echo "before"
echo find(2).get + 1 # CONTROL! let a = find(2); echo(if a.isSome: $(a.get + 1) else: "missing")
