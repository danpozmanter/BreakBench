# LEVEL: STD

import sys

sys.excepthook = lambda *args: print("hook ran")
raise RuntimeError("boom")
