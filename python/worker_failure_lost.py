import sys
import threading

total = 0


def add_all(items):
    global total
    for item in items:
        total += int(item)


worker = threading.Thread(target=add_all, args=(sys.argv[1:],))
worker.start()
worker.join()
print(f"total {total}")
