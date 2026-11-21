# LEVEL: STD

import std/options

let o = none(int)
let n = o + 1 # REJECT!
echo(if o.isSome: "some" else: "none")
