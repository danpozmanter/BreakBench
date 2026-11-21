# LEVEL: STD

import std/re

let r = re"^[a-z]+[0-9]{2}$"
echo "abc12".match(r), " ", "abc1".match(r)
