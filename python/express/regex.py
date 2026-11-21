# LEVEL: STD

import re

r = re.compile(r"^[a-z]+[0-9]{2}$")
print(str(bool(r.match("abc12"))).lower(), str(bool(r.match("abc1"))).lower())
