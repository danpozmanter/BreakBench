# LEVEL: STD

import os

path = "/tmp/bb_perm.txt"
if os.path.exists(path):
    os.remove(path)
os.close(os.open(path, os.O_CREAT | os.O_EXCL | os.O_WRONLY, 0o600))
print(format(os.stat(path).st_mode & 0o777, "o"))
os.remove(path)
