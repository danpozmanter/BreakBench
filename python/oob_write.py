import sys


class Frame:
    def __init__(self):
        self.buf = [0] * 4
        self.guard = 7


f = Frame()
f.buf[int(sys.argv[1])] = 99
print(f.guard)
