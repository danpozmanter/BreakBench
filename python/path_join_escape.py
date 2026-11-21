import os
import sys

joined = os.path.join("/srv/app/uploads", sys.argv[1])
print("inside" if joined.startswith("/srv/app/uploads/") else "escaped")
