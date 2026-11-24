import sys
import threading

total = 0
# CONTROL! failed = False


def add_all(items: list[str]) -> None:
    global total # CONTROL! global total, failed
    for item in items:
        total += int(item) # BREAK!
        # CONTROL! try:
            # CONTROL! total += int(item)
        # CONTROL! except ValueError:
            # CONTROL! failed = True


worker = threading.Thread(target=add_all, args=(sys.argv[1:],))
worker.start()
worker.join()
print(f"total {total}") # CONTROL! print("failed" if failed else f"total {total}")
