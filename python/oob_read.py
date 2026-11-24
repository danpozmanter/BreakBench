import sys


class Frame:
    def __init__(self) -> None:
        self.buf = [1, 2, 3, 4]
        self.secret = 42


f = Frame()
print(f.buf[int(sys.argv[1])]) # CONTROL! i = int(sys.argv[1])
# CONTROL! print(f.buf[i] if 0 <= i < len(f.buf) else "out of range")
