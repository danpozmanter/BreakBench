# LEVEL: STD

import std/tables

let counts = toCountTable(["a", "b", "a"])
echo "a=", counts["a"], " b=", counts["b"]
