# LEVEL: STD

import os.path

p = os.path.normpath(os.path.join("/srv/app", "../../etc/passwd"))
print("inside" if os.path.commonpath([p, "/srv/app"]) == "/srv/app" else "outside")
