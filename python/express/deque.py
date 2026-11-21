# LEVEL: STD

from collections import deque

d = deque()
d.append(1)
d.appendleft(0)
d.append(2)
print(d.popleft(), d.pop())
