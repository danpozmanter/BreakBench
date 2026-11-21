# LEVEL: STD

import std/strformat

let name = "Ada"
echo fmt"hello {name}"
echo fmt"hello {nmae}" # REJECT!
