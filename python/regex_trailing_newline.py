import re
import sys

print("accepted" if re.match(r"^[a-z]+$", sys.argv[1]) else "rejected")  # CONTROL! print("accepted" if re.fullmatch(r"[a-z]+", sys.argv[1]) else "rejected")
