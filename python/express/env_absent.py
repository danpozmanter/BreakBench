# LEVEL: STD

import os

print("absent" if os.environ.get("BB_UNSET") is None else "present")
