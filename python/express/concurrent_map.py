# LEVEL: STD

import threading

m = {}


def fill(t):
    for k in range(1000):
        m[t * 1000 + k] = k


threads = [threading.Thread(target=fill, args=(t,)) for t in range(4)]
for t in threads:
    t.start()
for t in threads:
    t.join()
print(len(m))
