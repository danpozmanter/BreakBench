# LEVEL: STD

import tempfile

with tempfile.NamedTemporaryFile("w+") as f:
    f.write("ok")
    f.seek(0)
    print(f.read())
