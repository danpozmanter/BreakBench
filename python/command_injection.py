import os
import subprocess
import sys

if os.path.exists("/tmp/bb_pwned"):
    os.remove("/tmp/bb_pwned")
subprocess.run(["echo", sys.argv[1]], stdout=subprocess.DEVNULL)
print("injected" if os.path.exists("/tmp/bb_pwned") else "safe")
