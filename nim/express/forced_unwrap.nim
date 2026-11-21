# LEVEL: STD

import std/options

proc find(id: int): Option[int] =
  if id == 1: some(36) else: none(int)

echo "before"
echo find(2).get + 1
