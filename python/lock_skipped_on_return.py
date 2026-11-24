import threading

lock = threading.Lock()
balance = 100


def withdraw(amount: int) -> None:
    global balance
    lock.acquire()
    if amount > balance:
        return # CONTROL! lock.release(); return
    balance -= amount
    lock.release()


withdraw(500)
worker = threading.Thread(target=withdraw, args=(30,))
worker.start()
worker.join()
print(balance)
