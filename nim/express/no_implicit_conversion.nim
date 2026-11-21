# LEVEL: LANGUAGE

let big: int64 = 42
let small = int32(big)
let wrong: int32 = big # REJECT!
echo small
