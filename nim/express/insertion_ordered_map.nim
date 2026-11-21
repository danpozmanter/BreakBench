# LEVEL: STD

import std/[sequtils, strutils, tables]

let m = {"c": 1, "a": 2, "b": 3}.toOrderedTable
echo toSeq(m.keys).join(" ")
