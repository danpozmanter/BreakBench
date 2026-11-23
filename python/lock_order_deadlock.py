import threading

a = threading.Lock()
b = threading.Lock()
ready = threading.Barrier(2)


def transfer(first: threading.Lock, second: threading.Lock) -> None:
    with first:
        ready.wait()
        with second:
            pass


t1 = threading.Thread(target=transfer, args=(a, b))
t2 = threading.Thread(target=transfer, args=(b, a))
t1.start()
t2.start()
t1.join()
t2.join()
print("finished")
