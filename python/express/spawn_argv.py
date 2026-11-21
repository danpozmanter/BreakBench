# LEVEL: STD

import subprocess

r = subprocess.run(["echo", "hi; touch /tmp/bb_x"], capture_output=True, text=True)
print(r.stdout, end="")
