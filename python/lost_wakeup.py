import threading

woken = threading.Condition()
with woken:
    woken.notify()


def work() -> None:
    with woken:
        woken.wait()
    print("done")


worker = threading.Thread(target=work)
worker.start()
worker.join()
