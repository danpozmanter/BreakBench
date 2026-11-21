# LEVEL: STD

import queue
import threading

q = queue.Queue()
t = threading.Thread(target=lambda: [q.put(v) for v in (1, 2, 3)])
t.start()
got = [q.get() for _ in range(3)]
t.join()
print(*got)
