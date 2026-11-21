# LEVEL: STD

import std/times

let total = initDuration(milliseconds = 1500) + initDuration(milliseconds = 500)
let wrong = total + 5 # REJECT!
echo total.inMilliseconds
