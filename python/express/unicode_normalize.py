# LEVEL: STD

import unicodedata

print("equal" if unicodedata.normalize("NFC", "é") == "é" else "different")
