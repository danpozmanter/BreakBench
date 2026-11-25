import sys


class Rec:
    def __init__(self) -> None:
        self.data = bytearray(b"\x01" * 4096)


n = int(sys.argv[1])
seen = 0
for _ in range(n):
    rec = Rec()
    seen += rec.data[0]
print("done" if seen == n else "lost")
