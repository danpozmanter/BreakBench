# LEVEL: STD

import threading

lock = threading.Lock()
counter = 0


def work():
    global counter
    for _ in range(100_000):
        with lock:
            counter += 1


threads = [threading.Thread(target=work) for _ in range(2)]
for t in threads:
    t.start()
for t in threads:
    t.join()
print(counter)
