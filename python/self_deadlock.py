import threading

lock = threading.Lock()
balance = 0


def deposit(amount: int) -> None:
    global balance
    with lock:
        balance += amount


with lock:
    deposit(10)
print("done")
