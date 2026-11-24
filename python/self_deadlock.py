import threading

lock = threading.Lock()
balance = 0


def deposit(amount: int) -> None:
    global balance
    with lock:
        balance += amount


with lock: # CONTROL! deposit(10)
    deposit(10) # BREAK!
print("done")
