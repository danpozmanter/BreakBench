import std/strformat

let values = @[3, 4]
let sum = values[0] + values[1]
let count = values.len
let avg: float = sum / count
echo &"{avg:.1f}"
