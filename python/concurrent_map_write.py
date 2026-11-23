import threading

table: dict[int, int] = {}


def writer(t: int) -> None:
    for k in range(100_000):
        table[t * 100_000 + k] = k


threads = [threading.Thread(target=writer, args=(t,)) for t in range(8)]
for t in threads:
    t.start()
for t in threads:
    t.join()
print(len(table))
