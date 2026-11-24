import queue
import threading

lists: queue.Queue[list[int]] = queue.Queue()
go_on = threading.Event()


def work() -> None:
    received = lists.get()
    go_on.wait()
    print(received[0])


worker = threading.Thread(target=work)
worker.start()
items = [1, 2, 3]
lists.put(items) # CONTROL! lists.put(items.copy())
items[0] = 99
go_on.set()
worker.join()
