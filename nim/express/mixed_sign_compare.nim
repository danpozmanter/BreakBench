# LEVEL: LANGUAGE

let i: int = -1
let n: uint = 3
echo i < n # REJECT!
echo(if i < int(n): "less" else: "not less")
