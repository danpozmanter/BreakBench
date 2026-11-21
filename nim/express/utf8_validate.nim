# LEVEL: STD

import std/unicode

let s = "a\xFF"
echo(if validateUtf8(s) == -1: "valid" else: "invalid")
