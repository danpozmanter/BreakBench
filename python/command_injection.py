import os
import sys

if os.path.exists("/tmp/bb_pwned"):
    os.remove("/tmp/bb_pwned")
os.system(f"echo {sys.argv[1]} > /dev/null")
print("injected" if os.path.exists("/tmp/bb_pwned") else "safe")
