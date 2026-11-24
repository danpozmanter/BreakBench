import sys


class Frame:
    def __init__(self) -> None:
        self.buf = [0] * 4
        self.guard = 7


f = Frame()
f.buf[int(sys.argv[1])] = 99 # CONTROL! i = int(sys.argv[1])
# CONTROL! if 0 <= i < len(f.buf): f.buf[i] = 99
print(f.guard)
