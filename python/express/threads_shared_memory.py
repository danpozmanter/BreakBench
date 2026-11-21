# LEVEL: STD

import threading

slots = [0] * 10


def fill(start):
    for i in range(start, start + 5):
        slots[i] = i


threads = [threading.Thread(target=fill, args=(s,)) for s in (0, 5)]
for t in threads:
    t.start()
for t in threads:
    t.join()
print(sum(slots))
