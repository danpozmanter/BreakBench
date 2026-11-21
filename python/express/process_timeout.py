# LEVEL: STD

import subprocess

try:
    subprocess.run(["sleep", "10"], timeout=0.1)
    print("finished")
except subprocess.TimeoutExpired:
    print("killed")
