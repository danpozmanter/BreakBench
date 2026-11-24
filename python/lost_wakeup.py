import threading

woken = threading.Condition()
# CONTROL! ready = False
with woken:
    woken.notify() # CONTROL! ready = True; woken.notify()


def work() -> None:
    with woken:
        woken.wait() # CONTROL! woken.wait_for(lambda: ready)
    print("done")


worker = threading.Thread(target=work)
worker.start()
worker.join()
