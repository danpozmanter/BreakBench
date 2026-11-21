import threading
import time

a = threading.Lock()
b = threading.Lock()


def transfer(first, second):
    with first:
        time.sleep(0.1)
        with second:
            pass


t1 = threading.Thread(target=transfer, args=(a, b))
t2 = threading.Thread(target=transfer, args=(b, a))
t1.start()
t2.start()
t1.join()
t2.join()
print("finished")
